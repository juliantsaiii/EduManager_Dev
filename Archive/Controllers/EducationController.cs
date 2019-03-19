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
    public class EducationController : BaseController
    {
        ICetService cetservice = new CetService();
        ICourseService courseService = new CourseService();
        //返回课表编辑页面
        public ActionResult CourseCharge()
        {
            return View();
        }
        //获取课表编辑列表信息
        public JsonResult GetCourseChargeList()
        {
            int pageIndex = Request["pageNumber"] == null ? 1 : int.Parse(Request["pageNumber"]);
            int pageSize = Request["pageSize"] == null ? 10 : int.Parse(Request["pageSize"]);
            string sort = Request["sort"];
            string direction = Request["order"];
            string courseName = Request["keyword1"] == null ? "" : Request["keyword1"];
            string classID = Request["keyword2"] == null ? "" : Request["keyword2"];
            string teacher = Request["keyword3"] == null ? "" : Request["keyword3"];
            string week = Request["keyword4"] == null ? "" : Request["keyword4"];

            int total = 0;
            string sql = "";
            sql = "SELECT * FROM Course WHERE ID IS NOT NULL";
            IEnumerable<Course> temp = null;
            if (!courseName.Equals(""))
            {
                sql += " and CourseName like '%" + courseName + "%'";
            }
            if (!classID.Equals(""))
            {
                sql += " and ClassID like '%" + classID + "%'";
            }
            if (!teacher.Equals(""))
            {
                sql += " and Teacher like '%" + teacher + "%'";
            }
            if (!week.Equals(""))
            {
                sql += " and Week like '%" + week + "%'";
            }
            sql += " order by  " + sort + " " + direction;
            temp = courseService.SqlQuery(sql);
            total = temp.Count();
            var course = temp.Skip<Course>((pageIndex - 1) * pageSize).Take<Course>(pageSize);
            var data = new
            {
                total,
                rows = course.ToList<Course>()
            };

            return Json(data, JsonRequestBehavior.AllowGet);
        }
        //编辑课表安排
        public ActionResult CourseChargeEdit(string ID)
        {
            string sql = "SELECT * FROM Course WHERE ID = '"+ ID+"'" ;
            List<Course> courses =  courseService.SqlQuery(sql).ToList();
            if(courses.Count() > 0)
            {
                ViewBag.course = courses.First();
                return View();
            }
            else
            {
                ViewBag.course = null;
                return View();
            }
        }

        //删除课表安排
        public ActionResult CourseChargeDelete(string ID)
        {
            string sql = "DELETE FROM Course WHERE id = '" + ID + "'";
            courseService.SqlCommand(sql);
            return Content("删除成功");
        }
        //保存课表安排
        public ActionResult CourseChargeInfoSave(Course course)
        {
            string ID = course.ID.ToString();
            string sql = "SELECT * FROM Course WHERE ID = '" + ID + "'";
            List<Course> courses =  courseService.SqlQuery(sql).ToList();
            //Course temp = courses.FirstOrDefault();
            if(courses.Count() == 0)
            {
                if(judgeCourse(course))
                {
                    sql = "INSERT INTO Course (`ID`, `CourseName`, `ClassID`, `Teacher`, `TeacherID`, `Week`, `CourseOrder`, `Place`) VALUES ('" + course.ID + "','" + course.CourseName + "','" + course.ClassID + "','" + course.Teacher + "','" + course.TeacherID + "','" + course.Week + "','" + course.CourseOrder + "','" + course.Place  + "')";
                    courseService.SqlCommand(sql);
                    return Content("课程调整成功");
                }
                else
                {
                    return Content("课程冲突");

                }

            }
            else
            {
                if (judgeCourse(course))
                {
                    courseService.Update(course);
                    return Content("课程调整成功");
                }
                else
                {
                    return Content("课程冲突");
                }
            }   

        }
        public ActionResult CourseFind()
        {           
            return View();
        }

        /// <summary>
        /// 用于渲染输出课表
        /// </summary>
        /// <param name="classID"></param>
        /// <returns></returns>
        public ActionResult GetCourse(string classID)
        {
            string[,] coursesSet = new string[6, 4];
            string sql = "SELECT * FROM Course WHERE ClassID = "+ classID + " ORDER BY `Week`,`CourseOrder` ASC ";
            List<Course> courses = courseService.SqlQuery(sql).ToList();
            foreach (Course c in courses)
            {
                coursesSet[int.Parse(c.Week) , int.Parse(c.CourseOrder) -1] = c.CourseName;
            }
            //循环赋上节次
            string[] order = { "一二节", "三四节", "五六节", "七八节" };
            for(int i = 0; i < 4; i++)
            {
                coursesSet[0, i] = order[i];
            }
            //渲染table
            string myTable = "";
            for(int i = 0 ; i < 4 ; i++)
            {
                myTable += "<tr>";
                for(int j = 0;j < 6; j++)
                {
                    myTable += "<td>" + coursesSet[j, i] + "</td>";
                }
                myTable += "</tr>";
            }
            return Content(myTable);
        }
        /// <summary>
        /// 课程是否冲突判断方法
        /// </summary>
        /// <param name="course"></param>
        /// <returns>Boolean result</returns>
        public Boolean judgeCourse(Course course)
        {
            string sqlAll = "SELECT * FROM Course";
            List<Course> coursesAll = courseService.SqlQuery(sqlAll).ToList();
            foreach (Course temp in coursesAll)
            {
                if (temp.Place.Equals(course.Place) && temp.TeacherID.Equals(course.TeacherID) && temp.Week.Equals(course.Week) && temp.CourseOrder.Equals(course.CourseOrder))
                {
                    return false;
                }
            }
            return true;
        }
    }
}