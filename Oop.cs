using System;

abstract class Kendaraan
{
    public abstract int HitungBiayaSewa(int hari);
}

class Mobil : Kendaraan
{
    private int tarifPerHari = 500000;
    public string Nama {get; set;}
    
    public Mobil(string nama)
    {
        Nama = nama;
    }
    
    public override int HitungBiayaSewa(int hari)
    {
        return hari * tarifPerHari;
    }
}

class Motor : Kendaraan
{
    private int tarifPerHari = 100000;
    public string Nama {get; set;}
    
    public Motor(string nama)
    {
        Nama = nama;
    }
    
    public override int HitungBiayaSewa(int hari)
    {
        return hari * tarifPerHari;
    }
}

class Program
{
    static void Main(string[] args)
    {
        Mobil toyota = new Mobil("Toyota");
        Motor yamaha = new Motor("Yamaha");
        
        int hariSewaMobil = 3;
        int hariSewaMotor = 3;
        
        Console.WriteLine($"Biaya sewa mobil selama {hariSewaMobil} hari: Rp.{toyota.HitungBiayaSewa(hariSewaMobil)}");
        Console.WriteLine($"Biaya sewa motor selama {hariSewaMotor} hari: Rp.{yamaha.HitungBiayaSewa(hariSewaMobil)}");
    }
}