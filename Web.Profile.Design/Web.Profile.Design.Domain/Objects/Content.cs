namespace Web.Profile.Design.Domain.Objects
{
    /// <summary>
    /// 
    /// </summary>
    public sealed class Content
    {
        #region Constructors

        /// <summary>
        /// 
        /// </summary>
        public Content() { }

        #endregion Constructors

        #region Properties

        /// <summary>
        /// 
        /// </summary>
        public required string Message { get; set; }

        /// <summary>
        /// 
        /// </summary>
        public int Sequence { get; set; }

        /// <summary>
        /// 
        /// </summary>
        public required string Type { get; set; }

        #endregion Properties
    }
}
