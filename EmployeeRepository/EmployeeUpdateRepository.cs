using ConnectDataBase;
using Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repository
{
    public class EmployeeUpdateRepository : Connection
    {
        public Employee Item { get; set; }
        public bool Execute()
        {
            using(var cmd = new Query())
            {
                cmd.QueryString = "UPDATE [dbo].[Employee] SET [Phone] = '" + Item.Phone + "' ,[Email] = '" + Item.Email + "' ,[Address] = '" + Item.Address + "' ,[WriteDate] = '' ,[EditDate] = '' ,[WriterId] = '' ,[EditorId] = '' ,[EmployeeName] = '" + Item.EmployeeName + "' WHERE [Employee].EmployeeId = '" + Item.EmployeeId+"'";
                return Convert.ToBoolean(cmd.ExecuteQueryNonReader());
            }
        }
    }
}
