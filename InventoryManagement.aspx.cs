using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class InventoryManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetData();
            }

        }
        private void GetData()
        {
            SqlConnection conn = new SqlConnection("data source=.; user id=sa; password=sql12345; database=master");
            SqlCommand cmd = new SqlCommand("select * from invent", conn);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            //ds.Tables[0]--refers to first table in the ds collection
            GridView1.DataBind();
        }
        protected void btn1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("data source=.; user id=sa; password=sql12345; database=master;");
            SqlCommand cmd = new SqlCommand($"insert into invent values({textbox3.Text},'{textbox1.Text}','{textbox2.Text}')",conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            GetData();  
            conn.Close();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex=e.NewEditIndex;
            GetData();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = int.Parse(GridView1.Rows[e.RowIndex].Cells[1].Text);
            SqlConnection conn = new SqlConnection("data source=.; user id=sa; password=sql12345; database=master");
            conn.Open();
            string query = $"delete from invent where ItemId={id}";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            GetData();
        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = int.Parse(GridView1.Rows[e.RowIndex].Cells[1].Text);
            string itemname = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            string quan= ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            SqlConnection conn = new SqlConnection("data source=.; user id=sa; password=sql12345; database=master");
            conn.Open();
            string query=$"update invent set itemname='{itemname}',Quantity='{quan}' where ItemId={id}";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.ExecuteNonQuery();
            GridView1.EditIndex = -1;
            GetData();
            conn.Close();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GetData();
        }
    }
}