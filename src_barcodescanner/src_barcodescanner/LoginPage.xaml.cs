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
            // Sql connection credentials

            string serverdbname = "src_db";
            string servername = "10.0.0.144";
            string serverusername = "sa";
            string serverpassword = "masterfile";

            string sqlconn = $"Data Source={servername};Initial Catalog={serverdbname};User ID={serverusername};Password={serverpassword}";
            sqlConnection = new SqlConnection(sqlconn);

            //

            if (!string.IsNullOrEmpty(Login_UserName.Text) && !string.IsNullOrEmpty(Login_Password.Text))
            {
                string queryString = "SELECT * FROM dbo.tblaccountcaps WHERE Username = @Username AND Password = @Password";

                using (SqlConnection sqlConnection = new SqlConnection(sqlconn))
                {
                    sqlConnection.Open();

                    using (SqlCommand command = new SqlCommand(queryString, sqlConnection))
                    {
                        command.Parameters.AddWithValue("@Username", Login_UserName.Text);
                        command.Parameters.AddWithValue("@Password", Login_Password.Text);

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