using System;

class Program
{
    static void Main()
    {
        // Max and Min value of int
        Console.WriteLine("int Max: " + int.MaxValue);     // 2147483647
        Console.WriteLine("int Min: " + int.MinValue);     // -2147483648

        // Max and Min value of long
        Console.WriteLine("long Max: " + long.MaxValue);   // 9223372036854775807
        Console.WriteLine("long Min: " + long.MinValue);   // -9223372036854775808

        // Max and Min value of double
        Console.WriteLine("double Max: " + double.MaxValue);   // 1.7976931348623157E+308
        Console.WriteLine("double Min: " + double.MinValue);   // -1.7976931348623157E+308

        // Max and Min length of string
        string emptyString = ""; // Minimum length string
        string maxString = new string('a', int.MaxValue); // (For demo, don't run this - too large)

        Console.WriteLine("string Min Length: " + emptyString.Length);  // 0
        Console.WriteLine("string Max Length: ~2 billion (int.MaxValue)");  // Approximate max length
    }
}

