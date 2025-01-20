package edu.cmu.cs.db.calcite_app.app;

public class App
{
    public static void main(String[] args) throws Exception
    {
        if (args.length == 0) {
            System.out.println("Usage: java -jar App.jar <arg1> <arg2>");
            return;
        }

        // Feel free to modify this to take as many or as few arguments as you want.
        System.out.println("Running the app!");
        String arg1 = args[0];
        System.out.println("\tArg1: " + arg1);
        String arg2 = args[1];
        System.out.println("\tArg2: " + arg2);
        
        // Note: in practice, you would probably use org.apache.calcite.tools.Frameworks.
        // That package provides simple defaults that make it easier to configure Calcite.
        // But there's a lot of magic happening there; since this is an educational project,
        // we guide you towards the explicit method in the writeup.
    }
}
