using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;

using Model;
using IBLL;
using System.Reflection;
using System.Diagnostics;
using System.Data;
namespace BLL
{
    public class BaseService<T> : IBaseService<T> where T : class, new()
    {

        public void Add(T item)
        {
            using (var db = new DBEntities())
            {
                Type itemType = typeof(T);
                PropertyInfo[] pi = itemType.GetProperties();
                foreach (PropertyInfo property in pi)
                {
                    //给属性赋值
                    if (property.Name == "Timestamp")
                    {
                        property.SetValue(item, DateTime.Now);
                    }

                }
                db.Set<T>().Add(item);
                db.SaveChanges();
      
            }
        }
        public void ExcelAdd(T item)
        {
            using (var db = new DBEntities())
            {
                Type itemType = typeof(T);
                PropertyInfo[] pi = itemType.GetProperties();
                foreach (PropertyInfo property in pi)
                {
                    //给属性赋值
                    if (property.Name == "Timestamp")
                    {
                        property.SetValue(item, DateTime.Now);
                    }

                }
                db.Set<T>().Add(item);
                db.SaveChanges();
                //if (item.GetType().ToString() != "Model.Affix")
                //{
                //    new LogTools().Insert("新增", XmlUtil.Serializer(typeof(T), item));
                //}
            }
        }
        //update(atom);
        //new logtools();
        public void Update(T item)
        {
            using (var db = new DBEntities())
            {
                Type itemType = typeof(T);
                PropertyInfo[] pi = itemType.GetProperties();
                foreach (PropertyInfo property in pi)
                {
                    //给属性赋值
                    if (property.Name == "Timestamp")
                    {
                        property.SetValue(item, DateTime.Now);
                    }
                    if (property.Name == "IsDeleted")
                    {
                        string flag = property.GetValue(item).ToString();
                    

                    }
                }
              
                db.Entry(item).State = System.Data.EntityState.Modified;
                db.SaveChanges();
            }
        }
        public void ExcelUpdate(T item)
        {
            using (var db = new DBEntities())
            {
                Type itemType = typeof(T);
                PropertyInfo[] pi = itemType.GetProperties();
                foreach (PropertyInfo property in pi)
                {
                    //给属性赋值
                    if (property.Name == "Timestamp")
                    {
                        property.SetValue(item, DateTime.Now);
                    }
                }
                //if (item.GetType().ToString() != "Model.Affix")
                //{
                //    new LogTools().Insert("修改", XmlUtil.Serializer(typeof(T), item), GetTableName(item));

                //}
                db.Entry(item).State = System.Data.EntityState.Modified;
                db.SaveChanges();
            }
        }
        public void Delete(Guid guid)
        {
            using (var db = new DBEntities())
            {

                T item = Find(guid);
                Type itemType = typeof(T);
                PropertyInfo[] pi = itemType.GetProperties();
                foreach (PropertyInfo property in pi)
                {
                    //给属性赋值
                    if (property.Name == "IsDeleted")
                    {
                        property.SetValue(item, true);
                    }
                    if (property.Name == "Timestamp")
                    {
                        property.SetValue(item, DateTime.Now);
                    }
                }
              
                Update(item);
                db.SaveChanges();
                //db.Entry(item).State = EntityState.Deleted;
                //db.SaveChanges();

            }
        }

        public void ExcelDelete(Guid guid)
        {
            using (var db = new DBEntities())
            {

                T item = Find(guid);
                Type itemType = typeof(T);
                PropertyInfo[] pi = itemType.GetProperties();
                foreach (PropertyInfo property in pi)
                {
                    //给属性赋值
                    if (property.Name == "IsDeleted")
                    {
                        property.SetValue(item, true);
                    }
                    if (property.Name == "Timestamp")
                    {
                        property.SetValue(item, DateTime.Now);
                    }
                }

                ExcelUpdate(item);
                db.SaveChanges();
                //db.Entry(item).State = EntityState.Deleted;
                //db.SaveChanges();

            }
        }

        public void ExcelDelete(T item)
        {
            using (var db = new DBEntities())
            {
                /*db.Entry(item).State = EntityState.Deleted;
                db.SaveChanges();*/
                Type itemType = typeof(T);
                PropertyInfo[] pi = itemType.GetProperties();
                foreach (PropertyInfo property in pi)
                {
                    //给属性赋值
                    if (property.Name == "IsDeleted")
                    {
                        property.SetValue(item, true);
                    }
                    if (property.Name == "Timestamp")
                    {
                        property.SetValue(item, DateTime.Now);
                    }
                }

                ExcelUpdate(item);
                db.SaveChanges();
            }
        }

        public void Delete(T item)
        {
            using (var db = new DBEntities())
            {
                /*db.Entry(item).State = EntityState.Deleted;
                db.SaveChanges();*/
                Type itemType = typeof(T);
                PropertyInfo[] pi = itemType.GetProperties();
                foreach (PropertyInfo property in pi)
                {
                    //给属性赋值
                    if (property.Name == "IsDeleted")
                    {
                        property.SetValue(item, true);
                    }
                    if (property.Name == "Timestamp")
                    {
                        property.SetValue(item, DateTime.Now);
                    }
                }
               
                Update(item);
                db.SaveChanges();
            }
        }
        public IEnumerable<T> SqlQuery(string sql)
        {
            using (var db = new DBEntities())
            {
                //new LogTools().Insert("查询", sql);
                return db.Database.SqlQuery<T>(sql).ToList();
            }
        }
        //public int SqlCommand(string sql)
        //{
        //    using (var db = new DBEntities())
        //    {
        //        return db.Database.ExecuteSqlCommand(sql);
        //    }
        //}
        public void SqlCommand(string sql)
        {
            using (var db = new DBEntities())
            {
                db.Database.ExecuteSqlCommand(sql);
            }
        }

        public T Find(Guid guid)
        {
            using (var db = new DBEntities())
            {
                return db.Set<T>().Find(guid);//db.ClueInfo.Find(guid);
            }
        }

        public List<T> List(ListModel listModel, String TableName, ref int total)
        {
            using (var db = new DBEntities())
            {
                listModel.AuthString = "";
                string sql = "select * FROM " + TableName + " where isDeleted=false " + listModel.StatusString + listModel.QueryString + listModel.AuthString + " order by " + listModel.Sort + " " + listModel.Direction;
                Debug.WriteLine(sql);
                IEnumerable<T> temp = SqlQuery(sql);
                total = temp.Count();
                var users = temp.Skip<T>((listModel.PageIndex - 1) * listModel.PageSize).Take<T>(listModel.PageSize);
                var result = users.ToList<T>();
                return result;
            }
        }

        public string GetTableName(T item){

            string tablename = item.GetType().ToString();

            switch (tablename) {
                case "Model.RoleFuncData": return "数据权限设置";


                case "Model.Person": return "个人信息";

                case "Model.FirstForm": return "第一种形态";

                case "Model.AccountInfo": return "问责信息";

                case "Model.ClueInfo": return "问题线索";

                case "Model.FourForms": return "线索处置";

                case "Model.CaseInfo": return "纪律处分";

                case "Model.AssetCaseInfo": return "涉案款物";

                case "Model.BriberyInfo": return "行贿人";

                case "Model.CrimeInfo": return "违法犯罪";

                case "Model.AdjustInfo": return "组织调整";

                case "Model.AssetGoodsInfo": return "涉案款物详单";

                case "Model.AssetMoneyInfo": return "礼品礼金详单";

                case "Model.GiftInfo": return "礼品礼金";

                case "Model.Dept": return "部门";

                case "Model.ClueLink": return "问题线索";

                case "Model.RelationInfo": return "亲属信息";

                case "Model.Resume": return "简历";

                case "Model.Role": return "角色";

                case "Model.RoleMenu": return "角色菜单";

                case "Model.Unit": return "单位";

                case "Model.UserDept": return "访问权限";

                case "Model.Users": return "用户信息";

                default: return "";
            }
        }
    }
}
