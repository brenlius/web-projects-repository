using Web.Profile.Design.Domain.Models;

namespace Web.Profile.Design.Domain.Responses
{
    /// <summary>
    /// 
    /// </summary>
    public sealed class ActivityResponse
    {
        #region Constructors

        /// <summary>
        /// 
        /// </summary>
        public ActivityResponse()
        {

        }

        #endregion Constructors

        #region Properties

        /// <summary>
        /// 
        /// </summary>
        public List<Activity> Activities { get; set; } = [];

        #endregion Properties
    }
}
