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

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        let example = generateExample().0
        label.text = example
        
    }

    func generateExample() -> (String, Int, Int, Int)
    {
        let result: String
        let resultTuple: (String, Int, Int, Int)
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
        resultTuple = (result, firstNum, secondNum, sign)
        print(result)
        print(resultTuple)
        return resultTuple
    }
    
    @IBAction func button1action(_ sender: UIButton)
    {
        
    }
    
    @IBAction func button2action(_ sender: UIButton)
    {
        
    }
    
    @IBAction func button3action(_ sender: UIButton)
    {
        
    }
    
    @IBAction func button4action(_ sender: UIButton)
    {
        
    }
    
    @IBAction func button5acion(_ sender: UIButton)
    {
        
    }
    
    @IBAction func button6action(_ sender: UIButton)
    {
        
    }
    
    @IBAction func button7action(_ sender: UIButton)
    {
        
    }
    
    @IBAction func button8action(_ sender: UIButton)
    {
        
    }
    
    @IBAction func button9action(_ sender: UIButton)
    {
        
    }
    
    @IBAction func button0action(_ sender: UIButton)
    {
        
    }
    
    @IBAction func buttonDeleteAction(_ sender: UIButton)
    {
        
    }
    
    @IBAction func buttonCheckAction(_ sender: UIButton)
    {
        
    }
    
    
}

