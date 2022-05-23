public class MyClass1 {

     //Rasgele bir harf ureten bir fonksiyon olusturun
    public static string rastgeleBirHarfVer(){
        string alfabe='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
        Integer maxIndex = alfabe.length()-1;
        integer rastgeleIndex = integer.valueOf(Math.random()*maxIndex);
        return alfabe.substring(rastgeleIndex,rastgeleIndex+1);
        
    }
}