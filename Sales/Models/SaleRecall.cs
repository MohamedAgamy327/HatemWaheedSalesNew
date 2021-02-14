﻿using Sales.Helpers;
using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Sales.Models
{
    public class SaleRecall : ValidatableBindableBase
    {
        private DateTime _registrationDate;
        [Key]
        public DateTime RegistrationDate
        {
            get { return _registrationDate; }
            set { SetProperty(ref _registrationDate, value); }
        }

        private DateTime _date;
        [Column(TypeName = "Date")]
        public DateTime Date
        {
            get { return _date; }
            set { SetProperty(ref _date, value); }
        }

        private int _categoryID;
        public int CategoryID
        {
            get { return _categoryID; }
            set { SetProperty(ref _categoryID, value); }
        }

        private int _saleID;
        public int SaleID
        {
            get { return _saleID; }
            set { SetProperty(ref _saleID, value); }
        }

        private decimal? _qty;
        public decimal? Qty
        {
            get { return _qty; }
            set { SetProperty(ref _qty, value); }
        }

        private decimal? _cost;
        public decimal? Cost
        {
            get { return _cost; }
            set { SetProperty(ref _cost, value); }
        }

        private decimal? _costTolal;
        public decimal? CostTotal
        {
            get { return _costTolal ; }
            set { SetProperty(ref _costTolal, value); }
        }

        private decimal? _price;
        public decimal? Price
        {
            get { return _price; }
            set { SetProperty(ref _price, value); }
        }

        private decimal? _priceTotal;
        public decimal? PriceTotal
        {
            get { return _priceTotal; }
            set { SetProperty(ref _priceTotal, value); }
        }

        public virtual Sale Sale { get; set; }
        public virtual Category Category { get; set; }
    }
    public class SaleRecallVM : ValidatableBindableBase
    {
        private DateTime _registrationDate;
        public DateTime RegistrationDate
        {
            get { return _registrationDate; }
            set { SetProperty(ref _registrationDate, value); }
        }

        private DateTime _date;
        [Column(TypeName = "Date")]
        public DateTime Date
        {
            get { return _date; }
            set { SetProperty(ref _date, value); }
        }

        private int _categoryID;
        public int CategoryID
        {
            get { return _categoryID; }
            set { SetProperty(ref _categoryID, value); }
        }

        private string _category;
        public string Category
        {
            get { return _category; }
            set { SetProperty(ref _category, value); }
        }

        private int _saleID;
        public int SaleID
        {
            get { return _saleID; }
            set { SetProperty(ref _saleID, value); }
        }

        private decimal? _qty;
        [Required(ErrorMessage = "الكمية مطلوبة")]
        public decimal? Qty
        {
            get { return _qty; }
            set { SetProperty(ref _qty, value); }
        }

        private decimal? _cost;
        public decimal? Cost
        {
            get { return _cost; }
            set { SetProperty(ref _cost, value); }
        }

        private decimal? _costTolal;
        public decimal? CostTotal
        {
            get { return _costTolal = Cost * Qty; }
            set { SetProperty(ref _costTolal, value); }
        }

        private decimal? _price;
        [Required]
        public decimal? Price
        {
            get { return _price; }
            set { SetProperty(ref _price, value); }
        }

        private decimal? _priceTotal;
        public decimal? PriceTotal
        {
            get { return _priceTotal = Price * Qty; }
            set { SetProperty(ref _priceTotal, value); }
        }

    }
}
