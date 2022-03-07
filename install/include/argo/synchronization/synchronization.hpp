/**
 * @file
 * @brief This file provides synchronization primitives for ArgoDSM
 * @copyright Eta Scale AB. Licensed under the Eta Scale Open Source License. See the LICENSE file for details.
 */

#ifndef argo_synchronization_hpp
#define argo_synchronization_hpp argo_synchronization_hpp

#include <cstddef>

#include "broadcast.hpp"

namespace argo {
	/**
	 * @brief a barrier for threads
	 * @param threadcount number of threads on each ArgoDSM node
	 * @details this barrier waits until threadcount threads have reached this
	 *          barrier call on EACH ArgoDSM node.
	 * @todo better explanation
	 */
	void barrier(std::size_t threadcount=1);
} // namespace argo

extern "C" {
#include "synchronization.h"
}

#endif /* argo_synchronization_hpp */
