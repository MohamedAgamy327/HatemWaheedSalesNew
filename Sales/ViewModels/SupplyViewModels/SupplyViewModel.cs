﻿using GalaSoft.MvvmLight;
using GalaSoft.MvvmLight.CommandWpf;
using Sales.Helpers;

namespace Sales.ViewModels.SupplyViewModels
{
    public class SupplyViewModel : ValidatableBindableBase
    {
        public SupplyViewModel()
        {
            _currentViewModel = new SupplyDisplayViewModel();
        }

        private ViewModelBase _currentViewModel;
        public ViewModelBase CurrentViewModel
        {
            get { return _currentViewModel; }
            set { SetProperty(ref _currentViewModel, value); }
        }

        private RelayCommand<string> _navigateToView;
        public RelayCommand<string> NavigateToView
        {
            get
            {
                return _navigateToView
                    ?? (_navigateToView = new RelayCommand<string>(NavigateToViewMethod));
            }
        }
        private void NavigateToViewMethod(string destination)
        {
            switch (destination)
            {
                case "SupplyDisplay":
                    CurrentViewModel = new SupplyDisplayViewModel();
                    break;
                case "SupplyReport":
                    CurrentViewModel = new SupplyReportViewModel();
                    break;
                default:
                    break;
            }
        }
    }
}
