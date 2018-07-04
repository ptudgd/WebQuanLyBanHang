using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Repository;
namespace QuanLyBanHang.Models
{
    public class LoginExecuteSearchAction
    {
        public string Username { get; set; }
        public string Password { get; set; }
        public List<dynamic> Execute()
        {
            using(var cmd = new LoginGetByIdRepository())
            {
                cmd.Username = this.Username;
                cmd.Password = this.Password;
                var result = cmd.Execute();
                return result;
            }
        }
    }
}