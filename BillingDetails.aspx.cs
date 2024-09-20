using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class BillingDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("data source=.; user id=sa; password=sql12345;database=master");
            SqlCommand cmd = new SqlCommand($"insert into billing values({textbox1.Text},{textbox2.Text},'{textbox3.Text}')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            label1.Text = $"<h5>PatientId:</h5>{textbox1.Text},<h5>Amount:</h5>{textbox2.Text},<h5>PaymentStatus:</h5>{textbox3.Text}";
        }
    }
}