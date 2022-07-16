import UIKit

var greeting = "Hello, playground"

var kisiler : [String] = ["akif","kiraz","mehmet","esra","mercan","yusuf","samet","şeyma"]
var yaslar : [Int] = [20,21,22,24,25,18,17,22]
var medeniHali : [Bool] = [true,true,true,false,false,false,false,true]

for (i,kisi) in kisiler.enumerated() {
    print("\(i+1). kişi adı:\(kisiler[i]) medeneni hali \(medeniHali[i] ? "Evli" : "Bekar")   \(kisi)")
}

var sayilar : [Int] = [1,2,3,4,7,8,9,11,14,17]
var teksayilar = [Int]()
var ciftsayilar = [Int]()

for sayi in sayilar {
    
    if sayi % 2 == 0 {
        ciftsayilar.append(sayi)
    } else {
        teksayilar.append(sayi)
    }
}

print(ciftsayilar)
print(teksayilar)

ciftsayilar += [10,20,30]

ciftsayilar.swapAt(0, ciftsayilar.count-1)

var gerikalanciftsayilar = ciftsayilar.dropFirst(2)

var ilkucdeger = ciftsayilar[0...2]

var ilucKisi = kisiler.prefix(2)

print(kisiler.prefix(while: {$0.contains("a")}))

// dictionary sözlükler

var numbers = [String : Int]()

numbers["bir"] = 1
numbers["iki"] = 2
numbers["uc"] = 3
numbers["dort"] = 4
 
print(numbers["bir"] ?? "böyle bir sayı yok")

for (key,value) in numbers {
    print("anahtar: \(key) ... değer: \(value) ")
}

let anahatarlar1 = numbers.keys

for key in anahatarlar1 {
    print(key)
}

let degerler1 = numbers.values

for key in degerler1 {
    print(key)
}

var kisibilgiler = [String : Any]()
kisibilgiler["adi"] = "yasar"
kisibilgiler["soyadi"] = "kemal"
kisibilgiler["yas"] = 18
kisibilgiler["medeni durumu"] = true

for (key,value) in kisibilgiler {
    print("\(key) : \(value)")
}

var baskentler = ["türkiye" : "ankara",
                  "almanya" : "berlin",
                  "amerika" : "newyork"]

var plakakod = ["istanbul" : 34 , "ankara" : 06, "izmir" :35]

var notlar = [String : Int]()
print(notlar.count)

notlar["ahmet"] = 45
notlar["ali"] = 59
notlar["sibel"] = 70
print(notlar)

notlar.updateValue(80, forKey: "ahmet")
print(notlar)
notlar.removeValue(forKey: "sibel")
print(notlar)
notlar["ali"]=nil
print(notlar)

var dillerdizi = [String]()
dillerdizi.append("Türkçe")
dillerdizi.append("ingilizce")
dillerdizi.append("almanca")
print(dillerdizi)
dillerdizi.append("Türkçe")
print("diller dizide tane eleman var: \(dillerdizi.count)")

for dil in dillerdizi {
    print(dil)
}

var dillerkume = Set<String>()
dillerkume.insert("türkçe")
dillerkume.insert("ingilizce")
dillerkume.insert("almanca")
dillerkume.insert("fransızca")

print("diller kümede tane eleman var : \(dillerkume.count)")
dillerkume.insert("almanca")
print("diller kümede tane eleman var : \(dillerkume.count)")

let (eklenmesonuc,eklenendeger) = dillerkume.insert("arapça")

if eklenmesonuc {
    print("değer başarıyla eklendi")
} else {
    print("değer eklenemedi")
}

//let dillersilme = dillerkume.remove("almanca") ?? "böyle bir dil olmadığı için silme işlemi başarızsız"
//print(dillersilme)
//let dillersilme = dillerkume.remove("almanca1") ?? "böyle bir dil olmadığı için silme işlemi başarızsız"
//print(dillersilme)

var aranandil = "türkçe1"
if dillerkume.contains(aranandil) {
    print("aranan dil mevcut")
} else {
    print("aranan dil mevcut değil")
}

var numbers1 : Set<Int> = [1,2,3,4,5,6]
var numbers2 : Set<Int> = [4,5,6,7,8,9]
var numbers3 : Set<Int> = [4,5,99]
var numbers4 : Set<Int> = [99,100,101]
var degerler = [1,2,3,4,5]

let kesisim = numbers1.intersection(numbers2)
print(kesisim)

let k1 : Set = [1,2,3]
let k2 : Set = [4,5,6]
