using Web.Profile.Design.Application.IRepositories;
using Web.Profile.Design.Application.IServices;
using Web.Profile.Design.Domain.Responses;

namespace Web.Profile.Design.Application.Services
{
    /// <summary>
    /// 
    /// </summary>
    /// <param name="activityRepository"></param>
    public class ActivityService(IActivityRepository activityRepository) : IActivityService
    {
        #region Declarations

        private readonly IActivityRepository _activityRepository = activityRepository;

        #endregion Declarations

        #region Methods

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public ActivityResponse GetActivities()
        {
            ActivityResponse activityResponse = new()
            {
                Activities = _activityRepository.GetActivities()
            };

            return activityResponse;
        }

        #endregion Methods
    }
}