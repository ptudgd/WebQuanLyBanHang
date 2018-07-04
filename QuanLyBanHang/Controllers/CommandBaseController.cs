using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QuanLyBanHang.Controllers
{
    public class CommandBaseController : Controller
    {
        public CommandBaseController()
        {
            if (System.Web.HttpContext.Current.Session["Username"] == null)
            {
                //redirect();
            }
        }
        public ActionResult redirect()
        {
            return Redirect("/Home/Index");
        }
    }
}