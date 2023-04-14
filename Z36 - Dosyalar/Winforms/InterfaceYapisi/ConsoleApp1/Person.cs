using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    public interface ICheck
    {
        void Check();
    }

    public interface ICar
    {
        string CarPlate { get; set; }
    }

    public interface IEat
    {
        void Eat();
    }

    public interface IWork
    {
        void Work();
    }



    public abstract class Person : IWork, IEat
    {
        public string Name { get; set; }
        public string Surname { get; set; }

        public void Work()
        {

        }

        public void Eat()
        {

        }
    }

    public class Employee : Person
    {

    }

    public class Manager : Person, ICheck, ICar
    {
        public string CarPlate { get; set; }

        public void Check()
        {

        }

        public void Planning()
        {

        }
    }

    public class Coordinator : Person, ICheck, ICar
    {
        public string CarPlate { get; set; }

        public void Check()
        {
            throw new NotImplementedException();
        }
    }

    public class Robot : IWork
    {
        public void Work()
        {
            throw new NotImplementedException();
        }
    }
}
