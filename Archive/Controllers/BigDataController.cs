using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Model;
using BLL;
using IBLL;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System.Web.Helpers;

namespace Archive.Controllers
{
    public class BigDataController : BaseController
    {
        IGPARankingService gpaRankingservice = new GPARankingService();
        ICetService cetservice = new CetService();
        IPersonService personService = new PersonService();
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

        //成绩分析
        public ActionResult ScoreAnalysis()
        {
            return View();
        }

        //返回CET成绩给ECHARTS图标，用于展示
        public JsonResult CetJson(string cet)
        {
            string a = cet;
            string sqlTotal = "SELECT * FROM Cet";
            string sql4 = "SELECT * FROM Cet WHERE Cet4 ";
            string sql6 = "SELECT * FROM Cet WHERE Cet6 ";
            List<Cet> total = cetservice.SqlQuery(sqlTotal).ToList();
            List<Cet> cet4p = cetservice.SqlQuery(sql4).ToList();
            List<Cet> cet6p = cetservice.SqlQuery(sql6).ToList();
            int cet4pp = cet4p.Count();
            int cet6pp = cet6p.Count();
            int totalpp = total.Count();
            var data = new
            {
                cet4 = cet4pp,
                cet6 = cet6pp,
                total = totalpp
            };
            return Json(data);
        }


        //路由生源地分析页面
        public ActionResult HometownAnalysis()
        {
            return View();
        }

        //返回生源分析Json结果
        public JsonResult HometownJson()
        {
            List<Person> person = new List<Person>();
            string sql = "SELECT * FROM Person";
            person = personService.SqlQuery(sql).ToList();
            Dictionary<string,int> result = new Dictionary<string,int>();
            string[] province = { "辽宁", "吉林", "黑龙江", "河北", "山西", "陕西", "甘肃", "青海", "山东", "安徽", "江苏", "浙江", "河南", "湖北", "湖南", "江西", "台湾", "福建", "云南", "海南", "四川", "贵州", "广东", "内蒙古", "新疆", "广西", "西藏", "宁夏", "北京", "上海", "天津", "重庆", "香港", "澳门" };
            foreach(string place in province)
            {
                int count = 0;
                foreach (Person p in person)
                {
                    if (p.NativePlace !=null&& p.NativePlace.Contains(place))
                    {
                        count++;
                    }
                }
                result.Add(place, count);
            }
            //返回Json字符串
            //string jsonResult = SerializeDictionaryToJsonString(result);
            //没用的一步骤，原想把json字符串转为json对象
            //JObject obj = (JObject)JsonConvert.DeserializeObject(jsonResult);
            return Json(result);
        }
        //字典类型转Json字符串的工具方法
        public static string SerializeDictionaryToJsonString<TKey, TValue>(Dictionary<TKey, TValue> dict)
        {
            if (dict.Count == 0)
                return "";

            string jsonStr = JsonConvert.SerializeObject(dict);
            return jsonStr;
        }

    }
}