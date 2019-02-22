using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Model;
using IBLL;
using BLL;
namespace Archive.Controllers
{
    public class HomeController : BaseController
    {
        IRoleService IRoleService = new RoleService();
        //
        // GET: /Home/
        public ActionResult Index()
        {
            var temp = MenuBar.GetJson(((BaseInfo)Session["User"]).user.ID);
            Session["Menus"] = temp;
            Role role = ((BaseInfo)Session["User"]).role;
            Session["RoleUrl"] = role.Url;
            Session["UsePrev"] = false;
            Session["Caretaker"] = null;
            return View();
        }
        public ActionResult Home()
        {
            
            return View();
        }

        public ActionResult Transition()
        {
            var temp = MenuBar.GetJson(((BaseInfo)Session["User"]).user.ID);
            Session["Menus"] = temp;
            Role role = ((BaseInfo)Session["User"]).role;
            Session["RoleUrl"] = role.Url;
            Session["UsePrev"] = false;
            Session["Caretaker"] = null;
            return View();
        }
        public JsonResult shouye()
        {
            string RoleID = Request["RoleID"] == null ? "" : Request["RoleID"];
            int total = 0;
            string sql;
            sql = "SELECT * FROM Role where IsDeleted=0 and ID = \""+RoleID+"\"";
            IEnumerable<Role> temp = IRoleService.SqlQuery(sql);
            var data = new
            {
                total = total,
                rows = temp.ToList<Role>()
            };
            return Json(data, JsonRequestBehavior.AllowGet);
        }

    
       
    }
}