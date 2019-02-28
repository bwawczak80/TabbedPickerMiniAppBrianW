//
//  CornSnakeViewController.swift
//  TabbedPickerMiniAppBrianW
//
//  Created by Brian Wawczak on 2/27/19.
//  Copyright © 2019 Brian Wawczak. All rights reserved.
//

import UIKit

class CornSnakeViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var display: UILabel!
    @IBOutlet weak var picker: UIPickerView!
    
    private let cornWeight = ["4-15 grams", "16-23 grams", "24-30 grams", "31-50g", "51-150g",
                            "150-250g", "250-400g", "401-600g", "601-800g", "> 800g"]
    
    private let cornFeeders = ["Pinky Mouse", "2 Pinky Mice", "Small Fuzzy Mouse", "Large Fuzzy Mouse", "Mouse Hopper", "Small Adult Mouse", "Large Adult Mouse", "Jumbo Adult Mouse", "2 Large Adult Mice", "Weaned Rat"]
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
        let feeder = cornFeeders[row]
        display.text = "The appropriate meal for your snake is a \(feeder)"
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return cornWeight.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return cornWeight[row]
    }
    
    // changes picker text color
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        let titleData = cornWeight[row]
        let myTitle = NSAttributedString(string: titleData, attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        
        return myTitle
    }
}
