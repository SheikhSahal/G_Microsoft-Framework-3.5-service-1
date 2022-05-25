using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PSL_Custom_Application.Models;
using System.Data.SqlClient;

namespace PSL_Custom_Application.Controllers
{
    public class HomeController : Controller
    {
        SqlConnection con = new SqlConnection();
        SqlCommand com = new SqlCommand();
        SqlDataReader dr;

        public ActionResult Index()
        {
            return View();
        }
        void connectionstring()
        {
            con.ConnectionString = @"Data Source=SAHAL-PC\SQLEXPRESS;Initial Catalog=PSL;Integrated Security=True";
        }

        [HttpPost]
        public ActionResult Index(login l)
        {
            var user = l.Username;
            var password = l.Password;

            string username = "";
            connectionstring();
            con.Open();
            com.Connection = con;
            com.CommandText = "select l.User_name,l.Password from Login l where l.User_name='" + user + "' and l.Password= '" + password + "'";
            dr = com.ExecuteReader();
            bool status = false;

            if (dr.Read())
            {
                string u = dr["User_name"].ToString();
                string p = dr["Password"].ToString();

                return RedirectToAction("index", "Menu",new {username = user });

            }
            else
            {
                return RedirectToAction("index", "Home");
            }

        }
    }
}