//
//  ViewController.swift
//  CalculateNumbers
//
//  Created by Ekaterina Kozlova on 25.01.2019.
//  Copyright © 2019 Ekaterina Kozlova. All rights reserved.
//

import UIKit

@IBDesignable extension UIButton {
    
    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
}

class ViewController: UIViewController
{

    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        button.layer.cornerRadius = 10
    }


}

