using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    public interface ISender
    {
        string From { get; set; }
        string To { get; set; }

        void Send(string message);
    }


    public class EmailSender: ISender
    {
        public string From { get; set; }
        public string To { get; set; }

        public void Send(string message)
        {
            Console.WriteLine("Email gönderildi..");
        }
    }

    public class SmsSender: ISender
    {
        public string From { get; set; }
        public string To { get; set; }

        public void Send(string message)
        {
            Console.WriteLine("SMS gönderildi..");
        }
    }

    public class FaxSender : ISender
    {
        public string From { get; set; }
        public string To { get; set; }
        public string Protocol { get; set; }

        public void Send(string message)
        {
            throw new NotImplementedException();
        }
    }
}
