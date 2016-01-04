//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//05-01

var slider = UISlider()

//05-02

slider.minimumValue =  1.0
slider.maximumValue = 10.0
slider.value = 5.0


slider.setValue(4, animated: true)


//05-03

class Taiyaki {
    var nakami = "あんこ"
    func sayNakami() {
        print("中身は" + nakami + "です")
    }
}

var taiyaki = Taiyaki()
taiyaki.nakami = "クリーム"
taiyaki.sayNakami()
