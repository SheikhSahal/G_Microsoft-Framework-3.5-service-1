using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PSL_Custom_Application.Models;
using PSL_Custom_Application.ModelView.Home;

namespace PSL_Custom_Application.Controllers
{
    public class CreateMenuController : Controller
    {
        // GET: CreateMenu
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Index(Create_Menu cm)
        {
            MV Menu = new MV();
            Menu.AddMenu(cm);

            return View();
        }
    }
}