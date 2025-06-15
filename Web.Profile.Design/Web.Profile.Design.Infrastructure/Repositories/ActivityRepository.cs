using Web.Profile.Design.Application.IRepositories;

namespace Web.Profile.Design.Infrastructure.Repositories
{
    /// <summary>
    /// 
    /// </summary>
    public class ActivityRepository : IActivityRepository
    {
        #region Constructors

        /// <summary>
        /// 
        /// </summary>
        public ActivityRepository()
        {

        }

        #endregion Constructors

        #region Methods

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public List<Domain.Models.Activity> GetActivities()
        {
            List<Domain.Models.Activity> activities = [];

            // Simulate data retrieval
            for (int i = 1; i <= 10; i++)
            {
                activities.Add(new Domain.Models.Activity
                {
                    Name = $"Activity {i}"
                });
            }

            return activities;
        }

        #endregion Methods
    }
}
