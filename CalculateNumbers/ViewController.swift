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
    @IBOutlet weak var answerLabel: UILabel!
    var typedAnswer: String = ""
    var resultTuple: (String, Int, Int, Int) = ("", 0, 0, 0)
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        fillLabels()
    }

    func fillLabels()
    {
        generateExample()
        let example = resultTuple.0
        label.text = example
    }
    
    func generateExample()
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
        resultTuple = (result, firstNum, secondNum, sign)
        print(result)
        print(resultTuple)
    }
    
    func checkAnswer() -> Bool
    {
        var answer: Bool
        var calculatedAnswer: Int = 0
        
        switch resultTuple.3
        {
        case 0:
            calculatedAnswer = resultTuple.1 - resultTuple.2
        case 1:
            calculatedAnswer = resultTuple.1 + resultTuple.2
        default:
            print("Error")
        }
        
        print("\(calculatedAnswer) calculated, \(typedAnswer) typed")
        if calculatedAnswer == Int(typedAnswer)
        {
            answer = true
        }
        else
        {
            answer = false
        }
        print(answer)
        return answer
    }
    
    @IBAction func button1action(_ sender: UIButton)
    {
        typedAnswer += "1"
        answerLabel.text = typedAnswer
    }
    
    @IBAction func button2action(_ sender: UIButton)
    {
        typedAnswer += "2"
        answerLabel.text = typedAnswer
    }
    
    @IBAction func button3action(_ sender: UIButton)
    {
        typedAnswer += "3"
        answerLabel.text = typedAnswer
    }
    
    @IBAction func button4action(_ sender: UIButton)
    {
        typedAnswer += "4"
        answerLabel.text = typedAnswer
    }
    
    @IBAction func button5acion(_ sender: UIButton)
    {
        typedAnswer += "5"
        answerLabel.text = typedAnswer
    }
    
    @IBAction func button6action(_ sender: UIButton)
    {
        typedAnswer += "6"
        answerLabel.text = typedAnswer
    }
    
    @IBAction func button7action(_ sender: UIButton)
    {
        typedAnswer += "7"
        answerLabel.text = typedAnswer
    }
    
    @IBAction func button8action(_ sender: UIButton)
    {
        typedAnswer += "8"
        answerLabel.text = typedAnswer
    }
    
    @IBAction func button9action(_ sender: UIButton)
    {
        typedAnswer += "9"
        answerLabel.text = typedAnswer
    }
    
    @IBAction func button0action(_ sender: UIButton)
    {
        typedAnswer += "0"
        answerLabel.text = typedAnswer
    }
    
    @IBAction func buttonDeleteAction(_ sender: UIButton)
    {
        if !typedAnswer.isEmpty
        {
            typedAnswer.removeLast()
        }
        answerLabel.text = typedAnswer
    }
    
    @IBAction func buttonCheckAction(_ sender: UIButton)
    {
        print(typedAnswer)
        if checkAnswer()
        {
            fillLabels()
            answerLabel.text?.append(" - верный ответ!")
        }
        else
        {
            answerLabel.text?.append(" - неверный ответ")
        }
        typedAnswer = ""
    }
    
    
}

