using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Model;
using IBLL;
using BLL;
using System.Diagnostics;
using System.Runtime.Serialization.Json;
using System.Text;
using System.IO;
using Newtonsoft.Json.Linq;
using Newtonsoft.Json;
using System.Collections;
namespace Archive.Controllers
{
    public class CetController : BaseController
    {
        ICetService cetservice = new CetService();

  
        public ActionResult CetList()
        {
            return View();
        }

        //查询四六级成绩
        public JsonResult GetCet()
        {
            int pageIndex = Request["pageNumber"] == null ? 1 : int.Parse(Request["pageNumber"]);
            int pageSize = Request["pageSize"] == null ? 10 : int.Parse(Request["pageSize"]);
            string sort = Request["sort"];
            string direction = Request["order"];
            string name = Request["keyword1"] == null ? "" : Request["keyword1"];
            string id = Request["keyword2"] == null ? "" : Request["keyword2"];
            int total = 0;
            string sql = "";
            sql = "SELECT * FROM Cet WHERE ID IS NOT NULL";
            IEnumerable<Cet> temp = null;
            if (!name.Equals(""))
            {
                sql += " and Name like '%" + name + "%'";
            }
            if (!id.Equals(""))
            {
                sql += " and ID like '%" + id + "%'";
            }
            sql += " order by  " + sort +" "+ direction;
            temp = cetservice.SqlQuery(sql);
            total = temp.Count();
            var cet = temp.Skip<Cet>((pageIndex - 1) * pageSize).Take<Cet>(pageSize);
            var data = new
            {
                total = total,
                rows = cet.ToList<Cet>() 
            };

            return Json(data, JsonRequestBehavior.AllowGet);
        }
        //编辑四六级成绩
        public ActionResult ComCetEdit(string ID)
        {
            string sql = "select * from cet where id = " + ID + "";
            
            List<Cet> cet = cetservice.SqlQuery(sql).ToList();
            ViewBag.cet = cet.First();
            return View();
        }
        //保存四六级成绩
        public ActionResult Save(Cet item)
        {
            string ID = item.ID;
            string sql = "select * from cet where id = " + ID + "";

            List<Cet> cet = cetservice.SqlQuery(sql).ToList();

            var check = cet;
            if (check.Count==0)//根据学号判断记录是否存在
            {
                //以下两种方式都可以是实现新数据的插入
                //方式一：
                //sql = "INSERT INTO Cet (`ID`, `Name`, `Cet4`, `Cet6`) VALUES (" + item.ID + "," + item.Name + "," + item.Cet4 + "," + item.Cet6 + ")";
                //cetservice.SqlCommand(sql);
                //方式二：
                cetservice.Add(item);
                return Content("true");
            }
            else
            {


                cetservice.Update(item);
                return Content("true");
            }
        }
        //删除四六级成绩
        public ActionResult CetDelete(string ID)
        {
            string sql = "DELETE FROM Cet WHERE id = " + ID + "";

            cetservice.SqlCommand(sql);
            return Content("删除成功");
        }
        //新增四六级成绩
        public ActionResult CetCreate()
        {
            return View();
        }

    }
}