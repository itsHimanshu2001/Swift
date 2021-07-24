/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project;

/**
 *
 * @author Piyush Jaiswal
 */
public class Start {
    public static void main(String[] args){
        test Test =new test();
        Test.setVisible(true);
        interfac md = new interfac();
       try{ 
           for( int i = 0; i<=100; i++){
               Thread.sleep(40);
               Test.loadingnum.setText(Integer.toString(i)+"%");
               Test.loadingbar.setValue(i);
               if(i==100){
                   Test.setVisible(false);
                   md.setVisible(true);
               }
           }
               
       }
       catch (Exception e) {
           
       }
               
           
    }
    
}
