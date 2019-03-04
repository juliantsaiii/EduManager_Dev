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
    public class PersonController : Controller
    {
        IPersonService personService = new PersonService();

        // 返回个人信息主页
        public ActionResult PersonList()
        {
            return View();
        }

        //获取基本信息列表界面
        public JsonResult GetPersonList()
        {
            int pageIndex = Request["pageNumber"] == null ? 1 : int.Parse(Request["pageNumber"]);
            int pageSize = Request["pageSize"] == null ? 10 : int.Parse(Request["pageSize"]);
            string sort = Request["sort"];//原Score
            string direction = Request["order"];
            string name = Request["keyword1"] == null ? "" : Request["keyword1"];
            string unit = Request["keyword2"] == null ? "" : Request["keyword2"];
            string studentID = Request["keyword3"] == null ? "" : Request["keyword3"];
            int total = 0;
            string sql = "SELECT * FROM Person where  IsDeleted=0 ";
            IEnumerable<Person> temp = null;

            if (!name.Equals(""))
            {
                sql += "and Name like '%" + name + "%'";
            }
            if (!unit.Equals(""))
            {
                sql += "and WorkUnit like '%" + unit + "%'";
            }
            if (!studentID.Equals(""))
            {
                sql += "and StudentID like '%" + studentID + "%'";
            }   
            sql += "and IsDeleted =0  order by " + sort + " " + direction + "";
            temp = personService.SqlQuery(sql);
            total = temp.Count();
            var person = temp.Skip<Person>((pageIndex - 1) * pageSize).Take<Person>(pageSize);
            var data = new
            {
                total = total,
                rows = person.ToList<Person>()
            };

            return Json(data, JsonRequestBehavior.AllowGet);
        }

        //新增基本信息填报
        public ActionResult PersonCreate()
        {
            Session["Flag"] = "Create";
            Person person = new Person();
            person.IsDeleted = false;
            person.ID = Guid.NewGuid();
            person.Score = 100;
            person.HandleDept = (Guid)Session["HandleDept"];
            person.HandleStaff = (Guid)Session["UserID"];
            ViewBag.person = person;
            return View("Edit");
        }
        //编辑基本信息
        public ActionResult Edit(Guid ID, string Type)
        {
            Session["Flag"] = Type;
            Person person = personService.Find(ID);
            ViewBag.person = person;
            return View();
        }

        //保存个人信息
        public ActionResult Save(Person item)
        {
            var check = personService.Find(item.ID);
            if (check == null)
            {
                item.IsDeleted = false;
                personService.Add(item);
                return Content("true");
            }
            else
            {
                item.IsDeleted = false;
                personService.Update(item);
                return Content("true");
            }
        }

        //删除选定个人信息
        public ActionResult PersonDelete(Guid ID)
        {
            string msg = "删除成功";
            string sql = "DELETE  FROM Person WHERE ID = '" + ID + "'";
            try
            {
                personService.SqlCommand(sql);
                
            }
            catch(Exception e)
            {
                msg = e.ToString();
            }
            return Content(msg);
        }

    }
}