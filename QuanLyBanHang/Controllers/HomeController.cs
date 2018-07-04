using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QuanLyBanHang.Controllers
{
    public class HomeController : CommandBaseController
    {
        public ActionResult Index()
        {
            return View();
        }
        
    }
}