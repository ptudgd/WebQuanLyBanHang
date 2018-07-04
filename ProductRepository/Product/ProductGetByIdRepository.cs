using ConnectDataBase;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repository
{
    public class ProductGetByIdRepository : Connection
    {
        public int ProductId { get; set; }
        public List<dynamic> Execute()
        {
            using(var cmd = new Query())
            {
                cmd.QueryString = "SELECT * FROM [Product] WHERE [Product].ProductId = " + this.ProductId;
                return cmd.ExecuteQuery();
            }
        }
    }
}
