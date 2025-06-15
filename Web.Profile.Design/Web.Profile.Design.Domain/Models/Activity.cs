using Web.Profile.Design.Domain.Objects;

namespace Web.Profile.Design.Domain.Models
{
    /// <summary>
    /// 
    /// </summary>
    public sealed class Activity
    {
        #region Constructors

        /// <summary>
        /// 
        /// </summary>
        public Activity() { }

        #endregion Constructors

        #region Properties

        /// <summary>
        /// 
        /// </summary>
        public required string Name { get; set; }

        /// <summary>
        /// 
        /// </summary>
        public List<ActivityDetail> Details { get; set; } = [];

        #endregion Properties
    }
}
