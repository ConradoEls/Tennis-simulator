package com.example.duxtennis.utils;

import java.util.InputMismatchException;
import java.util.Scanner;

public class ScannerData {

    private static Scanner scan;

    public ScannerData() {
        scan = new Scanner(System.in);
    }

        public String sentence(String sentence){
            String response="";

            while (response.isEmpty() || !Character.isLetter(response.charAt(0))){
                System.out.print(sentence);
                response= scan.nextLine();
            }
            return response;
        }
        public Integer set(String sentence){
            int response = 0;

            while (response != 3 && response != 5){
                System.out.print(sentence);
                try {
                    response = scan.nextInt();
                }catch (InputMismatchException e){
                    scan.nextLine();
                    System.out.println("Se ha ingresado un tipo de dato erroneo");
                }
            }
            return response;
        }
        public Integer prob(String sentence){
            int response = 0;

            while (response < 1 || response > 100) {
            System.out.print(sentence);
                try {
                    response = scan.nextInt();
                }catch (InputMismatchException e){
                    scan.nextLine();
                    System.out.println("Se ha ingresado un tipo de dato erroneo");
                }
            }
            return response;
        }

        public void closeScan(){
            scan.close();
        }
        }

