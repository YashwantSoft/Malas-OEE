using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Configuration;
using BusinessLayerUtility;
using System.Net.Sockets;
using System.Net.Http;

namespace SPApplication.Views
{
    public partial class TestDB : Form
    {
        BusinessLayer objBL=new BusinessLayer();

        public TestDB()
        {
            InitializeComponent();
        }

        private void TestDB_Load(object sender, EventArgs e)
        {
            objBL.ConnectESSL_F();

            string Query = "SELECT TABLE_SCHEMA, TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE = 'BASE TABLE' ORDER BY TABLE_SCHEMA ASC";

            //SELECT * FROM sys.databases
            //SELECT TABLE_SCHEMA, TABLE_NAME FROM INFORMATION_SCHEMA.TABLES

            objBL.objCmd_SQL_Erp = new SqlCommand(Query);
            objBL.objCmd_SQL_Erp.Connection = objBL.objCon_SQL_Erp;
            objBL.da_SQL_Erp = new SqlDataAdapter(objBL.objCmd_SQL_Erp);
            DataTable dt = new DataTable();
            objBL.da_SQL_Erp.Fill(dt);
            objBL.objCon_SQL_Erp.Close();


            objBL.ConnectESSL_F();
            DataTable dt2 = new DataTable();
            string Query1 = "SELECT * FROM Framework.LoginUserGroup ";

            objBL.objCmd_SQL_Erp = new SqlCommand(Query1);
            objBL.objCmd_SQL_Erp.Connection = objBL.objCon_SQL_Erp;
            objBL.da_SQL_Erp = new SqlDataAdapter(objBL.objCmd_SQL_Erp);
            
            objBL.da_SQL_Erp.Fill(dt2);
            objBL.objCon_SQL_Erp.Close();

            //SqlConnection objCon=new SqlConnection("<add name="ERPConnectionSql" connectionString="Server=192.168.1.251;Database=TNTINFRA_Live;User Id=sa;Password='Password9'" providerName="System.Data.SqlClient" />" 
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            string ipAddress = "192.168.1.5";
            int port = 8085; // Replace with the port number of your ESSL machine

            //string ipAddress = "192.168.1.201"; // Replace with the IP address of your ESSL machine
            //int port = 9999; // Replace with the port number of your ESSL machine

            using (TcpClient client = new TcpClient(ipAddress, port))
            {
                NetworkStream stream = client.GetStream();

                // Send a command to the ESSL machine to request data
                byte[] command = Encoding.ASCII.GetBytes("GetAttLog\r\n");
                stream.Write(command, 0, command.Length);

                // Read the response from the ESSL machine
                byte[] buffer = new byte[1024];
                int bytesRead = stream.Read(buffer, 0, buffer.Length);
                string responseData = Encoding.ASCII.GetString(buffer, 0, bytesRead);

                stream.Close();
                client.Close();
                // Process the response data
                Console.WriteLine("Response from ESSL machine: " + responseData);
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            //HttpClient
        }
    }
}
