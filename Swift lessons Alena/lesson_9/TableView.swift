//
//  Table.swift
//  Swift lessons Alena
//
//  Created by Anton Klysa on 07.12.2019.
//  Copyright © 2019 Anton Klysa. All rights reserved.
//

import Foundation
import UIKit


class TableNEWNEWViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //MARK: IBOutlet
    
    @IBOutlet weak var tableView: UITableView!
    
    var tableViewData: [Object] = [Object.init(name: "butterfly", imageURLString: "https://helpx.adobe.com/content/dam/help/en/stock/how-to/visual-reverse-image-search/jcr_content/main-pars/image/visual-reverse-image-search-v2_intro.jpg"),
                                   Object.init(name: "river", imageURLString: "https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                                   Object.init(name: "field", imageURLString: "https://www.pythoncircle.com/media/uploads/desktop-wallpaper-change-python-20190823-d0843f2cd287490f8e1eeaa712e0f689.jpeg"),
                                   Object.init(name: "polar light", imageURLString: "https://www.w3schools.com/w3css/img_lights.jpg")]
    
    private var cacheDict: [String: UIImage] = [:]
    
    
    //MARK: lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.estimatedRowHeight = 200
        tableView.rowHeight = UITableView.automaticDimension
        
    }
    
    
    //MARK: UITableViewDelegate
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "SECTION 0"
        }
        return "helloworld"
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        var viewController: UIViewController
        
        if indexPath.row == 1 {
            viewController = storyboard.instantiateViewController(withIdentifier: "convector_vc") as! ConvectorViewController
            navigationController?.present(viewController, animated: true, completion: nil)
        } else {
            viewController = storyboard.instantiateViewController(withIdentifier: "fff123") as! CollectionViewController
            navigationController?.pushViewController(viewController, animated: true)
        }
    
        
    }
    
    
    //MARK: UITableViewDataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 1 {
            return 2
        }
        return tableViewData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: CustomTableViewCell = tableView.dequeueReusableCell(withIdentifier: "test_identifier") as! CustomTableViewCell
 
        let model: Object = tableViewData[indexPath.row]
        cell.cellTitle.text = model.name
        
        if let cachedImage = cacheDict[model.imageURLString] {
            cell.cellImage.image = cachedImage
        } else {
            
            if let url = NSURL(string: model.imageURLString) {
                let request = NSURLRequest(url: url as URL)
                NSURLConnection.sendAsynchronousRequest(request as URLRequest, queue: OperationQueue.main) {
                    (response: URLResponse?, data: Data?, error: Error?) -> Void in
                    if let imageData = data as Data? {
                        DispatchQueue.main.async {
                            cell.cellImage.image = UIImage(data: imageData)
                            self.cacheDict[model.imageURLString] = cell.cellImage.image
                            tableView.reloadRows(at: [indexPath], with: .automatic)
                        }
                    }
                }
            }
        }
        
        return cell
    }
}



//Model View Controller









class Object {
    
    var name: String
    var imageURLString: String
    
    init(name: String, imageURLString: String) {
        self.name = name
        self.imageURLString = imageURLString
    }
}


class CustomTableViewCell: UITableViewCell {
    
    //MARK: IBOutlets
    
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellTitle: UILabel!
}

