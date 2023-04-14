using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Siniflar
{
    public class Order
    {
        public int Id;
        public DateTime date;

        public Order(int id,DateTime date)
        {
            this.Id = id;
            this.date = date;
        }
    }
}
