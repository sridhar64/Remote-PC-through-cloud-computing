/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package main;

import java.util.Date;


/**
 *
 * @author Kadiyala
 */
public class Log {
    public static void log(String s)
    {
        Date d=new Date();
        System.out.println(d.toString()+" -> "+s);
    }
}
