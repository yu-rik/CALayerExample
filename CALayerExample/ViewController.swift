//
//  ViewController.swift
//  CALayerExample
//
//  Created by yurik on 7/31/20.
//  Copyright © 2020 yurik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageVC: UIImageView!{
       //наблюдатель свойства
        didSet{
            imageVC.layer.cornerRadius = 50
            imageVC.layer.masksToBounds = true
        }
    }
    @IBOutlet weak var buttonVC: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func unwindSegueToMainScreen(segue: UIStoryboardSegue){
        
    }


}

