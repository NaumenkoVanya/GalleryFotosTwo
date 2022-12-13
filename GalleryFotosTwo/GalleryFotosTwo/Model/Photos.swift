//
//  Photos.swift
//  GalleryFotosTwo
//
//  Created by Ваня Науменко on 13.12.22.
//

import Foundation
import UIKit

struct FotosStruct {
    var name: String
    var price: Float
    var image: UIImage
}

class Photos {
    
    var fotos = [FotosStruct]()
    
    init() {
        setup()
    }
    
    func setup() {
        let foto1 = FotosStruct(name: "foto1", price: 100, image: UIImage(named: "eight")!)
        let foto2 = FotosStruct(name: "foto2", price: 100, image: UIImage(named: "eleven")!)
        let foto3 = FotosStruct(name: "foto3", price: 100, image: UIImage(named: "five")!)
        let foto4 = FotosStruct(name: "foto4", price: 100, image: UIImage(named: "foto")!)
        let foto5 = FotosStruct(name: "foto5", price: 100, image: UIImage(named: "fotoOne")!)
        let foto6 = FotosStruct(name: "foto6", price: 100, image: UIImage(named: "fotoTwo")!)
        let foto7 = FotosStruct(name: "foto7", price: 100, image: UIImage(named: "four")!)
        let foto8 = FotosStruct(name: "foto8", price: 100, image: UIImage(named: "fourteen")!)
        let foto9 = FotosStruct(name: "foto9", price: 100, image: UIImage(named: "nine")!)
        let foto10 = FotosStruct(name: "foto10", price: 100, image: UIImage(named: "seven")!)
        let foto11 = FotosStruct(name: "foto11", price: 100, image: UIImage(named: "six")!)
        let foto12 = FotosStruct(name: "foto12", price: 100, image: UIImage(named: "ten")!)
        let foto13 = FotosStruct(name: "foto13", price: 100, image: UIImage(named: "thirteen")!)
        let foto14 = FotosStruct(name: "foto14", price: 100, image: UIImage(named: "twelve")!)
        self.fotos = [foto1,foto2,foto3,foto4,foto5,foto6,foto7,foto8,foto9,foto10,foto11,foto12,foto13,foto14]
    }
}
