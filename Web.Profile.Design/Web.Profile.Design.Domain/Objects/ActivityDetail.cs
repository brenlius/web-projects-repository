namespace Web.Profile.Design.Domain.Objects
{
    /// <summary>
    /// 
    /// </summary>
    public sealed class ActivityDetail
    {
        #region Constructors

        /// <summary>
        /// 
        /// </summary>
        public ActivityDetail() { }

        #endregion Constructors

        #region Properties

        /// <summary>
        /// 
        /// </summary>
        public required string Title { get; set; }

        /// <summary>
        /// 
        /// </summary>
        public string? Description { get; set; }

        /// <summary>
        /// 
        /// </summary>
        public DateOnly EventDate { get; set; }

        /// <summary>
        /// 
        /// </summary>
        public List<Content> Contents { get; set; } = [];

        #endregion Properties
    }
}
