using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.PlatformConfiguration.iOSSpecific;
using Xamarin.Forms.Xaml;
using ZXing.Net.Mobile.Forms;

namespace src_barcodescanner
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class UpdateRecord : ContentPage
	{
        MyTableList myTableList; // Declare a field to hold the object
        public class MyTableList : INotifyPropertyChanged
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

            public event PropertyChangedEventHandler PropertyChanged;

            protected virtual void OnPropertyChanged(string propertyName)
            {
                PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
            }
        }

        SqlConnection sqlConnection;

        public UpdateRecord ()
		{
			InitializeComponent ();
		}

        private async void Update_ConnectServer_Clicked(object sender, EventArgs e)
        {
            string serverdbname = "src_db";
            string serverusername = "sa";
            string serverpassword = "masterfile";
            string sqlconn = $"Data Source={Update_IPaddress.Text};Initial Catalog={serverdbname};User ID={serverusername};Password={serverpassword}";
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

        private async void Update_Scanner_Clicked(object sender, EventArgs e)
        {
            var scan = new ZXingScannerPage();
            await Navigation.PushAsync(scan);
            scan.OnScanResult += (result) =>
            {
                Device.BeginInvokeOnMainThread(async () =>
                {
                    await Navigation.PopAsync();
                    Update_Assettag.Text = result.Text;
                    Update_Sn.Text = result.Text;
                    try
                    {
                        sqlConnection.Open();
                        string queryString = $"Select * from dbo.tbldevice WHERE sn = '{Update_Sn.Text}' OR assettag= '{Update_Assettag.Text}'";
                        SqlCommand command = new SqlCommand(queryString, sqlConnection);
                        SqlDataReader reader = command.ExecuteReader();
                        while (reader.Read())
                        {
                            myTableList = new MyTableList
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
                            };
                            // Set the BindingContext to the created object
                            this.BindingContext = myTableList;
                        }

                        reader.Close();
                        sqlConnection.Close();
                    }
                    catch (Exception ex)
                    {
                        await App.Current.MainPage.DisplayAlert("Alert", ex.Message, "Ok");
                        throw;
                    }
                });
            };
        }

        private async void Update_Record_Clicked(object sender, EventArgs e)
        {
            try
            {

                sqlConnection.Open();

                string assettagTobeUpdated = Update_Assettag.Text;
                string assettypeTobeUpdated = Update_Assettype.Text;
                string devicenameTobeUpdated = Update_Devicename.Text;
                string brandTobeUpdated = Update_Brand.Text;
                string modelTobeUpdated = Update_Model.Text;
                string snTobeUpdated = Update_Sn.Text;
                string departmentTobeUpdated = Update_Department.Text;
                string locationTobeUpdated = Update_Location.Text;
                string deviceuserTobeUpdated = Update_Deviceuser.Text;
                DateTime datepurchasedTobeUpdated = Update_Datepurchased.Date;
                string priceTobeUpdated = Update_Price.Text;
                string HWdetailTobeUpdated = Update_HWdetail.Text;
                string statusTobeUpdated = Update_Status.Text;

                string qerystr = $"UPDATE dbo.tbldevice SET assettag='{assettagTobeUpdated}'," +
                                    $" assettype ='{assettypeTobeUpdated}'," +
                                    $" devicename ='{devicenameTobeUpdated}'," +
                                    $" brand ='{brandTobeUpdated}'," +
                                    $" model ='{modelTobeUpdated}'," +
                                    $" sn ='{snTobeUpdated}'," +
                                    $" department ='{departmentTobeUpdated}'," +
                                    $" location ='{locationTobeUpdated}'," +
                                    $" deviceuser ='{deviceuserTobeUpdated}'," +
                                    $" datepurchased ='{datepurchasedTobeUpdated}'," +
                                    $" price ='{priceTobeUpdated}'," +
                                    $" HWdetail ='{HWdetailTobeUpdated}'," +
                                    $" status ='{statusTobeUpdated}' WHERE sn='{snTobeUpdated}'";

                using (SqlCommand command = new SqlCommand(qerystr, sqlConnection))
                {
                    command.ExecuteNonQuery();
                }
                sqlConnection.Close();  // Close the connection in the finally block
                await App.Current.MainPage.DisplayAlert("Alert", "Congrats you have Successfully Updated the row item", "Ok");
            }
            catch (Exception ex)
            {
                await App.Current.MainPage.DisplayAlert("Alert", ex.Message, "Ok");
            }
        }



    }
}