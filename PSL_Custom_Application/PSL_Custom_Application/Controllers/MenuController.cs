using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PSL_Custom_Application.ModelView.Home;
using PSL_Custom_Application.Models;

namespace PSL_Custom_Application.Controllers
{
    public class MenuController : Controller
    {
        // GET: Menu
        public ActionResult Index(string username)
        {
            MV db = new MV();
            List<MenuModel> menu = db.GEtdb(username);
            return View(menu);
        }
    }
}