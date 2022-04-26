main(){

    principal:
    for (int i = 0; i < 5; i++) {
        
        print('El valor de i es : $i');
        eldeJ: 
        for (int j = 0; j < 6; j++) {
           print ('El valorde j es: $j');
        
           if (j == 4) 
            break principal;
        }



    }

}