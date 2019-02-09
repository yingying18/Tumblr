//
//  PhotoDetailViewController.swift
//  Tumblr
//
//  Created by Yingying Chen on 2/6/19.
//  Copyright © 2019 Jasmine Chen. All rights reserved.
//

import UIKit
import AlamofireImage

class PhotoDetailViewController: UIViewController {

    var post: [String: Any]!
    @IBOutlet weak var detail_image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let photos = post["photos"] as? [[String: Any]] {
            // 1.
            let photo = photos[0]
            // 2.
            let originalSize = photo["original_size"] as! [String: Any]
            // 3.
            let urlString = originalSize["url"] as! String
            // 4.
            let url = URL(string: urlString)
            //AlamofireImage method to retrieve the image
            detail_image.af_setImage(withURL: url!)
            
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
