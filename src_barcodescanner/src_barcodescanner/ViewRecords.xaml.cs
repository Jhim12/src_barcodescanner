using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Diagnostics;
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

            string serverdbname = "src_db_testing";
            string servername = "10.0.0.3";
            string serverusername = "sa";
            string serverpassword = "masterfile";

            // This line of codes is the creadentials and connection string
/*            string serverdbname = "src_db";
            string servername = "10.0.0.144"; //10.0.0.144
            string serverusername = "sa";
            string serverpassword = "masterfile";*/

            string sqlconn = $"Data Source={servername};Initial Catalog={serverdbname};User ID={serverusername};Password={serverpassword}";
            sqlConnection = new SqlConnection(sqlconn);
            //This line of codes is the creadentials and connection string

            try
            {
                List<MyTableList> myTableLists = new List<MyTableList>();
                sqlConnection.Open();
                string queryString = "Select * from dbo.tbldevice ORDER BY id DESC";
                SqlCommand command = new SqlCommand(queryString, sqlConnection);
                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    DateTime datePurchased;
                    DateTime systemDate;
                    float price;
                    string priceString = reader["price"].ToString();

                    if (DateTime.TryParse(reader["datepurchased"].ToString(), out datePurchased) &&
                               DateTime.TryParse(reader["systemdate"].ToString(), out systemDate) &&
                               float.TryParse(reader["price"].ToString(), out price))

                    {
                        myTableLists.Add(new MyTableList
                        {
                            id = Convert.ToInt32(reader["id"]),
                            assettag = reader["assettag"] == DBNull.Value ? string.Empty : reader["assettag"].ToString(),
                            assettype = reader["assettype"] == DBNull.Value ? string.Empty : reader["assettype"].ToString(),
                            devicename = reader["devicename"] == DBNull.Value ? string.Empty : reader["devicename"].ToString(),
                            brand = reader["brand"] == DBNull.Value ? string.Empty : reader["brand"].ToString(),
                            model = reader["model"] == DBNull.Value ? string.Empty : reader["model"].ToString(),
                            sn = reader["sn"] == DBNull.Value ? string.Empty : reader["sn"].ToString(),
                            department = reader["department"] == DBNull.Value ? string.Empty : reader["department"].ToString(),
                            location = reader["location"] == DBNull.Value ? string.Empty : reader["location"].ToString(),
                            deviceuser = reader["deviceuser"] == DBNull.Value ? string.Empty : reader["deviceuser"].ToString(),
                            datepurchased = DateTime.TryParse(reader["datepurchased"].ToString(), out datePurchased) ? datePurchased : DateTime.MaxValue,
                            price = !string.IsNullOrEmpty(priceString) && float.TryParse(priceString, out price) ? price : 0.0f,
                            HWdetail = reader["HWdetail"] == DBNull.Value ? string.Empty : reader["HWdetail"].ToString(),
                            systemdate = DateTime.TryParse(reader["systemdate"].ToString(), out systemDate) ? systemDate : DateTime.MaxValue,
                            status = reader["status"] == DBNull.Value ? string.Empty : reader["status"].ToString(),
                        });
                    }

                    else
                    {
                        // Handle invalid date format here or log an error message.
                    }
                }

                reader.Close();
                sqlConnection.Close();


                MyViewRecords.ItemsSource = myTableLists;
            }
            catch (Exception ex)
            {

                throw;
            }

        }

        private async void ViewSelectedDateRecords_Clicked(object sender, EventArgs e)
        {

            try
            {
                DateTime selectedStartDate = StartDateView.Date;
                DateTime selectedEndDate = EndDateView.Date;

                List<MyTableList> myTableLists = new List<MyTableList>();
                sqlConnection.Open();

                // Add these lines to check the selected dates before executing the query
                Debug.WriteLine($"Selected Start Date: {selectedStartDate}");
                Debug.WriteLine($"Selected End Date: {selectedEndDate}");

                // Modify your SQL query to filter records within the selected date range
                string queryString = "SELECT * FROM dbo.tbldevice WHERE systemdate >= @StartDate AND systemdate <= @EndDate ORDER BY id DESC";
                SqlCommand command = new SqlCommand(queryString, sqlConnection);
                command.Parameters.AddWithValue("@StartDate", selectedStartDate);
                command.Parameters.AddWithValue("@EndDate", selectedEndDate);

                Debug.WriteLine($"SQL Query: {queryString}");

                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    DateTime datePurchased;
                    DateTime systemDate;
                    float price;

                    if (DateTime.TryParse(reader["datepurchased"].ToString(), out datePurchased) &&
                               DateTime.TryParse(reader["systemdate"].ToString(), out systemDate) &&
                               float.TryParse(reader["price"].ToString(), out price))



                    {
                        myTableLists.Add(new MyTableList
                        {
                            id = Convert.ToInt32(reader["id"]),
                            assettag = reader["assettag"] == DBNull.Value ? null : reader["assettag"].ToString(),
                            assettype = reader["assettype"] == DBNull.Value ? null : reader["assettype"].ToString(),
                            devicename = reader["devicename"] == DBNull.Value ? null : reader["devicename"].ToString(),
                            brand = reader["brand"] == DBNull.Value ? null : reader["brand"].ToString(),
                            model = reader["model"] == DBNull.Value ? null : reader["model"].ToString(),
                            sn = reader["sn"] == DBNull.Value ? null : reader["sn"].ToString(),
                            department = reader["department"] == DBNull.Value ? null : reader["department"].ToString(),
                            location = reader["location"] == DBNull.Value ? null : reader["location"].ToString(),
                            deviceuser = reader["deviceuser"] == DBNull.Value ? null : reader["deviceuser"].ToString(),
                            datepurchased = DateTime.TryParse(reader["datepurchased"].ToString(), out datePurchased) ? datePurchased : DateTime.MaxValue,
                            price = float.TryParse(reader["price"].ToString(), out price) ? price : 0.0f,
                            HWdetail = reader["HWdetail"] == DBNull.Value ? null : reader["HWdetail"].ToString(),
                            systemdate = DateTime.TryParse(reader["systemdate"].ToString(), out systemDate) ? systemDate : DateTime.MaxValue,
                            status = reader["status"] == DBNull.Value ? null : reader["status"].ToString(),


                        });
                    }

                    else
                    {
                        // Handle invalid date format here or log an error message.
                    }
                }

                reader.Close();
                sqlConnection.Close();

                MyViewRecords.ItemsSource = myTableLists;
            }
            catch (Exception ex)
            {
                // Handle exceptions or log errors as needed
                await DisplayAlert("Error", ex.Message, "OK");
            }

        }
    }
}