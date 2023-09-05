using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using ZXing.Net.Mobile.Forms;

namespace src_barcodescanner
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class AddRecord : ContentPage
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

        public AddRecord ()
		{
			InitializeComponent ();
		}

        private async void Add_ConnectServer_Clicked(object sender, EventArgs e)
        {
            //
            string serverdbname = "src_db";
            string serverusername = "sa";
            string serverpassword = "masterfile";
            string sqlconn = $"Data Source={Add_IPaddress.Text};Initial Catalog={serverdbname};User ID={serverusername};Password={serverpassword}";
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

        private async void Add_Scanner_Clicked(object sender, EventArgs e)
        {


            var scan = new ZXingScannerPage();
            await Navigation.PushAsync(scan);
            scan.OnScanResult += (result) =>
            {
                Device.BeginInvokeOnMainThread(async () =>
                {
                    await Navigation.PopAsync();
                    Add_Sn.Text = result.Text;
                });
            };


        }

        private async void Add_Record_Clicked(object sender, EventArgs e)
        {
            DateTime selectedDate = Add_Datepurchased.Date;
            try
            {

                sqlConnection.Open();
                using (SqlCommand command = new SqlCommand("INSERT INTO dbo.tbldevice (assettag, assettype, devicename, brand, model, sn, department, location, deviceuser, datepurchased, price, HWdetail, status)" +
                    " VALUES (@assettag, @assettype, @devicename, @brand, @model, @sn, @department, @location, @deviceuser, @datepurchased, @price, @HWdetail, @status)", sqlConnection))
                {
                    command.Parameters.AddWithValue("@assettag", Add_Assettag.Text);
                    command.Parameters.AddWithValue("@assettype", Add_Assettype.Text);
                    command.Parameters.AddWithValue("@devicename", Add_Devicename.Text);
                    command.Parameters.AddWithValue("@brand", Add_Brand.Text);
                    command.Parameters.AddWithValue("@model", Add_Model.Text);
                    command.Parameters.AddWithValue("@sn", Add_Sn.Text);
                    command.Parameters.AddWithValue("@department", Add_Department.Text);
                    command.Parameters.AddWithValue("@location", Add_Location.Text);
                    command.Parameters.AddWithValue("@deviceuser", Add_Deviceuser.Text);

                    // Convert and set the DateTime value with SqlDbType.Date
                    SqlParameter datePurchasedParameter = new SqlParameter("@datepurchased", System.Data.SqlDbType.Date);
                    datePurchasedParameter.Value = selectedDate;
                    command.Parameters.Add(datePurchasedParameter); // Add the parameter to the command's Parameters collection

                    command.Parameters.AddWithValue("@price", Add_Price.Text);
                    command.Parameters.AddWithValue("@HWdetail", Add_HWdetail.Text);
                    command.Parameters.AddWithValue("@status", Add_Status.Text);
                    command.ExecuteNonQuery();

                }
                sqlConnection.Close();
                await App.Current.MainPage.DisplayAlert("Alert", "Congrats you just posted data", "Ok");


            }
            catch (Exception ex)
            {
                await App.Current.MainPage.DisplayAlert("Alert", ex.Message, "Ok");
                throw;
            }
        }

    }
}