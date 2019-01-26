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
        generateExample()
    }

    func generateExample() -> String
    {
        let result: String
        var firstNum, secondNum, sign: Int
        sign = Int.random(in: 0...1)
        if sign == 1
        {
            //сложение
            firstNum = Int.random(in: 0...100)
            secondNum = Int.random(in: 0...100)
            result = String(firstNum) + " + " + String(secondNum)
        }
        else
        {
            //вычитание
            firstNum = Int.random(in: 0...100)
            secondNum = Int.random(in: 0...firstNum)
            result = String(firstNum) + " - " + String(secondNum)
        }
        print(result)
        return result
    }
}

