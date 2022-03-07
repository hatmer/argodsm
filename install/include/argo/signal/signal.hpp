/**
 * @file
 * @brief This file provides facilities for handling POSIX signals, especially SIGSEGV, within ArgoDSM
 * @copyright Eta Scale AB. Licensed under the Eta Scale Open Source License. See the LICENSE file for details.
 */

#ifndef argo_signal_signal_hpp
#define argo_signal_signal_hpp argo_signal_signal_hpp

#include <stdexcept>
#include <string>
#include <utility>
#include <signal.h>

#include "virtual_memory/virtual_memory.hpp"

namespace {
	/** @brief typedef for signal handlers */
	using sig_handler = struct sigaction;
	/** @brief typedef for function type used by ArgoDSM */
	using handler_ftype = void(*)(int, siginfo_t*, void*);

	/** @brief error message string */
	const std::string msg_argo_unitialized = "ArgoDSM must be configured to capture a signal before application handlers can be installed";
}

namespace argo {
	namespace signal {

		/**
		 * @brief class wrapper for managing a single POSIX signal
		 * @tparam SIGNAL the signal number
		 */
		template<int SIGNAL>
		class signal_handler {
			private:
				/** @brief signal handling function for ArgoDSM */
				static handler_ftype argo_handler;
				/** @brief signal handler for application use */
				static sig_handler application_handler;

			public:
				/**
				 * @brief install a signal handler for ArgoDSM
				 * @param h the function to handle signals
				 * @details The function will only be called for signals
				 *          that relate to ArgoDSM's internal workings
				 */
				static void install_argo_handler(const handler_ftype h) {
					argo_handler = h;
					sig_handler s;
					s.sa_flags = SA_SIGINFO;
					s.sa_sigaction = argo_signal_handler;
					sigaction(SIGNAL, &s, &application_handler);
				}

				/**
				 * @brief install a signal handler for application use
				 * @param h the signal handler for the application
				 * @return the previous signal handler of the application
				 * @details The signal handler will only be called for signals
				 *          that are not consumed by ArgoDSM internally
				 */
				static sig_handler install_application_handler(sig_handler* h) {
					if(argo_handler == nullptr) {
						throw std::runtime_error(msg_argo_unitialized);
					}
					sig_handler r = *h;
					std::swap(r, application_handler);
					return r;
				}

				/**
				 * @brief a generic signal handler function
				 * @param sig the signal number
				 * @param si additional signal information
				 * @param unused traditionally unused parameter
				 * @see check `man sigaction` for additional information
				 */
				static void argo_signal_handler(int sig, siginfo_t *si, void *unused) {
					namespace vm = argo::virtual_memory;
					const auto addr = si->si_addr;
					const auto start = static_cast<char*>(vm::start_address());
					const auto end = start + vm::size();
					if (addr < start || addr >= end) {
						/* application signal */
						if(application_handler.sa_flags & SA_SIGINFO) {
							application_handler.sa_sigaction(sig, si, unused);
							return;
						} else {
							application_handler.sa_handler(sig);
							return;
						}
					} else {
						/* internal signal */
						argo_handler(sig, si, unused);
						return;
					}
				}
		};
		template<int S> handler_ftype signal_handler<S>::argo_handler = nullptr;
		template<int S> sig_handler signal_handler<S>::application_handler;
	}
}

#endif // argo_signal_signal_hpp
