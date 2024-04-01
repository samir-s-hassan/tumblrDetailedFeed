//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Samir Hassan on 4/1/24.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textView: UITextView!
    
    var post: Post!

    override func viewDidLoad() {
        super.viewDidLoad()

        // MARK: - Configure the labels

        // Remove HTM tags from the caption string
        textView.text = post.caption.trimHTMLTags()

        // MARK: - Configure the image views

        if let photo = post.photos.first {
            let url = photo.originalSize.url
            Nuke.loadImage(with: url, into: imageView)
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
