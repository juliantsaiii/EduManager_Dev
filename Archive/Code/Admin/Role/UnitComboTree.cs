using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Diagnostics;
using Model;
namespace Archive
{
    public class UnitComboTree
    {
        public static Guid GID;
        public static string GetJson(Guid ID)
        {
            GID = ID;
            string json = "[";
            IList<Tree> t = UnitComboTreeDB.returnParentTreeModel(GID);
            foreach (Tree model in t)
            {
                if (model != t[t.Count - 1])
                {
                    json += GetJsonByModel(model) + ",";
                }
                else
                {
                    json += GetJsonByModel(model);
                }
            }
            json += "]";
            Debug.WriteLine(json);
            //json = json.Replace("#", "'");
            return json;
        }

        public static string GetJsonByModel(Tree t)
        {
            string json = "";
            bool flag = UnitComboTreeDB.isHaveChild(t.id);/////////////////////////////////////////////////id为父节点的ID

            json = "{"
                      + "\"id\":\"" + t.id + "\","
                      + "\"text\":\"" + t.text + "\","
            +"\"iconCls\":\"ok\",";
            if (t.@checked != null)
            {
                json += "\"checked\":true,";
            }
            json += "\"children\":";
            if (!flag)
            {
                json += "null}";
            }
            else
            {
                json += "[";
                IList<Tree> list = UnitComboTreeDB.getChild(GID,t.id);
               // IList<Tree> list = UnitComboTreeDB.getChild(GID, t.id);
                foreach (Tree atom in list)
                {
                    if (atom != list[list.Count - 1])
                    {
                        json += GetJsonByModel(atom) + ",";
                    }
                    else
                    {
                        json += GetJsonByModel(atom);
                    }
                }
                json += "]}";
            }
            return json;
        }

    }
}