using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using Model;
namespace Archive
{
    public class UnitComboTreeDB
    {
        static DBEntities db = new DBEntities();

        public static IList<Tree> returnParentTreeModel(Guid ID)
        {

            IList<Tree> t = new List<Tree>();
            IEnumerable<Tree> temp = null;
            string sql = "SELECT * FROM (SELECT Unit.ID as id ,UnitName as text,parentId,r.checked,Unit.sequence FROM Unit left join (select id AS checked From Unit WHERE DeptID='" + ID + "') AS r ON Unit.Id=r.checked) AS s WHERE  parentId='00000000-0000-0000-0000-000000000000'  order by s.sequence asc";
            temp = db.Database.SqlQuery<Tree>(sql);
            return temp.ToList();
        }

        public static bool isHaveChild(Guid id)
        {
            bool flag = false;
            IEnumerable<Guid> temp = null;
            string sql = "select id from Unit where parentId='" + id + "'and IsDeleted=0";
            temp = db.Database.SqlQuery<Guid>(sql);
            Guid fff = temp.FirstOrDefault();
            if (fff != null && fff.ToString() != "00000000-0000-0000-0000-000000000000")
            {
                flag = true;
            }
            return flag;

        }
        public static IList<Tree> getChild( Guid GID,Guid pid)
        {
            IList<Tree> t = new List<Tree>();
            IEnumerable<Tree> temp = null;
            string sql = "SELECT * FROM (SELECT Unit.ID as id ,UnitName as text,parentId,r.checked,Unit.sequence FROM Unit left join (select id AS checked From Unit WHERE DeptID='" + GID + "') AS r ON Unit.Id=r.checked) AS s WHERE  parentId='"+pid+"' order by s.sequence asc";
            temp = db.Database.SqlQuery<Tree>(sql);
            return temp.ToList();
        }
    }
}