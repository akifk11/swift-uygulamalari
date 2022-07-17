import UIKit

var greeting = "Hello, playground"

func sayilarcarpim(sayi1 : Int , sayi2 : Int){
    let sonuc = 2 * sayi1 * sayi2
    print(sonuc)
}

sayilarcarpim(sayi1: 2, sayi2: 3)

func hesapla(sayi1:Double,sayi2:Double,islem:String){
    let islem = islem.lowercased()
    var sonuc : Double = 0
    switch islem {
    case "toplama":
        sonuc = sayi1 + sayi2
        print("iki sayi birbiriyle toplandı")
    case "cıkarma":
        sonuc = sayi1 - sayi2
        print("iki sayi birbirinden çıkartıldı")
    case "carpma":
        sonuc = sayi1 * sayi2
        print("iki sayi birbiriyle çarpıldı")
    case "bolme":
        sonuc = sayi1 / sayi2
    default:
        print("islemler gecersiz")
    }
    
    print("yapılan islemin sonucu: \(sonuc)")
}

//hesapla(sayi1: 1, sayi2: 2, islem: "toplama")
hesapla(sayi1: 7, sayi2: 8, islem: "BOLME")

func yasbul(yaslar:[Int]) {
    var minyas : Int = yaslar[0]
    var maxyas : Int = yaslar[0]
    
    for yas in yaslar {
        if yas < minyas {
            minyas = yas
        }
        if yas > maxyas {
            maxyas = yas
        }
    }
    print("en büyük yas : \(maxyas)")
    print("en küçük yas : \(minyas)")
    print("yaslar farkı : \(maxyas-minyas)")
}

yasbul(yaslar: [18,14,27,81,13,99])


func isimtekrar(isimlerim:[String]) {
    
    var s : [String : Int] = [:]
    
    for isim in isimlerim {
        if s[isim] != nil {
            s[isim]!+=1
        } else {
            s[isim] = 1
        }
    }
    for isim in s {
        print("isim : \(isim.key) isim değeri \(isim.value) ")
    }
    
    
}

var isimler : [String] = ["akif","kiraz","bahadır","akif","mehmet","akif","kiraz"]

isimtekrar(isimlerim: isimler)

func enyukseknothesapla(siniftakiler:[String:[Float]]){
    var maxortalama : Float = -1.0
    var maxkisi = ""
    
    for kisi in siniftakiler {
        let vizenotu : Float = kisi.value[0]
        let finalnotu : Float = kisi.value[1]
        let ortalama : Float = 0.4 * vizenotu + 0.6 * finalnotu
        if ortalama > maxortalama {
            maxkisi = kisi.key
            maxortalama = ortalama
        }
      
    }
    let vizenotu = siniftakiler[maxkisi]![0]
    let finalnotu = siniftakiler[maxkisi]![1]
    
    print("""
    en yüksek not alan kisi \(maxkisi)
    vize notu \(vizenotu)
    final notu \(finalnotu)
""")
    
}


var siniftakiler : [String:[Float]]=["akif":[50,70],"bahadır":[80,50],"mehmet":[50,60],"kiraz":[90,80],"yusuf":[80,80]]

enyukseknothesapla(siniftakiler: siniftakiler)


