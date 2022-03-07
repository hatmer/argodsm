/**
 * @file
 * @brief dummy lock, not intended for public use
 * @copyright Eta Scale AB. Licensed under the Eta Scale Open Source License. See the LICENSE file for details.
 *
 * @internal
 * @details sometimes templates should be used with and without internal locking, this file provides the neccessary dummy class to allow disabling locking
 */
#ifndef argo_null_lock_hpp
#define argo_null_lock_hpp argo_null_lock_hpp
namespace argo {
	namespace allocators {
		/**
		 * @internal
		 * @brief a lock for when no locking is needed
		 * @details This nonfunctional lock allows to instantiate templates
		 *          that provide locking support without incurring the cost of locking.
		 *          Correctness will not be ensured by the template and thus must be
		 *          taken care of by the surrounding code.
		 */
		class null_lock {
			public:
				/** @brief do nothing */
				void lock() {}
				/** @brief do nothing */
				void unlock() {}
		};
	} // namespace allocators
} // namespace argo

#endif /* argo_null_lock_hpp */
