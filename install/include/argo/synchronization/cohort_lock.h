/**
 * @file
 * @brief This file provides a C interface for ArgoDSM-based cohort locks
 */

#ifndef argo_cohort_lock_h
#define argo_cohort_lock_h argo_cohort_lock_h

/**
 * @brief cohort handle dummy type
 */
struct cohortlock_handle_t {};

/**
 * @brief type alias for cohort locks
 */
typedef struct cohortlock_handle_t* cohortlock_t;

/**
 * @brief create new cohort lock
 * @return handle to new cohort lock
 */
cohortlock_t argo_cohortlock_create();

/**
 * @brief destroy a cohort lock
 * @param lock the cohort lock to destroy
 */
void argo_cohortlock_destroy(cohortlock_t lock);

/**
 * @brief lock a cohort lock
 * @param lock the cohort lock to take
 */
void argo_cohortlock_lock(cohortlock_t lock);

/**
 * @brief unlock a cohort lock
 * @param lock the cohort lock to release
 */
void argo_cohortlock_unlock(cohortlock_t lock);

#endif /* argo_cohort_lock_h */
