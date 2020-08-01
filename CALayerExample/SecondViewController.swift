//
//  SecondViewController.swift
//  CALayerExample
//
//  Created by yurik on 7/31/20.
//  Copyright © 2020 yurik. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var gradientLayer: CAGradientLayer!{
        didSet{
        //координаты местоположения градиента
            gradientLayer.startPoint = CGPoint(x: 0, y: 1)
            gradientLayer.endPoint = CGPoint(x: 1, y: 1)
            //цвета градиента
            gradientLayer.colors = [UIColor.yellow.cgColor, UIColor.red.cgColor, UIColor.orange.cgColor]
            gradientLayer.locations = [0.1, 0.2, 0.8]
         }
    }
    
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
    
    //метод для праильного отображения градиента при разной ориентации
    override func viewDidLayoutSubviews() {
        gradientLayer.frame = CGRect(x: 0, y: 0, width: self.view.bounds.size.width, height: self.view.bounds.size.height)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//инициализация gradientLayer
        gradientLayer = CAGradientLayer()
        //добавляем gradientLayer в качестве подслоя SecondViewController
        view.layer.insertSublayer(gradientLayer, at: 0)
        
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
