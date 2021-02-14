﻿using GalaSoft.MvvmLight.CommandWpf;
using MahApps.Metro.Controls;
using MahApps.Metro.Controls.Dialogs;
using Sales.Helpers;
using Sales.Models;
using Sales.Services;
using Sales.Views.SpendingViews;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Windows;

namespace Sales.ViewModels.SpendingViewModels
{
    public class SpendingDisplayViewModel : ValidatableBindableBase
    {
        private MetroWindow _currentWindow;
        private readonly SpendingAddDialog _spendingAddDialog;

        List<Spending> spendings;

        private SafeServices _safeServ;
        private SpendingServices _spendingServ;

        private void Load()
        {
            CurrentPage = 1;
            ISFirst = false;
            TotalRecords = spendings.Where(w => w.Statement.Contains(_key)).Count();
            LastPage = (int)Math.Ceiling(Convert.ToDecimal((double)TotalRecords / 17));
            if (_lastPage == 0)
                LastPage = 1;
            if (_lastPage == 1)
                ISLast = false;
            else
                ISLast = true;
            GetCurrentPage();
        }

        public SpendingDisplayViewModel()
        {
            _safeServ = new SafeServices();
            _spendingServ = new SpendingServices();
            _spendingAddDialog = new SpendingAddDialog();

            _key = "";
            _isFocused = true;
            _currentWindow = Application.Current.Windows.OfType<MetroWindow>().LastOrDefault();
            _statementSuggestions = _spendingServ.GetStatementSuggetions();
            spendings = _spendingServ.GetSpendings();
            Load();
        }

        private bool _isFocused;
        public bool IsFocused
        {
            get { return _isFocused; }
            set { SetProperty(ref _isFocused, value); }
        }

        private bool _isFirst;
        public bool ISFirst
        {
            get { return _isFirst; }
            set { SetProperty(ref _isFirst, value); }
        }

        private bool _isLast;
        public bool ISLast
        {
            get { return _isLast; }
            set { SetProperty(ref _isLast, value); }
        }

        private int _currentPage;
        public int CurrentPage
        {
            get { return _currentPage; }
            set { SetProperty(ref _currentPage, value); }
        }

        private int _lastPage;
        public int LastPage
        {
            get { return _lastPage; }
            set { SetProperty(ref _lastPage, value); }
        }

        private int _totalRecords;
        public int TotalRecords
        {
            get { return _totalRecords; }
            set { SetProperty(ref _totalRecords, value); }
        }

        private string _key;
        public string Key
        {
            get { return _key; }
            set
            {
                SetProperty(ref _key, value);
            }
        }

        private Spending _selectedSpending;
        public Spending SelectedSpending
        {
            get { return _selectedSpending; }
            set { SetProperty(ref _selectedSpending, value); }
        }

        private Spending _newSpending;
        public Spending NewSpending
        {
            get { return _newSpending; }
            set { SetProperty(ref _newSpending, value); }
        }

        private List<string> _statementSuggestions;
        public List<string> StatementSuggestions
        {
            get { return _statementSuggestions; }
            set { SetProperty(ref _statementSuggestions, value); }
        }

        private ObservableCollection<Spending> _spendings;
        public ObservableCollection<Spending> Spendings
        {
            get { return _spendings; }
            set { SetProperty(ref _spendings, value); }
        }

        // Display

        private RelayCommand _search;
        public RelayCommand Search
        {
            get
            {
                return _search
                    ?? (_search = new RelayCommand(SearchMethod));
            }
        }
        private void SearchMethod()
        {
            Load();
        }

        private RelayCommand _next;
        public RelayCommand Next
        {
            get
            {
                return _next
                    ?? (_next = new RelayCommand(NextMethod));
            }
        }
        private void NextMethod()
        {
            CurrentPage++;
            ISFirst = true;
            if (_currentPage == _lastPage)
                ISLast = false;
            GetCurrentPage();
        }

        private RelayCommand _previous;
        public RelayCommand Previous
        {
            get
            {
                return _previous
                    ?? (_previous = new RelayCommand(PreviousMethod));
            }
        }
        private void PreviousMethod()
        {
            CurrentPage--;
            ISLast = true;
            if (_currentPage == 1)
                ISFirst = false;
            GetCurrentPage();
        }

        private RelayCommand _delete;
        public RelayCommand Delete
        {
            get
            {
                return _delete
                    ?? (_delete = new RelayCommand(DeleteMethod));
            }
        }
        private async void DeleteMethod()
        {
            MessageDialogResult result = await _currentWindow.ShowMessageAsync("تأكيد الحذف", "هل تـريــد حــذف هـذا البند؟", MessageDialogStyle.AffirmativeAndNegative, new MetroDialogSettings()
            {
                AffirmativeButtonText = "موافق",
                NegativeButtonText = "الغاء",
                DialogMessageFontSize = 25,
                DialogTitleFontSize = 30
            });
            if (result == MessageDialogResult.Affirmative)
            {
                _spendingServ.DeleteSpending(_selectedSpending);
                _safeServ.DeleteSafe(_selectedSpending.RegistrationDate);
                spendings.Remove(_selectedSpending);
                Load();
            }
        }

        // Add

        private RelayCommand _showAdd;
        public RelayCommand ShowAdd
        {
            get
            {
                return _showAdd
                    ?? (_showAdd = new RelayCommand(ShowAddMethod));
            }
        }
        private async void ShowAddMethod()
        {
            NewSpending = new Spending();
            NewSpending.Date = DateTime.Now;
            _spendingAddDialog.DataContext = this;
            await _currentWindow.ShowMetroDialogAsync(_spendingAddDialog);
        }

        private RelayCommand _save;
        public RelayCommand Save
        {
            get
            {
                return _save ?? (_save = new RelayCommand(
                    ExecuteSaveAsync,
                    CanExecuteSave));
            }
        }
        private async void ExecuteSaveAsync()
        {
            if (NewSpending.Statement == null || NewSpending.Amount == null)
                return;
            DateTime dt = DateTime.Now;
            _newSpending.RegistrationDate = dt;
            _newSpending = _spendingServ.AddSpending(_newSpending);
            spendings.Add(_spendingServ.GetLastSpending());
            Safe _safe = new Safe
            {
                Amount = -_newSpending.Amount,
                CanDelete = false,
                Date = _newSpending.Date,
                Statement = _newSpending.Statement,
                RegistrationDate = dt,
                Source = 2
            };
            _safeServ.AddSafe(_safe);
            _statementSuggestions.Add(_newSpending.Statement);
            NewSpending = new Spending();
            NewSpending.Date = DateTime.Now;
            await _currentWindow.ShowMessageAsync("نجاح الإضافة", "تم الإضافة بنجاح", MessageDialogStyle.Affirmative, new MetroDialogSettings()
            {
                AffirmativeButtonText = "موافق",
                DialogMessageFontSize = 25,
                DialogTitleFontSize = 30
            });
        }
        private bool CanExecuteSave()
        {
            return !NewSpending.HasErrors;
        }

        private RelayCommand<string> _closeDialog;
        public RelayCommand<string> CloseDialog
        {
            get
            {
                return _closeDialog
                    ?? (_closeDialog = new RelayCommand<string>(ExecuteCloseDialogAsync));
            }
        }
        private async void ExecuteCloseDialogAsync(string parameter)
        {
            switch (parameter)
            {
                case "Add":
                    await _currentWindow.HideMetroDialogAsync(_spendingAddDialog);
                    Load();
                    break;
                default:
                    break;
            }

        }

        private void GetCurrentPage()
        {
            Spendings = new ObservableCollection<Spending>(spendings.Where(w => w.Statement.Contains(_key)).OrderByDescending(o => o.RegistrationDate).Skip((_currentPage - 1) * 17).Take(17));
        }

    }
}
