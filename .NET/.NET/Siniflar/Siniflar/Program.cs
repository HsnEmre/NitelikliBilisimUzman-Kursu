//customer sınıfı oluştur
//order sınıfı oluştur
//1 customerın 1den fazlar orderı olabileceğine imkan sağlayan ortamı oluştur


using Siniflar;

Customer customer = new Customer(7, "farecuval");
Order order = new Order(8, DateTime.Now);



customer.Orders.Add(order);

Console.WriteLine(customer.Name);