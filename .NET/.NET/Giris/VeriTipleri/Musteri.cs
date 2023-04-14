using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VeriTipleri
{
      /* internal class Musteri
    {
        /* public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        //prob tab tab <3

        //ctor tab tab <3 constructer metod tanımlama */
      


    public class Musteri
    {
        private int _id;
        //constructor overloading
        public Musteri (int id)
        {
            _id = id;
        }
        public string GetName()
        {
            //select*from Musteriler where id=+id;
            Console.WriteLine(_id);
            return "samet";
        }
    }
    
}
