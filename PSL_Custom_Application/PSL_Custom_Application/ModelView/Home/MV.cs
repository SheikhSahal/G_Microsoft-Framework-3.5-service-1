using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using PSL_Custom_Application.Models;
using System.Configuration;
using System.Data.SqlClient;

namespace PSL_Custom_Application.ModelView.Home
{
    public class MV
    {
        public List<MenuModel> GEtdb(string username)
        {
            List<MenuModel> DBase = new List<MenuModel>();

            string connstring = ConfigurationManager.ConnectionStrings["dbx"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connstring))
            {
                using (SqlCommand cmd = new SqlCommand("select m.Menu_name from User_Privilege u , Menus m where u.Menu_id = m.Menu_id and u.User_id = @user", conn))
                {
                    conn.Open();
                    SqlParameter user = cmd.Parameters.AddWithValue("@user", username);
                    if (username == null)
                    {
                        user.Value = DBNull.Value;
                    }

                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        MenuModel emp = new MenuModel();
                        //emp.Menu_id = Convert.ToInt16(reader["Menu_id"]);
                        emp.Menu_name = reader["Menu_name"].ToString();

                        DBase.Add(emp);

                    }
                }
            }
            return DBase;
        }


        public void AddMenu(Create_Menu cm)
        {
            string connstring = ConfigurationManager.ConnectionStrings["dbx"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connstring))
            {

                using (SqlCommand cmd = new SqlCommand("insert into Menus(menu_name,Menu_Parent_id) values (@Menu_name,@Menu_parent_id)", conn))
                {

                    conn.Open();
                    cmd.Parameters.AddWithValue("@Menu_name", cm.Menu_name);
                    cmd.Parameters.AddWithValue("@Menu_parent_id", cm.Menu_parent_id);

                    cmd.ExecuteNonQuery();
                }
            }
        }


    }
}