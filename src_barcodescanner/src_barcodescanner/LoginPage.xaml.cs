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
	public partial class LoginPage : ContentPage
	{
		public LoginPage ()
		{
			InitializeComponent ();
		}

        SqlConnection sqlConnection;
        private async void Login_Clicked(object sender, EventArgs e)
        {
            // Sql connection credentials4
            string serverdbname = "src_db_testing";
            string servername = "10.0.0.3";
            string serverusername = "sa";
            string serverpassword = "masterfile";

/*            // This line of codes is the creadentials and connection string
            string serverdbname = "src_db";
            string servername = "10.0.0.144"; //10.0.0.144
            string serverusername = "sa";
            string serverpassword = "masterfile";*/

            string sqlconn = $"Data Source={servername};Initial Catalog={serverdbname};User ID={serverusername};Password={serverpassword}";
            sqlConnection = new SqlConnection(sqlconn);

            //

            if (!string.IsNullOrEmpty(Login_UserName.Text) && !string.IsNullOrEmpty(Login_Password.Text))
            {
                string queryString = "SELECT * FROM dbo.employee WHERE username = @username AND password = @password AND (accounttype = @administrator OR accounttype = @it)";                

                using (SqlConnection sqlConnection = new SqlConnection(sqlconn))
                {
                    sqlConnection.Open();

                    using (SqlCommand command = new SqlCommand(queryString, sqlConnection))
                    {
                        command.Parameters.AddWithValue("@username", Login_UserName.Text);
                        command.Parameters.AddWithValue("@password", Login_Password.Text);
                        command.Parameters.AddWithValue("@administrator", "Administrator");
                        command.Parameters.AddWithValue("@it", "IT"); // Adjust this value as needed
                        SqlDataReader reader = command.ExecuteReader();

                        if (reader.HasRows)
                        {
                            // Authentication successful
                            await Navigation.PushAsync(new MainPage());

                            // Clear the username and password fields
                            Login_UserName.Text = string.Empty;
                            Login_Password.Text = string.Empty;
                        }
                        else
                        {
                            // Authentication failed
                            DisplayAlert("Ops...", "Incorrect Username or Password!", "Ok");
                        }
                    }
                }
            }
            else
            {
                // Handle empty username or password fields
                DisplayAlert("Ops...", "Please enter both username and password!", "Ok");
            }


        }

    }
}