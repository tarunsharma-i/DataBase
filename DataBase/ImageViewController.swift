//
//  ImageViewController.swift
//  DataBase
//
//  Created by Tarun Sharma on 27/06/22.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    let imageArray = ["1", "2", "3", "4", "5"]
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func imageSwiped(_ sender: UISwipeGestureRecognizer) {
        if sender.direction == .left {
            imageView.image = UIImage(named : imageArray[counter])
            if counter >= 4 {
            counter += 1
            } else {
                counter = 0
            }
        }
        
        if sender.direction == .right {
            imageView.image = UIImage(named: imageArray[counter])
           
            if counter <= 0 {
                counter -= 1
            } else {
                counter = imageArray.count - 1
            }
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
