using ConnectDataBase;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repository
{
    public class CustomerExecuteDeleteById : Connection
    {
        public int CustomerId { get; set; }
        public bool Execute()
        {
            using(var cmd = new Query())
            {
                cmd.QueryString = "DELETE FROM [Customer] WHERE [Customer].CustomerId =" + this.CustomerId +" AND [Customer].isCustomer = 1";
                return Convert.ToBoolean(cmd.ExecuteQueryNonReader());
            }
        }
    }
}
