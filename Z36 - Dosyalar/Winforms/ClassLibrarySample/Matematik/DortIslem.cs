using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.Json.Serialization;
using System.Threading.Tasks;

namespace Matematik
{
    public class DortIslem
    {
        public int Topla(int a, int b)
        {
            return a + b;
        }

        public int Cikar(int a , int b)
        {
            return a - b;
        }

        public int Carp(int a, int b)
        {
            return a * b;
        }

        public double Bol(int a, int b)
        {
            return a / b;
        }
    }
}
