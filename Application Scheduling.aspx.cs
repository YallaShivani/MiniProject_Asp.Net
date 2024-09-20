using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Application_Scheduling : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            // Get the entered PatientID from the user input
            string patientID = textbox1.Text;

            // Store the PatientID in session
            Session["PatientID"] = patientID;

            // Redirect to the second page
            Response.Redirect("MedicalRecords.aspx");
        }
    }
}