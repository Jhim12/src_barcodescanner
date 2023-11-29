using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using ZXing.Net.Mobile.Forms;

namespace src_barcodescanner
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class FindRecord : ContentPage
    {
        public class MyTableList
        {
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
            public string status { get; set; }
        }


        SqlConnection sqlConnection;
        
        public FindRecord()
        {
            InitializeComponent();
            // This line of codes is the creadentials and connection string
/*            string serverdbname = "src_db_testing";
            string servername = "10.0.0.3";
            string serverusername = "sa";
            string serverpassword = "masterfile";*/

            // This line of codes is the creadentials and connection string
            string serverdbname = "src_db";
            string servername = "10.0.0.144"; //10.0.0.144
            string serverusername = "sa";
            string serverpassword = "masterfile";

            string sqlconn = $"Data Source={servername};Initial Catalog={serverdbname};User ID={serverusername};Password={serverpassword}";
            sqlConnection = new SqlConnection(sqlconn);
            //This line of codes is the creadentials and connection string

        }

        private async void Find_Scanner_Clicked(object sender, EventArgs e)
        {

            var scan = new ZXingScannerPage();
            await Navigation.PushAsync(scan);
            scan.OnScanResult += (result) =>
            {
                Device.BeginInvokeOnMainThread(async () =>
                {
                    await Navigation.PopAsync();
                    Find_Search.Text = result.Text;
                });
            };
        }
        
        private async void Find_Record_Clicked(object sender, EventArgs e)
        {
            try
            {
                sqlConnection.Open();
                List<MyTableList> myTableLists = new List<MyTableList>();
                string queryString = $"Select * from dbo.tbldevice WHERE sn = '{Find_Search.Text}' OR assettag = '{Find_Search.Text}'";
                SqlCommand command = new SqlCommand(queryString, sqlConnection);
                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {

                    myTableLists.Add(new MyTableList

                    {
                        assettag = reader["assettag"] is DBNull ? string.Empty : reader["assettag"].ToString(),
                        assettype = reader["assettype"] is DBNull ? string.Empty : reader["assettype"].ToString(),
                        devicename = reader["devicename"] is DBNull ? string.Empty : reader["devicename"].ToString(),
                        brand = reader["brand"] is DBNull ? string.Empty : reader["brand"].ToString(),
                        model = reader["model"] is DBNull ? string.Empty : reader["model"].ToString(),
                        sn = reader["sn"] is DBNull ? string.Empty : reader["sn"].ToString(),
                        department = reader["department"] is DBNull ? string.Empty : reader["department"].ToString(),
                        location = reader["location"] is DBNull ? string.Empty : reader["location"].ToString(),
                        deviceuser = reader["deviceuser"] is DBNull ? string.Empty : reader["deviceuser"].ToString(),
                        datepurchased = reader["datepurchased"] is DBNull ? DateTime.MinValue : DateTime.Parse(reader["datepurchased"].ToString()),
                        price = reader["price"] is DBNull ? 0.0f : float.Parse(reader["price"].ToString()),
                        HWdetail = reader["HWdetail"] is DBNull ? string.Empty : reader["HWdetail"].ToString(),
                        status = reader["status"] is DBNull ? string.Empty : reader["status"].ToString(),

                    }
                    );
                }
                reader.Close();
                sqlConnection.Close();

                if (myTableLists.Count > 0)
                {
                    MyFind.ItemsSource = myTableLists;
                    Find_HWDetail.ItemsSource = myTableLists;
                }
                else
                {
                    await App.Current.MainPage.DisplayAlert("Alert", "No record found", "Ok");
                }

            }
            catch (Exception ex)
            {
                await App.Current.MainPage.DisplayAlert("Alert", ex.Message, "Ok");
                throw;
            }
        }

    }
}