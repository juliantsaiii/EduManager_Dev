using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Model;
using BLL;
using IBLL;
namespace Archive.Controllers
{
    public class BigDataController : BaseController
    {
        IGPARankingService gpaRankingservice = new GPARankingService();
        // GET: BigData
        public ActionResult GPARanking()
        {
            return View();
        }
        public ActionResult GPADelete(string id)
        {
            string sql = "Delete From GPARanking Where ID='" + id + "'";
            gpaRankingservice.SqlCommand(sql);
            return Content("删除成功");
        }
        /// <summary>
        /// 获取绩点排名列表
        /// </summary>
        /// <returns>dataJson</returns>
        public JsonResult GetGPARankingList()
        {
            int pageIndex = Request["pageNumber"] == null ? 1 : int.Parse(Request["pageNumber"]);
            int pageSize = Request["pagesize"] == null ? 10 : int.Parse(Request["pageSize"]);
            string sort = Request["Sort"];
            string direction = Request["direction"];
            string name = Request["keyword1"] == null ? "" : Request["keyword1"];
            string studentID = Request["keyword2"] == null ? "" : Request["keyword2"];
            string sql = "SELECT * FROM GPARanking WHERE ID IS NOT NULL ";
            IEnumerable<GPARanking> temp = null;
            int total = 0;
            if (!name.Equals(""))
            {
                sql += "and Name like '%" + name + "%' ";
            }
            if(!studentID.Equals(""))
            {
                sql += "and StudentID like '%" + studentID + "%' ";
            }
            sql += "ORDER BY " + sort + " " + direction;
            temp = gpaRankingservice.SqlQuery(sql);
            total = temp.Count();
            var gpaRanking = temp.Skip<GPARanking>((pageIndex - 1) * pageSize).Take<GPARanking>(pageSize);
            var data = new
            {
                total = total,
                rows = gpaRanking.ToList<GPARanking>()
            };
            return Json(data, JsonRequestBehavior.AllowGet);
        }

        public ActionResult GPARankingEdit(Guid ID)
        {
            string sql = "Select * From GPARanking Where ID = '" + ID + "'";
            List<GPARanking> temp = gpaRankingservice.SqlQuery(sql).ToList();
            ViewBag.gpa = temp.FirstOrDefault();
            return View();
        }
        public ActionResult GpaRankingSave(GPARanking gpa)
        {
            string studentID = gpa.StudentID;
            string sql = "Select * From GPARanking Where StudentID = '" + studentID + "'";
            List<GPARanking> gpainfo = gpaRankingservice.SqlQuery(sql).ToList();
            var check = gpainfo;

            if(check.Count() == 0)
            {
                gpa.ID = Guid.NewGuid();
                gpa.HandleDept = (Guid)Session["HandleDept"];
                gpa.HandleStaff = (Guid)Session["UserID"];
                sql = "INSERT INTO GPARanking (`ID`, `HandleDept`, `HandleStaff`, `StudentID`, `Name`, `Major`, `FirstYearGPA`, `FirstYearGPARanking`, `SecondYearGPA`, `SecondYearGPARanking`, `RankingChange`,`ChangePercentage`) VALUES ('" + gpa.ID + "','" + gpa.HandleDept + "','" + gpa.HandleStaff + "','" + gpa.StudentID + "','" + gpa.Name + "','" + gpa.Major + "'," + gpa.FirstYearGPA + "," + gpa.FirstYearGPARanking + "," + gpa.SecondYearGPA + "," + gpa.SecondYearGPARanking + "," + gpa.RankingChange + ",'" + gpa.ChangePercentage + "')";
                gpaRankingservice.SqlCommand(sql);
                return Content("true");
            }
            else
            {
                gpaRankingservice.Update(gpa);
                return Content("true");
            }
        }


    }
}