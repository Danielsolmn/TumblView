//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Daniel Woldetsadik on 7/22/25.
//

import UIKit
import NukeExtensions

class DetailViewController: UIViewController {

    
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBOutlet weak var textView: UITextView!
    
    var post: Post!
    override func viewDidLoad() {
        super.viewDidLoad()

        if let firstPhoto = post.photos.first {
            let imageURL = firstPhoto.originalSize.url
            NukeExtensions.loadImage(with: imageURL, into: imageView)
        }

        
        
        
        
        
        let cleanCaption = post.caption.trimHTMLTags()
           textView.text = cleanCaption
        
        
        
        
        
       
        
        
        
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
