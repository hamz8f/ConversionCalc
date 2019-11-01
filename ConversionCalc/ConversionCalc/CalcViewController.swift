//
//  CalcViewController.swift
//  ConversionCalc
//
//  Created by Henry McMurray on 11/1/19.
//  Copyright © 2019 Henry McMurray. All rights reserved.
//

import UIKit

class CalcViewController: UIViewController {

    @IBOutlet weak var outputDisplay: UITextField!
    @IBOutlet weak var inputDisplay: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputDisplay.text = "°F"
        outputDisplay.text = "°C"

        var conversion: [converter] = []
        conversion.append(converter(labels: "Fahrenheit to Celcius", inputs: "°F", outputs: "°C"))
        conversion.append(converter(labels: "Celcius to Fahrenheit", inputs: "°C", outputs: "°F"))
        conversion.append(converter(labels: "Miles to Kilometers", inputs: "°mi", outputs: "°km"))
        conversion.append(converter(labels: "Kilometers to Miles", inputs: "°km", outputs: "°mi"))
        
        
        // Do any additional setup after loading the view.
    }
    @IBAction func convert(_ sender: Any) {
        let optionMenu = UIAlertController(title: nil, message: "Choose Converter", preferredStyle: .actionSheet)
            
        //let firstAction = UIAlertAction(title: conversion[0].label, style: .default)
        let firstAction = UIAlertAction(title: "Fahrenheit to Celcius", style: .default)
        let secondAction = UIAlertAction(title: "Celcius to Fahrenheit", style: .default)
        let thirdAction = UIAlertAction(title: "Miles to Kilometers", style: .default)
        let fourthAction = UIAlertAction(title: "Kilometers to Miles", style: .default)
            
        optionMenu.addAction(firstAction)
        optionMenu.addAction(secondAction)
        optionMenu.addAction(thirdAction)
        optionMenu.addAction(fourthAction)
            
        self.present(optionMenu, animated: true, completion: nil)
    }
    struct converter{
        var label: String
        var input: String
        var output: String
        
        init(labels:String, inputs:String, outputs:String){
            self.label = labels
            self.input = inputs
            self.output = outputs
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
