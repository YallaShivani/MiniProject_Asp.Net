using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class MedicalRecords : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Retrieve the PatientID from session
            string firstPagePatientID = Session["PatientID"] as string;

            if (!IsPostBack)
            {
                // Pre-fill the PatientID textbox with the value from the first page
                textbox1.Text = firstPagePatientID;
            }
        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            string secondPagePatientID = textbox1.Text;

            // Retrieve the PatientID from session
            string firstPagePatientID = Session["PatientID"] as string;

            // Check if the entered PatientID matches the one from the first page
            if (secondPagePatientID != firstPagePatientID)
            {
                // Display error message
                label1.Text = "PatientID does not match the one from the first page.";
                return;
            }
        }
    }
}