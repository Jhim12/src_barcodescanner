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
            public DateTime datepurchased { get; set; }
            public float price { get; set; }
            public string HWdetail { get; set; }

            public DateTime systemdate { get; set; }
        }

        SqlConnection sqlConnection;

        public AddRecord ()
		{
			InitializeComponent ();

            // Need this code to number only in the entry price
            Add_Price.TextChanged += Entry_TextChanged;
            //Need this code to number only in the entry price


            // This line of codes is the creadentials and connection string
            string serverdbname = "src_db_testing";
            string servername = "10.0.0.3";
            string serverusername = "sa";
            string serverpassword = "masterfile";

            string sqlconn = $"Data Source={servername};Initial Catalog={serverdbname};User ID={serverusername};Password={serverpassword}";
            sqlConnection = new SqlConnection(sqlconn);
            //This line of codes is the creadentials and connection string

            // This line codes is for asset tag to concatenate the Asset type, Date Today, and New Increment ID
            try
            {
                sqlConnection.Open();

                string query = "SELECT IDENT_CURRENT('tbldevice') + 1  AS NewIncrementValue";
                SqlCommand command = new SqlCommand(query, sqlConnection);
                SqlDataReader reader = command.ExecuteReader();

                if (reader.Read())
                {
                    // Get the current date and format it as ddMMyyyy
                    string currentDate = DateTime.Now.ToString("ddMMyyyy");

                    // Get the new increment value
                    int newIncrementValue = Convert.ToInt32(reader["NewIncrementValue"]);

                    string assetTag = currentDate;

                    Add_Assettype.SelectedIndexChanged += (sender, e) =>
                    {
                        if (Add_Assettype.SelectedIndex >= 0)
                        {
                            string selectedAssetType = Add_Assettype.Items[Add_Assettype.SelectedIndex];

                            // Define a prefix for each asset type
                            string assetTagPrefix = "";

                            // This is Combo box Set the text of the Entry based on the selected asset type
                            switch (selectedAssetType)
                            {
                                case "Desktop":
                                    assetTagPrefix = "PC";
                                    break;
                                case "Printer":
                                    assetTagPrefix = "PRN";
                                    break;
                                case "Access Point":
                                    assetTagPrefix = "NET";
                                    break;
                                case "Switch":
                                    assetTagPrefix = "NET";
                                    break;
                                case "Router":
                                    assetTagPrefix = "NET";
                                    break;
                                case "Hub":
                                    assetTagPrefix = "NET";
                                    break;
                                case "Laptop":
                                    assetTagPrefix = "PC";
                                    break;
                                case "Thin Client":
                                    assetTagPrefix = "PC";
                                    break;
                                case "Monitor":
                                    assetTagPrefix = "PC";
                                    break;
                                case "KB/M":
                                    assetTagPrefix = "PC";
                                    break;
                                case "Multimedia":
                                    assetTagPrefix = "MM";
                                    break;
                                case "All-in-One":
                                    assetTagPrefix = "PC";
                                    break;
                                case "Spare parts":
                                    assetTagPrefix = "SP";
                                    break;
                                case "Camera":
                                    assetTagPrefix = "CAM";
                                    break;
                                default:
                                    assetTagPrefix = "";
                                    break;
                            }
                            // This is Combo box Set the text of the Entry based on the selected asset type

                            // Concatenate the prefix with the current date and increment value
                            Add_Assettag.Text = assetTagPrefix + currentDate + newIncrementValue.ToString();
                        }
                    };

                }
                reader.Close();
            }
            catch (Exception ex)
            {
                // Handle any exceptions that may occur while executing the query
                Console.WriteLine("Error: " + ex.Message);
            }
            finally
            {
                sqlConnection.Close();
            }
            // This line of codes is for asset tag to concatenate the Asset type, Date Today, and New Increment ID


            //END
        }


        // Need this method to type number only in the entry price
        private void Entry_TextChanged(object sender, TextChangedEventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(e.NewTextValue))
            {
                // Check if the input is a valid numeric value
                if (!double.TryParse(e.NewTextValue, out _))
                {
                    // If it's not a valid numeric value, clear the Entry's text
                    Add_Price.Text = "";
                }
            }
        }
        // Need this method to type number only in the entry price


        // This line codes is for Scanner and get the Serial Number of the Asset tag in the barcode
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
        // This line codes is for Scanner and get the Serial Number of the Asset tag in the barcode



        // This line codes is for Add record
        private async void Add_Record_Clicked(object sender, EventArgs e)
        {
            // Declaration for required data and to input it to the database sample is the asset type and date purchased
            string assettag = Add_Assettag.Text;
            string selectedAssetType = Add_Assettype.SelectedItem as string;
            string deviceName = Add_Devicename.Text;
            string brand = Add_Brand.Text;
            string model = Add_Model.Text;
            string sn = Add_Sn.Text;
            string selectedDepartment = Add_Department.SelectedItem as string;

            DateTime selectedDate = Add_Datepurchased.Date;

            // Check if the device name is empty
            if (string.IsNullOrWhiteSpace(assettag))
            {
                DisplayAlert("Validation Error", "Asset Tag is required.", "OK");
                return;
            }

            if (string.IsNullOrWhiteSpace(selectedAssetType))
            {
                DisplayAlert("Validation Error", "Asset Type is required.", "OK");
                return;
            }

            if (string.IsNullOrWhiteSpace(deviceName))
            {
                DisplayAlert("Validation Error", "Device Name is required.", "OK");
                return;
            }

            if (string.IsNullOrWhiteSpace(deviceName))
            {
                DisplayAlert("Validation Error", "Device Name is required.", "OK");
                return;
            }

            if (string.IsNullOrWhiteSpace(brand))
            {
                DisplayAlert("Validation Error", "Brand is required.", "OK");
                return;
            }

            if (string.IsNullOrWhiteSpace(model))
            {
                DisplayAlert("Validation Error", "Model is required.", "OK");
                return;
            }

            if (string.IsNullOrWhiteSpace(sn))
            {
                DisplayAlert("Validation Error", "Model is required.", "OK");
                return;
            }

            // Check if the device name is empty

            // Display a confirmation prompt
            bool result = await DisplayAlert("Confirmation", "Do you want to add the record?", "Yes", "No");

            if (!result)
            {
                // User chose "No," so cancel the operation
                return;
            }

            try
            {
                sqlConnection.Open();
                using (SqlCommand command = new SqlCommand("INSERT INTO dbo.tbldevice (assettag, assettype, devicename, brand, model, sn, department, datepurchased, price, HWdetail, systemdate)" +
                    " VALUES (@assettag, @assettype, @devicename, @brand, @model, @sn, @department, @datepurchased, @price, @HWdetail, @systemdate)", sqlConnection))
                {
                    // Set the parameters
                    command.Parameters.AddWithValue("@assettag", string.IsNullOrEmpty(Add_Assettag.Text) ? DBNull.Value : (object)Add_Assettag.Text);
                    command.Parameters.AddWithValue("@assettype", selectedAssetType);
                    command.Parameters.AddWithValue("@devicename", string.IsNullOrEmpty(Add_Devicename.Text) ? DBNull.Value : (object)Add_Devicename.Text);
                    command.Parameters.AddWithValue("@brand", string.IsNullOrEmpty(Add_Brand.Text) ? DBNull.Value : (object)Add_Brand.Text);
                    command.Parameters.AddWithValue("@model", string.IsNullOrEmpty(Add_Model.Text) ? DBNull.Value : (object)Add_Model.Text);
                    command.Parameters.AddWithValue("@sn", string.IsNullOrEmpty(Add_Sn.Text) ? DBNull.Value : (object)Add_Sn.Text);
                    if (!string.IsNullOrEmpty(selectedDepartment))
                    {
                        command.Parameters.AddWithValue("@department", selectedDepartment);
                    }
                    else
                    {
                        command.Parameters.AddWithValue("@department", DBNull.Value);
                    }

                    // Convert and set the DateTime value with SqlDbType.Date
                    SqlParameter datePurchasedParameter = new SqlParameter("@datepurchased", System.Data.SqlDbType.Date);
                    datePurchasedParameter.Value = selectedDate;
                    command.Parameters.Add(datePurchasedParameter);

                    // Handle the case where Add_Price.Text is empty by setting it to 0 in the database
                    float priceValue;
                    if (float.TryParse(Add_Price.Text, out priceValue))
                    {
                        command.Parameters.AddWithValue("@price", priceValue);
                    }
                    else
                    {
                        command.Parameters.AddWithValue("@price", 0);
                    }

                    // Handle the case where Add_HWdetail.Text is empty by setting it to NULL in the database
                    command.Parameters.AddWithValue("@HWdetail", string.IsNullOrEmpty(Add_HWdetail.Text) ? DBNull.Value : (object)Add_HWdetail.Text);

                    // Convert and set the DateTime value with SqlDbType.Date
                    SqlParameter systemdateParameter = new SqlParameter("@systemdate", System.Data.SqlDbType.Date);
                    systemdateParameter.Value = selectedDate;
                    command.Parameters.Add(systemdateParameter);

                    // Execute the SQL command
                    command.ExecuteNonQuery();
                }
                sqlConnection.Close();
                await App.Current.MainPage.DisplayAlert("Alert", "Congrats you just posted data", "Ok");

                // Clear fields
                Add_Assettag.Text = string.Empty;
                // To set the selected item to "Select asset type" (clear selection)
                Add_Assettype.SelectedIndex = -1;
                Add_Devicename.Text = string.Empty;
                Add_Brand.Text = string.Empty;
                Add_Model.Text = string.Empty;
                Add_Sn.Text = string.Empty;
                Add_Department.SelectedIndex = -1;
                Add_Price.Text = string.Empty;
                Add_HWdetail.Text = string.Empty;
                // Clear fields
                await Navigation.PushAsync(new MainPage());
            }
            catch (Exception ex)
            {
                await App.Current.MainPage.DisplayAlert("Alert", ex.Message, "Ok");
                throw;
            }
        }
        // This line codes is for Add record
        // END
    }
}