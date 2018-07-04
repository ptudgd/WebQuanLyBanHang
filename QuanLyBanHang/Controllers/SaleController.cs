using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QuanLyBanHang.Controllers
{
    public class SaleController : CommandBaseController
    {
        // GET: Sale
        public ActionResult SaleList()
        {
            return View();
        }
    }
}