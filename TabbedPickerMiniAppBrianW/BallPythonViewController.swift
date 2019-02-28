//
//  BallPythonViewController.swift
//  TabbedPickerMiniAppBrianW
//
//  Created by Brian Wawczak on 2/27/19.
//  Copyright © 2019 Brian Wawczak. All rights reserved.
//

import UIKit

class BallPythonViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var display: UILabel!
    
    @IBOutlet weak var picker: UIPickerView!
    
    //paralell arrays will display appropriate feeder for weight
    private let bpWeight = ["< 70 grams", "70-120 grams", "120-200 grams", "200-350g", "350-500g",
                          "500-1000g", "> 1000g"]
    
    private let bpFeeders = ["Mouse Crawler", "Hopper Mouse", "Rat Fuzzy", "Rat Pup", "Weaned Rat",
                             "Small Rat", "Medium Rat"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    // on button push, get selected value, display text in label.
    @IBAction func pressButton(_ sender: Any) {
        let row = picker.selectedRow(inComponent: 0)
        let feeder = bpFeeders[row]
        display.text = "The appropriate meal for your snake is a \(feeder)"
        
    }
    // gets number of components
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // how many rows for given component
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return bpWeight.count
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return bpWeight[row]
    }
    
    
    // changes picker text color
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        let titleData = bpWeight[row]
        let myTitle = NSAttributedString(string: titleData, attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        
        return myTitle
    }
    

}
