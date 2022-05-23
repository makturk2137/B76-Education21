public class AudiA4 implements Motor, Klima, Fren {
    
    //interface'leri parent yapmak icin 'implements' keyword kullanilir
    //AudiA4 Class'i, Motor interface'i icindeki tum methodlari override etmek zorundadir.
    //AudiA4 Class'i, Motor interface'i icindeki tum methodlari override etmek zorunda oldugundan
    //method'larin bas kismina 'override' yazmak gerekmez bu yuzden yazmayiniz.
    //'abstract class'larin icinde hem 'abstract' hem de 'concrete' method'lar depolayabilirsiniz.
    //'interface'lerin icinde ise sadece 'abstract' method'lar depolayabilirsiniz. Bu yuzden
    //'abstract class'lara yari abstract manasinda 'semi-abstract' derler, 'interface'lere ise tam abstract manasinda 'fully-abstract' derler.
    
    //Motor interface'inden override edilenler
    public void eco(){
        System.debug('Audi A4 ekonomik motor kullanir...');    
    }    
    public void turbo(){
        System.debug('Audi A4 turbo motor kullanir...');    
    }    
    public void gas(){
        System.debug('Audi A4 sadece benxinli motor kullanir...');    
    }
    
    //Klima interface'inden override edilenler
    public void mevsimsel(){
        System.debug('Audi A4 mevsimsel klima kullanir...');    
    }
    public void digital(){
        System.debug('Audi A4 digital klima kullanir...');    
    }
    
    //Fren interface'inden override edilenler
    public void abs(){
        System.debug('Audi A4 abs fren sistemi kullanir...');    
    }
    public void ars(){
        System.debug('Audi A4 secure fren sistemi kullanir...');    
    }
}