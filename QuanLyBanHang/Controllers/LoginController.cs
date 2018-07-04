using ConnectDataBase;
using QuanLyBanHang.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Repository;
namespace QuanLyBanHang.Controllers
{
    public class LoginController : Controller
    {
        // GET: Login
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult CheckLogin(LoginExecuteSearchAction CommandAction)
        {
            try
            {
                var result = CommandAction.Execute();
                if (result.Count() == 1)
                {
                    this.Session["Username"] = CommandAction.Username;
                    this.Session["LastLogin"] = DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss");
                    using (var cmd = new LoginUpdateRepository())
                    {
                        result[0].LastLogin = DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss");
                        cmd.Item = result[0];
                        var res = cmd.Execute();
                        return Json(Result.Success(res));

                    }
                }
                return Json(Result.Success(false,"Tên tài khoản hoặc mật khẩu không đúng!"));
            }
            catch (Exception ex)
            {
                return Json(Result.Success(false, ex.Message));
            }
        }
        [HttpPost]
        public ActionResult Logout()
        {
            try
            {
                this.Session.Clear();
                this.Session.Abandon();
                return Json(Result.Success(true));
            }
            catch (Exception ex)
            {
                return Json(Result.Success(false,ex.Message));

            }
        }
    }
}