//
//  FotoVC.swift
//  GalleryFotosTwo
//
//  Created by Ваня Науменко on 13.12.22.
//

import UIKit

class FotoVC: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var foto: Photos = Photos()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView.register(UINib(nibName: "ImegaCVCell", bundle: nil), forCellWithReuseIdentifier: "ImegaCVCell")
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
    }
}

extension FotoVC: UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return foto.fotos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImegaCVCell", for: indexPath) as! ImegaCVCell
        let fotos = foto.fotos[indexPath.item]
        cell.setupFoto(foto: fotos)
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width - 10, height: UIScreen.main.bounds.width)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
    }
}
