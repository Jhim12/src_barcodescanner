using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace src_barcodescanner
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class ViewRecords : ContentPage
    {
        public class MyTableList
        {
            public int id { get; set; }
            public string assettag { get; set; }
            public string assettype { get; set; }
            public string devicename { get; set; }
            public string brand { get; set; }
            public string model { get; set; }
            public string sn { get; set; }
            public string department { get; set; }
            public string location { get; set; }
            public string deviceuser { get; set; }
            public DateTime datepurchased { get; set; }
            public float price { get; set; }
            public string HWdetail { get; set; }
            public DateTime systemdate { get; set; }
            public string status { get; set; }
        }

        SqlConnection sqlConnection;

        public ViewRecords()
        {
            InitializeComponent();
            // This line of codes is the creadentials and connection string
            string serverdbname = "src_db";
            string servername = "192.168.100.106";
            string serverusername = "sa";
            string serverpassword = "masterfile";

            string sqlconn = $"Data Source={servername};Initial Catalog={serverdbname};User ID={serverusername};Password={serverpassword}";
            sqlConnection = new SqlConnection(sqlconn);
            //This line of codes is the creadentials and connection string

            try
            {
                List<MyTableList> myTableLists = new List<MyTableList>();
                sqlConnection.Open();
                string queryString = "Select * from dbo.tbldevice";
                SqlCommand command = new SqlCommand(queryString, sqlConnection);
                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    DateTime datePurchased;
                    DateTime systemDate;

                    if (DateTime.TryParse(reader["datepurchased"].ToString(), out datePurchased) &&
                        DateTime.TryParse(reader["systemdate"].ToString(), out systemDate))
                    {
                        myTableLists.Add(new MyTableList
                        {
                            id = Convert.ToInt32(reader["id"]),
                            assettag = reader["assettag"].ToString(),
                            assettype = reader["assettype"].ToString(),
                            devicename = reader["devicename"].ToString(),
                            brand = reader["brand"].ToString(),
                            model = reader["model"].ToString(),
                            sn = reader["sn"].ToString(),
                            department = reader["department"].ToString(),
                            location = reader["location"].ToString(),
                            deviceuser = reader["deviceuser"].ToString(),
                            datepurchased = datePurchased,
                            price = float.Parse(reader["price"].ToString()),
                            HWdetail = reader["HWdetail"].ToString(),
                            systemdate = systemDate,
                            status = reader["status"].ToString(),
                        });
                    }

                    else
                    {
                        // Handle invalid date format here or log an error message.
                    }
                }

                reader.Close();
                sqlConnection.Close();

                MyView.ItemsSource = myTableLists;
            }
            catch (Exception ex)
            {
    
                throw;
            }


        }


    }
}