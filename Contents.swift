import UIKit

//Array Use

var numaralar = [10,20,30]
var meyveler = [String]()

// Data Adding

meyveler.append("Elma") //0
meyveler.append("Muz") // 1.
meyveler.append("Kiraz") // 2.

print(meyveler)

// Data Uptade
meyveler[0] = "Yeni Elma"
print(meyveler)

//Insert

meyveler.insert("portakal", at: 1)
print(meyveler)

//Data Reading

print(meyveler[2])

let m = meyveler[2]
print(m)

print("Boyut : \(meyveler.count)")
print("Boş Kontrol: \(meyveler.isEmpty)")

meyveler.remove(at: 1)
print(meyveler)

meyveler.removeAll()
print(meyveler)

//Nesne Tabanlı

class Ogrenciler{
    
    var no: Int?
    var ad: String?
    var sinif: String?
    
    init(no: Int, ad: String, sinif: String) {
        self.no = no
        self.ad = ad
        self.sinif = sinif
    }
}

var o1 = Ogrenciler(no: 101, ad: " Emirhan", sinif: "9C")
var o2 = Ogrenciler(no: 202, ad: " Beyza", sinif: "10D")
var o3 = Ogrenciler(no: 303, ad: " Selen", sinif: "11B")

var OgrenciListesi = [Ogrenciler]()

OgrenciListesi.append(o1)
OgrenciListesi.append(o2)
OgrenciListesi.append(o3)

for o in OgrenciListesi{
    print("no : \(o.no!) - Ad :\(o.ad!) - Sınıf : \(o.sinif!)")
}

//filtreleme

var f1 = OgrenciListesi.filter({$0.no! > 200 })
print("Filtreleme 1")

for o in f1 {
    print("no: \(o.no!) - Ad : \(o.ad!) - Sınıf : \(o.sinif!)")
}
