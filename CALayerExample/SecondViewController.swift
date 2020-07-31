//
//  SecondViewController.swift
//  CALayerExample
//
//  Created by yurik on 7/31/20.
//  Copyright © 2020 yurik. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
   
    @IBOutlet weak var buttonSVC: UIButton!{
        didSet{
            buttonSVC.layer.shadowOffset = CGSize(width: 0, height: 5)
            buttonSVC.layer.shadowOpacity = 0.5
            buttonSVC.layer.shadowRadius = 5
            buttonSVC.layer.shadowColor = UIColor.red.cgColor
            
        }
    }
    @IBOutlet weak var imageSVC: UIImageView!{
        didSet{
            imageSVC.layer.cornerRadius = imageSVC.frame.size.height/2
            imageSVC.layer.masksToBounds = true
            imageSVC.layer.borderColor = UIColor.red.cgColor
            imageSVC.layer.borderWidth = 5
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
