//
//  CollectionView.swift
//  Swift lessons Alena
//
//  Created by Anton Klysa on 08.12.2019.
//  Copyright © 2019 Anton Klysa. All rights reserved.
//

import Foundation
import UIKit

class CollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    
    //MARK: IBOutlet
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    //MARK: props
    
    private let itemsPerRow: CGFloat = 2
    
    private let sectionInsets = UIEdgeInsets(top: 20.0,
                                             left: 10.0,
                                             bottom: 20.0,
                                             right: 10.0)
    
    private var collectionViewData: [Object] = [Object.init(name: "butterfly", imageURLString: "https://helpx.adobe.com/content/dam/help/en/stock/how-to/visual-reverse-image-search/jcr_content/main-pars/image/visual-reverse-image-search-v2_intro.jpg"),
    Object.init(name: "river", imageURLString: "https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
    Object.init(name: "field", imageURLString: "https://www.pythoncircle.com/media/uploads/desktop-wallpaper-change-python-20190823-d0843f2cd287490f8e1eeaa712e0f689.jpeg"),
    Object.init(name: "polar light", imageURLString: "https://www.w3schools.com/w3css/img_lights.jpg")]
    
    private var cacheDict: [String: UIImage] = [:]
    
    
    //MARK: lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    
    //MARK: UICollectionViewDelegateFlowLayout
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let paddingSpace = sectionInsets.left * (itemsPerRow + 1)
        let availableWidth = view.frame.width - paddingSpace
        let widthPerItem = availableWidth / itemsPerRow
        
        return CGSize(width: widthPerItem, height: widthPerItem)
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
      return sectionInsets
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
      return sectionInsets.left
    }
    
    
    //MARK: UICollectionViewDelegate
    
    
    //MARK: UICollectionViewDataSource
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collectionViewData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: CustomCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "helloworld", for: indexPath) as! CustomCollectionViewCell
        
        let model: Object = collectionViewData[indexPath.row]
        cell.cellTitle.text = model.name
        
        if let url = NSURL(string: model.imageURLString) {
            let request = NSURLRequest(url: url as URL)
            NSURLConnection.sendAsynchronousRequest(request as URLRequest, queue: OperationQueue.main) {
                (response: URLResponse?, data: Data?, error: Error?) -> Void in
                if let imageData = data as Data? {
                    DispatchQueue.main.async {
                        cell.cellImage.image = UIImage(data: imageData)
                    }
                }
            }
        }
        return cell
    }
}

class CustomCollectionViewCell: UICollectionViewCell {
    
    //MARK: IBOutlets
    
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellTitle: UILabel!
}
