using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using Model;
namespace Archive
{
    public class DeptComboTreeDB
    {
        static DBEntities db = new DBEntities();

        public static IList<Tree> returnParentTreeModel(Guid ID)
        {

            IList<Tree> t = new List<Tree>();
            IEnumerable<Tree> temp = null;
            string sql = "SELECT * FROM (SELECT Dept.ID as id ,DeptName as text,parentId,r.checked FROM Dept left join (select DeptID AS checked From UserDept WHERE UserID='" + ID + "') AS r ON Dept.Id=r.checked) AS s WHERE  parentId='00000000-0000-0000-0000-000000000000'";
            temp = db.Database.SqlQuery<Tree>(sql);
            return temp.ToList();
        }

        public static bool isHaveChild(Guid id)
        {
            bool flag = false;
            IEnumerable<Guid> temp = null;
            string sql = "select id from Dept where parentId='" + id + "'";
            temp = db.Database.SqlQuery<Guid>(sql);
            if (temp.FirstOrDefault()!=null)
            {
                flag = true;
            }
            return flag;

        }
        public static IList<Tree> getChild(Guid ID, Guid pid)
        {   
            IList<Tree> t = new List<Tree>();
            IEnumerable<Tree> temp = null;
            string sql = "SELECT * FROM (SELECT ID as id ,DeptName as text,parentId,r.checked,Sequence as seq FROM Dept left join (select DeptID AS checked From UserDept WHERE UserID='" + ID + "') AS r ON Dept.Id=r.checked) AS s WHERE  parentId='" + pid + "'order by s.seq ASC";
            temp = db.Database.SqlQuery<Tree>(sql);
            return temp.ToList();
        }
    }
}