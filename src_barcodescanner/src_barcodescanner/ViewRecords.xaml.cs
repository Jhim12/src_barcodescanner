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

        public ViewRecords()
        {
            InitializeComponent();
        }

        private async void View_ConnectServer_Clicked(object sender, EventArgs e)
        {
            string serverdbname = "src_db";
            string serverusername = "sa";
            string serverpassword = "masterfile";
            string sqlconn = $"Data Source={View_IPaddress.Text};Initial Catalog={serverdbname};User ID={serverusername};Password={serverpassword}";
            sqlConnection = new SqlConnection(sqlconn);
            //

            sqlConnection.Open();
            await App.Current.MainPage.DisplayAlert("Alert", "Connection Establish", "Ok");
            sqlConnection.Close();
            try
            {

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);

                throw;

            }
        }

        private async void View_Record_Clicked(object sender, EventArgs e)
        {

            try
            {
                List<MyTableList> myTableLists = new List<MyTableList>();
                sqlConnection.Open();
                string queryString = "Select * from dbo.tbldevice";
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
                        HWdetail = reader["HWdetail"].ToString(),
                        status = reader["status"].ToString(),

                    }
                    );
                }
                reader.Close();
                sqlConnection.Close();

                MyView.ItemsSource = myTableLists;
            }
            catch (Exception ex)
            {
                await App.Current.MainPage.DisplayAlert("Alert", ex.Message, "Ok");
                throw;
            }

        }

    }
}