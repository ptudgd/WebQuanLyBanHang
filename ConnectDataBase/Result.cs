using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Mvc;
using Newtonsoft.Json;

namespace ConnectDataBase
{
    public class Result
    {
        public static dynamic Success(List<dynamic> data, string message = null)
        {
            return new 
            {
                Data = data,
                IsSuccess = true,
                Message = message ?? "success"
            };
        }
        public static dynamic Success(bool b,string Mes = "success")
        {
            return new
            {
                isSuccess = b,
                Message = Mes
            };
        }
    }
}
