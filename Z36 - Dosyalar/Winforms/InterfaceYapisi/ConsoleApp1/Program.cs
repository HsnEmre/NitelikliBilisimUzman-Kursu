namespace ConsoleApp1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //EmailSender emailSender = new EmailSender();
            //emailSender.From = "abc@gmail.com";
            //emailSender.To = "abc@hotmail.com";
            //emailSender.Send("bu bir test mesajıdır..");

            //Person calisan1 = new Employee();
            //Person mudur1 = new Manager();

            IEat calisan1 = new Employee();
            IEat mudur1 = new Manager();
            
            //Employee calisan1 = new Employee();
            //Manager mudur1 = new Manager();
            //Robot robot = new Robot();

            DoEat(calisan1);
            DoEat(mudur1);
        }

        public static void DoEat(IEat entity)
        {
            entity.Eat();
        }
    }
}