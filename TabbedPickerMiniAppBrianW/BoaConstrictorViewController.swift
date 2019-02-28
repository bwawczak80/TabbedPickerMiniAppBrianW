//
//  BoaConstrictorViewController.swift
//  TabbedPickerMiniAppBrianW
//
//  Created by Brian Wawczak on 2/27/19.
//  Copyright © 2019 Brian Wawczak. All rights reserved.
//

import UIKit

class BoaConstrictorViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var display: UILabel!
    @IBOutlet weak var picker: UIPickerView!
    
    
    
    private let boaWeight = ["< 150 grams", "150-200 grams", "200-350 grams", "350-450g", "450-1000g", "1000-3000g", "3000-5000", "5000-7000", "> 7000g"]
    
    private let boaFeeders = ["Hopper Mouse", "Medium Mouse", "Large Mouse", "Weaned Rat", "Small Rat", "Medium Rat", "Large Rat", "Jumbo Rat", "Small Rabbit"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func pressButton(_ sender: Any) {
        let row = picker.selectedRow(inComponent: 0)
        let feeder = boaFeeders[row]
        display.text = "The appropriate meal for your snake is a \(feeder)"
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return boaWeight.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return boaWeight[row]
    }
    
    // changes picker text color
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        let titleData = boaWeight[row]
        let myTitle = NSAttributedString(string: titleData, attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        
        return myTitle
    }
}
