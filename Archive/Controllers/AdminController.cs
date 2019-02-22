using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Script.Serialization;
using Archive;
using Model;
using IBLL;
using BLL;
using System.Diagnostics;
using System.Data;
using System.IO;

namespace Archive.Controllers
{
    public class AdminController : BaseController
    {
        //
        // GET: /Admin/
        //XSEntities db = new XSEntities();
        IUserService userService = new UserService();
        IDeptService deptService = new DeptService();
        IRoleService roleService = new RoleService();
        IRoleMenuService RoleMenuService = new RoleMenuService();

        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Lead()
        {
            return View();
        }

        public JsonResult GetShowRoleList()
        {
            IEnumerable<Role> temp = null;
            string sql = null;

            sql = "SELECT * FROM Role WHERE  IsDeleted= 0 ";


            temp = roleService.SqlQuery(sql);

            return Json(temp.ToList(), JsonRequestBehavior.AllowGet);
        }


        public ActionResult LogEdit()
        {

            Guid id = new Guid(Request["ID"]);

            return View();

        }

        public ActionResult RoleFuncData1()
        {
            return View();
        }


        public ActionResult LogList()
        {

            return View();
        }
        public ListModel getListModel()
        {
            int flag = 0;
            ListModel listModel = new ListModel();
            listModel.PageIndex = Request["page"] == null ? 1 : int.Parse(Request["page"]);
            listModel.PageSize = Request["rows"] == null ? 30 : int.Parse(Request["rows"]);
            listModel.Sort = Request["sort"];
            listModel.Direction = Request["order"];
            listModel.QueryType = Request["queryType"];
            listModel.KeyWord = Request["keyWord"];
            listModel.starttime = Request["start"];
            listModel.endtime = Request["end"];
            listModel.QueryString = "";
            if (listModel.QueryType != "" && listModel.KeyWord != "" && listModel.QueryType != null && listModel.KeyWord !=null )
            {
                listModel.QueryString = " where " + listModel.QueryType + " LIKE '%" + listModel.KeyWord + "%' ";
                flag = 1;
            }

            if (listModel.starttime != "" && listModel.endtime!="" && listModel.starttime !=null && listModel.endtime != null) {
                if (flag == 1)
                {
                    listModel.QueryString += "AND OptTime between '" + listModel.starttime + "' and '" + listModel.endtime + "'";
                }
                else
                {
                    listModel.QueryString = " where OptTime between '" + listModel.starttime + "' and '" + listModel.endtime + "'";

                }
            }

            //listModel.AuthString = new Auth(((AuthSerial)Session["Auth"])).getEditPermission();
            return listModel;
        }
        public ActionResult ChangePassword()
        {
            ViewBag.users = ((BaseInfo)Session["User"]).user;
            return View();
        }

        [HttpPost]
        public ActionResult SavePassword(Users item)
        {
            try
            {
                // TODO: Add update logic here
                item.IsDeleted = false;
                userService.Update(item);
                Debug.WriteLine("Save Password OK");
                ViewBag.users = ((BaseInfo)Session["User"]).user;
                return View("ChangePassword");
            }
            catch (Exception e)
            {
                return Content(e.ToString());
            }
        }

        public ActionResult UsersList()
        {
            return View();
        }
        public ActionResult Person()
        {
            return View();
        }
        public ActionResult Account()
        {
            return View();
        }
        public ActionResult Adjust()
        {
            return View();
        }
        public ActionResult Bribery()
        {
            return View();
        }
        public ActionResult Asset()
        {
            return View();
        }
        public ActionResult Gift()
        {
            return View();
        }
        public ActionResult Case()
        {
            return View();
        }
        public ActionResult Crime()
        {
            return View();
        }
        public ActionResult FirstForm()
        {
            return View();
        }
        public ActionResult FourForms()
        {
            return View();
        }
        public ActionResult UsersEdit()
        {
            string type = Request["type"];
            Session["UserEditType"] = type;
            Guid id = new Guid();
            if (Request["type"] != "Create")
                id = new Guid(Request["ID"]);
            if (type == "Create")
            {
                Users user = new Users();
                user.ID = Guid.NewGuid();
                ViewBag.user = user;
                return View();
            }
            else
            {
                Users user = userService.Find(id);
                ViewBag.user = user;
                return View();
            }
        }

        public ActionResult CaseUserEdit()
        {
            var masterID = new Guid(Request["MasterID"]);
            Users find = userService.FindByMasterID(masterID);
            if (find == null)
            {
                Session["UserEditType"] = "Create";
                Users user = new Users();
                user.ID = Guid.NewGuid();
                user.MasterID = masterID;
                user.DeptID = ((BaseInfo)Session["User"]).user.DeptID;
                user.RoleID = new Guid("00000000-0007-0000-0000-000000000000"); ;
                user.IsKeyNode = true;
                ViewBag.user = user;
                ViewBag.baseInfo = ((BaseInfo)Session["User"]);
                return View();
            }
            else
            {
                Session["UserEditType"] = "Edit";
                Users user = userService.Find(find.ID);
                ViewBag.user = user;
                return View();
            }
        }


        [HttpPost]
        public ActionResult UsersDelete(Guid ID)
        {
            Users user = userService.Find(ID);

            userService.ExcelDelete(ID);
          
            return Content("true");
        }
        public ActionResult CheckName()
        {
            string userName = Request["UserName"];

            Users result = userService.FindByUserName(userName);
            if (result != null)
            {
                return Content("false");
            }
            return Content("true");
        }

        public ActionResult SaveOrUpdate(Users item)
        {

            string editType = (string)Session["UserEditType"];
            Debug.WriteLine(editType);
            string deptTree = Request["deptCombTree"];
       
            if (editType == "Create")
            {
                Guid guid = Guid.NewGuid();
                item.ID = guid;
                item.RoleID = item.RoleID;
                item.IsDeleted = false;
                userService.ExcelAdd(item);

                return Content("true");
            }
            if (editType == "Edit")
            {
                item.RoleID = item.RoleID;
                item.IsDeleted = false;
                userService.ExcelUpdate(item);
                return Content("true");
            }
            return Content("false");
        }

        public JsonResult GetBindUserList()
        {
            IEnumerable<Users> temp = null;
            string sql = null;

            sql = "SELECT * FROM Users where IsKeyNode=1 and IsDeleted=0";


            temp = userService.SqlQuery(sql);

            return Json(temp.ToList(), JsonRequestBehavior.AllowGet);
        }
        public JsonResult GetUsersList()
        {
            int pageIndex = Request["page"] == null ? 1 : int.Parse(Request["page"]);
            int pageSize = Request["rows"] == null ? 30 : int.Parse(Request["rows"]);
            string sort = Request["sort"];
            string direction = Request["order"];
            string uName = Request["RealName"];
            string sqlUserName = "Where  IsDeleted=0";
            if (uName != null)
            {
                sqlUserName = " WHERE RealName like '%" + uName + "%' ";
            }
            int total = 0;
            //string dept = (string)Session["Dept"];
            IEnumerable<UsersMore> temp = null; ;
            string sql = "SELECT *,(SELECT RoleName from Role WHERE users.RoleID=Role.ID )AS RoleName, (SELECT DeptName from Dept WHERE users.DeptId=Dept.ID)AS DeptName FROM users " + sqlUserName + "  and IsDeleted=0 order by Rank asc";
            temp = userService.SqlQueryMore(sql);
            total = temp.Count();
            var users = temp.Skip<UsersMore>((pageIndex - 1) * pageSize).Take<UsersMore>(pageSize);
            var data = new
            {
                total = total,
                rows = users.ToList<UsersMore>()
            };


            return Json(data, JsonRequestBehavior.AllowGet);
        }

  
        public ActionResult DeptList()
        {
            return View();
        }
        public ActionResult DeptEdit()
        {
            string type = Request["type"];
            Session["DeptEditType"] = type;

            Guid id = new Guid();
            if (Request["type"] != "CreateLevelOne")
            {
                Session["ID"] = Request["ID"];
            }
            if (Request["type"] == "Edit")
                id = new Guid(Request["ID"]);
            if (type != "Edit")
            {
                Dept dept = new Dept();
                ViewBag.dept = dept;
                return View();
            }
            else
            {
                Dept dept = deptService.Find(id);
                ViewBag.dept = dept;
                List<string> strarr = new List<string>();

         

                ViewBag.List = String.Join(",", strarr.ToArray());
                return View();
            }
        }


        public ActionResult GetDeptList()
        {
            DeptGridTree deptGridTree = new DeptGridTree();
            return Content(deptGridTree.GetJson());
        }
        public ActionResult DeptSaveOrUpdate(Dept item)
        {
            string menuTree = Request["menutree"];


            string editType = (string)Session["DeptEditType"];
            if (editType != "Edit")
            {
                Guid guid = Guid.NewGuid();
                item.ID = guid;
                item.IsDeleted = false;
                deptService.ExcelAdd(item);
            }
            else
            {
                item.IsDeleted = false;
                deptService.ExcelUpdate(item);
            }


        
            return Content("true");

        }
        public ActionResult DeptDelete(Guid ID)
        {
            Dept dept = deptService.Find(ID);
            deptService.ExcelDelete(ID);
            return Content("true");
        }

        

        public ActionResult RoleList()
        {
            return View();
        }
        public ActionResult RoleEdit()
        {
            string type = Request["type"];
            Session["RoleEditType"] = type;
            Guid id = new Guid();
            if (Request["type"] != "Create")
                id = new Guid(Request["ID"]);
            if (type == "Create")
            {
                Role role = new Role();
                ViewBag.role = role;
                return View();
            }
            else
            {
                Role role = roleService.Find(id);
                ViewBag.role = role;
                return View();
            }
        }
        public ActionResult GetMenuComboTree(Guid ID)
        {
            return Content(MenuComboTree.GetJson(ID));
        }
        public ActionResult GetDeptComboboxTree1()
        {
            return Content(DeptCombo.GetJson());//获得没有选择框（只能选一个）Dept树形结构
        }
        public ActionResult GetDeptComboTree2(Guid ID)
        {
            return Content(DeptComboTree.GetJson(ID));//获得有选择框（可多选）Dept树形结构
        }
        public ActionResult GetunitComboTree(Guid ID)
        {
            return Content(UnitComboTree.GetJson(ID));
        }
        public ActionResult RoleSaveOrUpdate(Role item)
        {

            string editType = (string)Session["RoleEditType"];
            string menuTree = Request["menutree"];
            Guid id;
            if (editType != "Edit")
            {
                Guid guid = Guid.NewGuid();
                id = guid;
                item.ID = guid;
                roleService.ExcelAdd(item);
            }
            else
            {
                id = item.ID;
                roleService.ExcelUpdate(item);
            }
            //string sql="Delete From RoleMenu Where roleId='"+id.ToString()+"'";
            //db.Database.ExecuteSqlCommand(sql);
            RoleMenuService.SqlCommand("Delete from RoleMenu where RoleID = '" + item.ID + "'");

            string[] array = menuTree.Split(',');
            foreach (string s in array)
            {
                RoleMenu RoleMenu = new RoleMenu();
                RoleMenu.ID = Guid.NewGuid();
                RoleMenu.RoleID = id;
                RoleMenu.MenuID = new Guid(s);
                RoleMenuService.ExcelAdd(RoleMenu);

            }

    

            return Content("true");
        }



        public ActionResult RoleDelete(Guid ID)
        {
            Role role = roleService.Find(ID);

            roleService.ExcelDelete(ID);

            return Content("true");
        }
        public JsonResult GetRoleList()
        {
            int pageIndex = Request["page"] == null ? 1 : int.Parse(Request["page"]);
            int pageSize = Request["rows"] == null ? 30 : int.Parse(Request["rows"]);
            string sort = Request["sort"];
            sort = sort == null ? sort = "Rank" : sort;
            string direction = Request["order"];
            string uName = Request["uName"];
            string sqlUserName = "";
            if (uName != null)
            {
                sqlUserName = " and UserName like '%" + uName + "%'  and IsDeleted= 0 ";
            }
            else
            {
                sqlUserName = " Where IsDeleted= 0 ";
            }
            int total = 0;
            //string dept = (string)Session["Dept"];
            IEnumerable<Role> temp = null; ;
            string sql = "SELECT * FROM Role " + sqlUserName + " order by Rank," + sort + " " + direction;
            temp = roleService.SqlQuery(sql);
            total = temp.Count();
            var users = temp.Skip<Role>((pageIndex - 1) * pageSize).Take<Role>(pageSize);
            var data = new
            {
                total = total,
                rows = users.ToList<Role>()
            };


            return Json(data, JsonRequestBehavior.AllowGet);
        }
     

        

    }
}
