Comparison of elements: 
using System;

class Program
{
    static void Main(string[] args)
    {
        int a = 5;
        int b = 10;

        // Comparing two integers
        if (a > b)
        {
            Console.WriteLine("a is greater than b");
        }
        else if (a < b)
        {
            Console.WriteLine("a is less than b");
        }
        else
        {
            Console.WriteLine("a is equal to b");
        }

        // Comparing strings
        string str1 = "hello";
        string str2 = "world";

        int strComparison = string.Compare(str1, str2);

        if (strComparison == 0)
        {
            Console.WriteLine("Strings are equal");
        }
        else if (strComparison < 0)
        {
            Console.WriteLine("str1 is less than str2");
        }
        else
        {
            Console.WriteLine("str1 is greater than str2");
        }

        Console.ReadLine();
    }
}

To check if number is pos or neg:
using System;

class Program
{
    static void Main(string[] args)
    {
        int number = 5; // Change this to any number you want to check

        if (number > 0)
        {
            Console.WriteLine("The number is positive.");
        }
        else if (number < 0)
        {
            Console.WriteLine("The number is negative.");
        }
        else
        {
            Console.WriteLine("The number is zero.");
        }
    }
}

Grades:
using System;

class Program
{
    static void Main()
    {
        Console.WriteLine("Enter the score: ");
        int score = int.Parse(Console.ReadLine());
        string grade;

        switch (score)
        {
            case int n when (n >= 90):
                grade = "A";
                break;
            case int n when (n >= 80):
                grade = "B";
                break;
            case int n when (n >= 70):
                grade = "C";
                break;
            case int n when (n >= 60):
                grade = "D";
                break;
            default:
                grade = "F";
                break;
        }

        Console.WriteLine($"The grade is: {grade}");
    }
}

Rock, paper, scissors:
using System;

namespace RockPaperScissors
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Welcome to Rock, Paper, Scissors!");
            string[] choices = { "rock", "paper", "scissors" };
            Random random = new Random();

            while (true)
            {
                Console.Write("\nEnter your choice (rock, paper, scissors or quit to stop): ");
                string playerChoice = Console.ReadLine().ToLower();

                if (playerChoice == "quit")
                {
                    Console.WriteLine("Thanks for playing!");
                    break;
                }

                if (!Array.Exists(choices, choice => choice == playerChoice))
                {
                    Console.WriteLine("Invalid choice, please try again.");
                    continue;
                }

                int computerChoiceIndex = random.Next(choices.Length);
                string computerChoice = choices[computerChoiceIndex];

                Console.WriteLine($"Computer chose: {computerChoice}");

                DetermineWinner(playerChoice, computerChoice);
            }
        }

        static void DetermineWinner(string playerChoice, string computerChoice)
        {
            if (playerChoice == computerChoice)
            {
                Console.WriteLine("It's a tie!");
            }
            else if ((playerChoice == "rock" && computerChoice == "scissors") ||
                     (playerChoice == "scissors" && computerChoice == "paper") ||
                     (playerChoice == "paper" && computerChoice == "rock"))
            {
                Console.WriteLine("You win!");
            }
            else
            {
                Console.WriteLine("Computer wins!");
            }
        }
    }
}

