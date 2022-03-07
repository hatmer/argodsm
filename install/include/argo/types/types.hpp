/**
 * @file
 * @brief This file defines common types used in ArgoDSM
 * @copyright Eta Scale AB. Licensed under the Eta Scale Open Source License. See the LICENSE file for details.
 */

#ifndef argo_types_types_hpp
#define argo_types_types_hpp argo_types_types_hpp

namespace argo {
	/** @brief ArgoDSM node identifier type */
	using node_id_t = int;

	/**
	 * @brief type of memory base addresses
	 * @see dynamic_memory_pool
	 */
	using memory_t = char*;

} // namespace argo

#endif /* argo_types_types_hpp */
