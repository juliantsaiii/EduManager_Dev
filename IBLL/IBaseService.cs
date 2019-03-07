using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using IBLL;
namespace IBLL
{
    public interface IBaseService<T> where T : class ,new()
    {

        void Add(T item);
        void ExcelAdd(T item);
        void ExcelUpdate(T item); 
        void Update(T item);
        void Delete(Guid guid);
        void Delete(T item);
        void ExcelDelete(T item);
        void ExcelDelete(Guid guid);

        void SqlCommand(string sql);
        T Find(Guid guid);
        IEnumerable<T> SqlQuery(string sql);
        List<T> List(ListModel listModel, String TableName, ref int total);
    }
}
