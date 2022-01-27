*package com.mycompany.app;

/**
 * Hello world! --> modified to Hello from Pipeline to test it
 */
public class App
{

    private final String message = "Hello from Pipeline!";

    public App() {}

    public static void main(String[] args) {
        System.out.println(new App().getMessage());
    }

    private final String getMessage() {
        return message;
    }

}
