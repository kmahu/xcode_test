//
//  ViewController.swift
//  multi_time_test
//
//  Created by Kirti Mahurkar on 3/28/17.
//  Copyright © 2017 Kirti Mahurkar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNumLabel: UILabel!
    @IBOutlet weak var secondNumLabel: UILabel!
    @IBAction func doneButton(_ sender: Any) {
        var answer = 0,firstNum = 0,secondNum = 0;
        answer = Int(answerTextFeild.text!)!;
        firstNum = Int(firstNumLabel.text!)!;
        secondNum = Int(secondNumLabel.text!)!;
        if (checkAnswer(firstNum: firstNum, secondNum: secondNum, op: "*", givenAnswer: answer)){
            declareLabel.text = "Correct";
        }
        else{
            declareLabel.text = "Incorrect";
        }
        
    }
    @IBOutlet weak var declareLabel: UILabel!
    @IBOutlet weak var answerTextFeild: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var i = 0;
        i = randomNumbers(startNum: 0,endNum: 10);
        firstNumLabel.text = i.description;
        i = randomNumbers(startNum: 0,endNum: 10);
        secondNumLabel.text = i.description;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    


}

