//
//  ViewController.swift
//  sliderColor
//
//  Created by Admin on 12.10.2017.
//  Copyright © 2017 vitalii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ibSliderRed: UISlider!
    @IBOutlet weak var ibSliderGreen: UISlider!
    @IBOutlet weak var ibSliderBlue: UISlider!
    @IBOutlet weak var ibLabelRedValue: UILabel!
    @IBOutlet weak var ibLabelGreenValue: UILabel!
    @IBOutlet weak var ibLabelBlueValue: UILabel!
    @IBOutlet weak var ibViewColor: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ibLabelRedValue.text = String(Int(ibSliderRed.value))
        ibLabelBlueValue.text = String(Int(ibSliderBlue.value))
        ibLabelGreenValue.text = String(Int(ibSliderGreen.value))
        let color = UIColor(red: CGFloat(ibSliderRed.value / 255), green: CGFloat(ibSliderGreen.value / 255), blue: CGFloat(ibSliderBlue.value / 255), alpha: 1)
        ibViewColor.backgroundColor = color
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func ibMaxButtonPress(_ sender: Any) {
        ibSliderRed.value = ibSliderRed.maximumValue
        ibSliderBlue.value = ibSliderBlue.maximumValue
        ibSliderGreen.value = ibSliderGreen.maximumValue
        ibLabelRedValue.text = String(Int(ibSliderRed.value))
        ibLabelBlueValue.text = String(Int(ibSliderBlue.value))
        ibLabelGreenValue.text = String(Int(ibSliderGreen.value))
        let color = UIColor(red: CGFloat(ibSliderRed.value / 255), green: CGFloat(ibSliderGreen.value / 255), blue: CGFloat(ibSliderBlue.value / 255), alpha: 1)
        ibViewColor.backgroundColor = color
        
    }
    
    @IBAction func ibMediumButtonPress(_ sender: Any) {
        ibSliderRed.value = (ibSliderRed.maximumValue - ibSliderRed.minimumValue) / 2
        ibSliderBlue.value = (ibSliderBlue.maximumValue - ibSliderBlue.minimumValue) / 2
        ibSliderGreen.value = (ibSliderGreen.maximumValue - ibSliderGreen.minimumValue) / 2
        ibLabelRedValue.text = String(Int(ibSliderRed.value))
        ibLabelBlueValue.text = String(Int(ibSliderBlue.value))
        ibLabelGreenValue.text = String(Int(ibSliderGreen.value))
        let color = UIColor(red: CGFloat(ibSliderRed.value / 255), green: CGFloat(ibSliderGreen.value / 255), blue: CGFloat(ibSliderBlue.value / 255), alpha: 1)
        ibViewColor.backgroundColor = color
    }
    
    @IBAction func ibMinButtonPress(_ sender: Any) {
        ibSliderRed.value = ibSliderRed.minimumValue
        ibSliderBlue.value = ibSliderBlue.minimumValue
        ibSliderGreen.value = ibSliderGreen.minimumValue
        ibLabelRedValue.text = String(Int(ibSliderRed.value))
        ibLabelBlueValue.text = String(Int(ibSliderBlue.value))
        ibLabelGreenValue.text = String(Int(ibSliderGreen.value))
        let color = UIColor(red: CGFloat(ibSliderRed.value / 255), green: CGFloat(ibSliderGreen.value / 255), blue: CGFloat(ibSliderBlue.value / 255), alpha: 1)
        ibViewColor.backgroundColor = color
    }
    
    @IBAction func ibSliderRedValueChanged(_ sender: Any) {
        ibLabelRedValue.text = String(Int(ibSliderRed.value))
        let color = UIColor(red: CGFloat(ibSliderRed.value / 255), green: CGFloat(ibSliderGreen.value / 255), blue: CGFloat(ibSliderBlue.value / 255), alpha: 1)
        ibViewColor.backgroundColor = color
    }
    
    @IBAction func ibSliderGreenValueChanged(_ sender: Any) {
        ibLabelGreenValue.text = String(Int(ibSliderGreen.value))
        let color = UIColor(red: CGFloat(ibSliderRed.value / 255), green: CGFloat(ibSliderGreen.value / 255), blue: CGFloat(ibSliderBlue.value / 255), alpha: 1)
        ibViewColor.backgroundColor = color
    }
    
    @IBAction func ibSliderBueValueChanged(_ sender: Any) {
        ibLabelBlueValue.text = String(Int(ibSliderBlue.value))
        let color = UIColor(red: CGFloat(ibSliderRed.value / 255), green: CGFloat(ibSliderGreen.value / 255), blue: CGFloat(ibSliderBlue.value / 255), alpha: 1)
        ibViewColor.backgroundColor = color
    }
    
}

