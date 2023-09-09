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
            string serverdbname = "src_db";
            string servername = "192.168.100.106";
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

                        assettag = reader["assettag"].ToString(),
                        assettype = reader["assettype"].ToString(),
                        devicename = reader["devicename"].ToString(),
                        brand = reader["brand"].ToString(),
                        model = reader["model"].ToString(),
                        sn = reader["sn"].ToString(),
                        department = reader["department"].ToString(),
                        location = reader["location"].ToString(),
                        deviceuser = reader["deviceuser"].ToString(),
                        datepurchased = DateTime.Parse(reader["datepurchased"].ToString()),
                        price = float.Parse(reader["price"].ToString()),
                        HWdetail = reader["HWdetail"].ToString(),
                        status = reader["status"].ToString(),

                    }
                    );




                }
                reader.Close();
                sqlConnection.Close();

                MyFind.ItemsSource = myTableLists;
                Find_HWDetail.ItemsSource = myTableLists;
                
            }
            catch (Exception ex)
            {
                await App.Current.MainPage.DisplayAlert("Alert", ex.Message, "Ok");
                throw;
            }
        }




    }
}