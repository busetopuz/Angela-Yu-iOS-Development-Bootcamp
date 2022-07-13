//
//  ViewController.swift
//  BMI-Calculator
//
//  Created by Buse Topuz on 12.07.2022.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain =  CalculatorBrain()

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    
    var bmiValue = "0.0"
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        
        let heigh = String(format: "%.2f", sender.value)
        heightLabel.text = "\(heigh)m"
        
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
       let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        let bmi = weight / pow(height, 2)
        bmiValue = String(format: "%.1f", bmi)
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
}

