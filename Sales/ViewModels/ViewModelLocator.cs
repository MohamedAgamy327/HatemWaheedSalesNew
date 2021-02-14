﻿using GalaSoft.MvvmLight.Ioc;
using Microsoft.Practices.ServiceLocation;
using Sales.ViewModels.SafeViewModels;
using Sales.ViewModels.StoreViewModels;
using Sales.ViewModels.SpendingViewModels;
using Sales.ViewModels.ClientViewModels;
using Sales.ViewModels.SupplyViewModels;
using Sales.ViewModels.SaleViewModels;

namespace Sales.ViewModels
{
    public class ViewModelLocator
    {
        static ViewModelLocator()
        {
            ServiceLocator.SetLocatorProvider(() => SimpleIoc.Default);

            SimpleIoc.Default.Register<MainViewModel>();
            SimpleIoc.Default.Register<StoreViewModel>();
            SimpleIoc.Default.Register<CategoryViewModel>();
            SimpleIoc.Default.Register<CompanyViewModel>();
            SimpleIoc.Default.Register<StockViewModel>();
            SimpleIoc.Default.Register<CategoryRequiredViewModel>();
            SimpleIoc.Default.Register<SafeViewModel>();
            SimpleIoc.Default.Register<SafeDisplayViewModel>();
            SimpleIoc.Default.Register<SafeReportViewModel>();
            SimpleIoc.Default.Register<SpendingViewModel>();
            SimpleIoc.Default.Register<SpendingDisplayViewModel>();
            SimpleIoc.Default.Register<SpendingReportViewModel>();
            SimpleIoc.Default.Register<ClientViewModel>();
            SimpleIoc.Default.Register<ClientDisplayViewModel>();
            SimpleIoc.Default.Register<ClientAccountReportViewModel>();
            SimpleIoc.Default.Register<ClientAccountDisplayViewModel>();
            SimpleIoc.Default.Register<SupplyAddViewModel>();
            SimpleIoc.Default.Register<SupplyDisplayViewModel>();
            SimpleIoc.Default.Register<SupplyViewModel>();
            SimpleIoc.Default.Register<SaleViewModel>();
            SimpleIoc.Default.Register<SalespersonDisplayViewModel>();
            SimpleIoc.Default.Register<SaleDisplayViewModel>();
            SimpleIoc.Default.Register<SaleAddViewModel>();
            SimpleIoc.Default.Register<SupplyShowViewModel>();
            SimpleIoc.Default.Register<SaleShowViewModel>();
            SimpleIoc.Default.Register<SaleUpdateViewModel>();
            SimpleIoc.Default.Register<SaleUpdateViewModel>();
            SimpleIoc.Default.Register<SupplyUpdateViewModel>();
            SimpleIoc.Default.Register<SupplyReportViewModel>();
            SimpleIoc.Default.Register<SaleReportViewModel>();
        }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Performance",
            "CA1822:MarkMembersAsStatic",
            Justification = "This non-static member is needed for data binding purposes.")]
        public MainViewModel Main
        {
            get
            {
                return ServiceLocator.Current.GetInstance<MainViewModel>();
            }
        }

        public StoreViewModel Store
        {
            get
            {
                return ServiceLocator.Current.GetInstance<StoreViewModel>();
            }
        }

        public CompanyViewModel Company
        {
            get
            {
                return ServiceLocator.Current.GetInstance<CompanyViewModel>();
            }
        }

        public StockViewModel Stock
        {
            get
            {
                return ServiceLocator.Current.GetInstance<StockViewModel>();
            }
        }

        public CategoryViewModel Category
        {
            get
            {
                return ServiceLocator.Current.GetInstance<CategoryViewModel>();
            }
        }

        public CategoryRequiredViewModel RequiredCategory
        {
            get
            {
                return ServiceLocator.Current.GetInstance<CategoryRequiredViewModel>();
            }
        }

        public SafeViewModel Safe
        {
            get
            {
                return ServiceLocator.Current.GetInstance<SafeViewModel>();
            }
        }

        public SafeReportViewModel SafeReport
        {
            get
            {
                return ServiceLocator.Current.GetInstance<SafeReportViewModel>();
            }
        }

        public SafeDisplayViewModel SafeDisplay
        {
            get
            {
                return ServiceLocator.Current.GetInstance<SafeDisplayViewModel>();
            }
        }

        public SpendingViewModel Spending
        {
            get
            {
                return ServiceLocator.Current.GetInstance<SpendingViewModel>();
            }
        }

        public SpendingReportViewModel SpendingReport
        {
            get
            {
                return ServiceLocator.Current.GetInstance<SpendingReportViewModel>();
            }
        }

        public SpendingDisplayViewModel SpendingDisplay
        {
            get
            {
                return ServiceLocator.Current.GetInstance<SpendingDisplayViewModel>();
            }
        }

        public ClientViewModel Client
        {
            get
            {
                return ServiceLocator.Current.GetInstance<ClientViewModel>();
            }
        }

        public ClientDisplayViewModel ClientDisplay
        {
            get
            {
                return ServiceLocator.Current.GetInstance<ClientDisplayViewModel>();
            }
        }

        public ClientAccountDisplayViewModel ClientAccountDisplay
        {
            get
            {
                return ServiceLocator.Current.GetInstance<ClientAccountDisplayViewModel>();
            }
        }

        public ClientAccountReportViewModel ClientAccountReport
        {
            get
            {
                return ServiceLocator.Current.GetInstance<ClientAccountReportViewModel>();
            }
        }

        public SupplyAddViewModel SupplyAdd
        {
            get
            {
                return ServiceLocator.Current.GetInstance<SupplyAddViewModel>();
            }
        }

        public SupplyViewModel Supply
        {
            get
            {
                return ServiceLocator.Current.GetInstance<SupplyViewModel>();
            }
        }

        public SupplyDisplayViewModel SupplyDisplay
        {
            get
            {
                return ServiceLocator.Current.GetInstance<SupplyDisplayViewModel>();
            }
        }

        public SaleViewModel Sale
        {
            get
            {
                return ServiceLocator.Current.GetInstance<SaleViewModel>();
            }
        }

        public SalespersonDisplayViewModel SalespersonDisplay
        {
            get
            {
                return ServiceLocator.Current.GetInstance<SalespersonDisplayViewModel>();
            }
        }

        public SaleDisplayViewModel SaleDisplay
        {
            get
            {
                return ServiceLocator.Current.GetInstance<SaleDisplayViewModel>();
            }
        }

        public SaleAddViewModel SaleAdd
        {
            get
            {
                return ServiceLocator.Current.GetInstance<SaleAddViewModel>();
            }
        }

        public SupplyShowViewModel SupplyShow
        {
            get
            {
                return ServiceLocator.Current.GetInstance<SupplyShowViewModel>();
            }
        }

        public SaleShowViewModel SaleShow
        {
            get
            {
                return ServiceLocator.Current.GetInstance<SaleShowViewModel>();
            }
        }

        public SaleUpdateViewModel SaleUpdate
        {
            get
            {
                return ServiceLocator.Current.GetInstance<SaleUpdateViewModel>();
            }
        }

        public SupplyUpdateViewModel SupplyUpdate
        {
            get
            {
                return ServiceLocator.Current.GetInstance<SupplyUpdateViewModel>();
            }
        }

        public SupplyReportViewModel SupplyReport
        {
            get
            {
                return ServiceLocator.Current.GetInstance<SupplyReportViewModel>();
            }
        }

        public SaleReportViewModel SaleReport
        {
            get
            {
                return ServiceLocator.Current.GetInstance<SaleReportViewModel>();
            }
        }


        public static void Cleanup(string viewModel)
        {
            if (viewModel == "Main")
            {
                SimpleIoc.Default.Unregister<MainViewModel>();

            }
            else if (viewModel == "Store")
            {
                SimpleIoc.Default.Unregister<StoreViewModel>();
                SimpleIoc.Default.Register<StoreViewModel>();
            }
            else if (viewModel == "Category")
            {
                SimpleIoc.Default.Unregister<CategoryViewModel>();
                SimpleIoc.Default.Register<CategoryViewModel>();
            }
            else if (viewModel == "Company")
            {
                SimpleIoc.Default.Unregister<CompanyViewModel>();
                SimpleIoc.Default.Register<CompanyViewModel>();
            }
            else if (viewModel == "Stock")
            {
                SimpleIoc.Default.Unregister<StockViewModel>();
                SimpleIoc.Default.Register<StockViewModel>();
            }
            else if (viewModel == "CategoryRequired")
            {
                SimpleIoc.Default.Unregister<CategoryRequiredViewModel>();
                SimpleIoc.Default.Register<CategoryRequiredViewModel>();
            }
            else if (viewModel == "SafeDisplay")
            {
                SimpleIoc.Default.Unregister<SafeDisplayViewModel>();
                SimpleIoc.Default.Register<SafeDisplayViewModel>();
            }
            else if (viewModel == "Safe")
            {
                SimpleIoc.Default.Unregister<SafeViewModel>();
                SimpleIoc.Default.Register<SafeViewModel>();
            }
            else if (viewModel == "SafeReport")
            {
                SimpleIoc.Default.Unregister<SafeReportViewModel>();
                SimpleIoc.Default.Register<SafeReportViewModel>();
            }
            else if (viewModel == "Spending")
            {
                SimpleIoc.Default.Unregister<SpendingViewModel>();
                SimpleIoc.Default.Register<SpendingViewModel>();
            }
            else if (viewModel == "SpendingReport")
            {
                SimpleIoc.Default.Unregister<SpendingReportViewModel>();
                SimpleIoc.Default.Register<SpendingReportViewModel>();
            }
            else if (viewModel == "SpendingDisplay")
            {
                SimpleIoc.Default.Unregister<SpendingDisplayViewModel>();
                SimpleIoc.Default.Register<SpendingDisplayViewModel>();
            }
            else if (viewModel == "Client")
            {
                SimpleIoc.Default.Unregister<ClientViewModel>();
                SimpleIoc.Default.Register<ClientViewModel>();
            }
            else if (viewModel == "ClientDisplay")
            {
                SimpleIoc.Default.Unregister<ClientDisplayViewModel>();
                SimpleIoc.Default.Register<ClientDisplayViewModel>();
            }
            else if (viewModel == "ClientAccountDisplay")
            {
                SimpleIoc.Default.Unregister<ClientAccountDisplayViewModel>();
                SimpleIoc.Default.Register<ClientAccountDisplayViewModel>();
            }
            else if (viewModel == "ClientAccountReport")
            {
                SimpleIoc.Default.Unregister<ClientAccountReportViewModel>();
                SimpleIoc.Default.Register<ClientAccountReportViewModel>();
            }
            else if (viewModel == "SupplyAdd")
            {
                SimpleIoc.Default.Unregister<SupplyAddViewModel>();
                SimpleIoc.Default.Register<SupplyAddViewModel>();
            }
            else if (viewModel == "SupplyDisplay")
            {
                SimpleIoc.Default.Unregister<SupplyDisplayViewModel>();
                SimpleIoc.Default.Register<SupplyDisplayViewModel>();
            }
            else if (viewModel == "Supply")
            {
                SimpleIoc.Default.Unregister<SupplyViewModel>();
                SimpleIoc.Default.Register<SupplyViewModel>();
            }
            else if (viewModel == "Sale")
            {
                SimpleIoc.Default.Unregister<SaleViewModel>();
                SimpleIoc.Default.Register<SaleViewModel>();
            }
            else if (viewModel == "SalespersonDisplay")
            {
                SimpleIoc.Default.Unregister<SalespersonDisplayViewModel>();
                SimpleIoc.Default.Register<SalespersonDisplayViewModel>();
            }
            else if (viewModel == "SaleDisplay")
            {
                SimpleIoc.Default.Unregister<SaleDisplayViewModel>();
                SimpleIoc.Default.Register<SaleDisplayViewModel>();
            }
            else if (viewModel == "SaleAdd")
            {
                SimpleIoc.Default.Unregister<SaleAddViewModel>();
                SimpleIoc.Default.Register<SaleAddViewModel>();
            }
            else if (viewModel == "SupplyShow")
            {
                SimpleIoc.Default.Unregister<SupplyShowViewModel>();
                SimpleIoc.Default.Register<SupplyShowViewModel>();
            }
            else if (viewModel == "SaleShow")
            {
                SimpleIoc.Default.Unregister<SaleShowViewModel>();
                SimpleIoc.Default.Register<SaleShowViewModel>();
            }
            else if (viewModel == "SaleUpdate")
            {
                SimpleIoc.Default.Unregister<SaleUpdateViewModel>();
                SimpleIoc.Default.Register<SaleUpdateViewModel>();
            }
            else if (viewModel == "SupplyUpdate")
            {
                SimpleIoc.Default.Unregister<SupplyUpdateViewModel>();
                SimpleIoc.Default.Register<SupplyUpdateViewModel>();
            }
            else if (viewModel == "SupplyReport")
            {
                SimpleIoc.Default.Unregister<SupplyReportViewModel>();
                SimpleIoc.Default.Register<SupplyReportViewModel>();
            }
            else if (viewModel == "SaleReport")
            {
                SimpleIoc.Default.Unregister<SaleReportViewModel>();
                SimpleIoc.Default.Register<SaleReportViewModel>();
            }
        }
    }
}