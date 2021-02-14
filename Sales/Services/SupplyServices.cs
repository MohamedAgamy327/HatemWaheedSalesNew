﻿using Sales.Models;
using Sales.ViewModels;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;

namespace Sales.Services
{
    public class SupplyServices
    {
        public List<Supply> GetSupplies()
        {
            using (SalesDB db = new SalesDB())
            {
                return db.Supplies.Where(w => w.RegistrationDate.Year == MainViewModel.Year).Include(i => i.Client).OrderByDescending(o => o.RegistrationDate).ToList();
            }
        }

        public bool IsExistInRecalls(int id)
        {
            using (SalesDB db = new SalesDB())
            {
                return db.SuppliesRecalls.Any(s => s.SupplyID == id);
            }
        }

        public bool IsLastSupply(int id)
        {
            using (SalesDB db = new SalesDB())
            {
                int clientID = db.Supplies.FirstOrDefault(d => d.ID == id).ClientID;
                return id == db.Supplies.Where(s => s.ClientID == clientID).OrderByDescending(d => d.RegistrationDate).FirstOrDefault().ID;
            }
        }


        public void AddSupply(Supply supply)
        {
            using (SalesDB db = new SalesDB())
            {
                db.Supplies.Add(supply);
                db.SaveChanges();
            }
        }

        public void UpdateSupply(Supply supply)
        {
            using (SalesDB db = new SalesDB())
            {
                db.Entry(supply).State = EntityState.Modified;
                db.SaveChanges();
            }
        }

        public void DeleteSupply(Supply supply)
        {
            using (SalesDB db = new SalesDB())
            {
                db.Supplies.Attach(supply);
                db.Supplies.Remove(supply);
                db.SaveChanges();
            }
        }

        public int GetLastSupplyID()
        {
            using (SalesDB db = new SalesDB())
            {
                return db.Supplies.AsEnumerable().LastOrDefault().ID;
            }
        }

        public int GetSuppliesNumer(string key, DateTime dtFrom, DateTime dtTo)
        {
            using (SalesDB db = new SalesDB())
            {
                return db.Supplies.Include(i => i.Client).Where(w => (w.ID.ToString() + w.Client.Name).Contains(key) && w.Date >= dtFrom && w.Date <= dtTo).Count();
            }
        }

        public decimal? GetSuppliesCost(string key, DateTime dtFrom, DateTime dtTo)
        {
            using (SalesDB db = new SalesDB())
            {
                return db.Supplies.Include(i => i.Client).Where(w => w.Client.Name.Contains(key) && w.Date >= dtFrom && w.Date <= dtTo).Sum(s => s.Cost);
            }
        }

        public Supply GetSupply(int id)
        {
            using (SalesDB db = new SalesDB())
            {
                return db.Supplies.Include(i => i.Client).SingleOrDefault(s => s.ID == id);
            }
        }

        public List<Supply> SearchSupplies(string key, int page, DateTime dtFrom, DateTime dtTo)
        {
            using (SalesDB db = new SalesDB())
            {
                return db.Supplies.Include(i => i.Client).Where(w => (w.ID.ToString() + w.Client.Name).Contains(key) && w.Date >= dtFrom && w.Date <= dtTo).OrderByDescending(o => o.RegistrationDate).Skip((page - 1) * 17).Take(17).ToList();
            }
        }

        //public List<Supply> SearchSupplies(string key, int page)
        //{
        //    using (SalesDB db = new SalesDB())
        //    {
        //        return db.Supplies.Include(i => i.Client).Where(w => (w.ID.ToString() + w.Client.Name).Contains(key)).OrderByDescending(o => o.RegistrationDate).Skip((page - 1) * 17).Take(17).Include(i => i.SupplyRecalls).ToList();
        //    }
        //}


        //public int GetSuppliesNumer(string key)
        //{
        //    using (SalesDB db = new SalesDB())
        //    {
        //        return db.Supplies.Include(i => i.Client).Where(w => (w.ID.ToString() + w.Client.Name).Contains(key)).Count();
        //    }
        //}

    }
}
