using Microsoft.AspNetCore.Mvc;
using Web.Profile.Design.Application.IServices;
using Web.Profile.Design.Domain.Responses;

namespace Web.Profile.Bren.API.Controllers
{
    /// <summary>
    /// 
    /// </summary>
    /// <param name="activityService"></param>
    [Route("api/[controller]")]
    [ApiController]
    public class ActivityController(IActivityService activityService) : ControllerBase
    {
        #region Declarations

        private readonly IActivityService _activityService = activityService;

        #endregion Declarations

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public ActionResult<ActivityResponse> GetActivities()
        {
            if (_activityService != null)
            {
                if (ModelState.IsValid)
                {
                    ActivityResponse activityRes = _activityService.GetActivities();

                    return Ok(activityRes);
                }

                return NotFound();
            }

            return Forbid();
        }
    }
}
