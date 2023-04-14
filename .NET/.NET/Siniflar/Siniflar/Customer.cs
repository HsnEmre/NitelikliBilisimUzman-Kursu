using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Siniflar
{
    public class Customer
    {
        public int Id;
        public string Name;
        public List<Order> Orders=new List<Order>(); //order ve cust field ediyoruz

       
        public Customer(int id)
        {
            Id = id;
        }
        public Customer(int id, string name)
        {
            Id=id;
            Name = name;
        }
    }
}
