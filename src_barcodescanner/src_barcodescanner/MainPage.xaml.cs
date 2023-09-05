using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace src_barcodescanner
{
    public partial class MainPage : ContentPage
    {
        public MainPage()
        {
            InitializeComponent();
        }
        private async void AddRecord_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new AddRecord());
        }

        private async void FindRecord_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new FindRecord());
        }

        private async void UpdateRecord_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new UpdateRecord());

        }
    }
}
