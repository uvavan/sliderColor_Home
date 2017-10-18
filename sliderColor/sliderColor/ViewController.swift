//
//  ViewController.swift
//  sliderColor
//
//  Created by Admin on 12.10.2017.
//  Copyright © 2017 vitalii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var ibMainView: UIView!
    @IBOutlet weak var ibSliderRed: UISlider!
    @IBOutlet weak var ibSliderGreen: UISlider!
    @IBOutlet weak var ibSliderBlue: UISlider!
    
    @IBOutlet weak var ibLabelRedValue: UILabel!
    @IBOutlet weak var ibLabelGreenValue: UILabel!
    @IBOutlet weak var ibLabelBlueValue: UILabel!
    
    @IBOutlet weak var ibViewColor: UIView!
    
    @IBOutlet weak var ibSwichComponent: UISegmentedControl!
    
    @IBOutlet weak var ibButtonMax: UIButton!
    @IBOutlet weak var ibButtonMedium: UIButton!
    @IBOutlet weak var ibButtonMin: UIButton!
    
    let minValueSlider: Float = 0
    let maxValueSlider: Float = 255
    var medValueSlider: Float {
        return (maxValueSlider - minValueSlider) / 2
    }
    
    var colorSlider: [UISlider]{
        return [ibSliderRed, ibSliderGreen, ibSliderBlue]
    }
    
    
    func colorFillComponent(){
        let color = UIColor(red: CGFloat(ibSliderRed.value / 255), green: CGFloat(ibSliderGreen.value / 255), blue: CGFloat(ibSliderBlue.value / 255), alpha: 1)
        
        switch ibSwichComponent.selectedSegmentIndex {
        case 0:
            ibViewColor.backgroundColor = color
        case 1:
            ibButtonMax.backgroundColor = color
            ibButtonMin.backgroundColor = color
            ibButtonMedium.backgroundColor = color
        case 2:
            ibMainView.backgroundColor = color
        case 3:
            ibButtonMax.titleLabel?.textColor = color
            ibButtonMedium.titleLabel?.textColor = color
            ibButtonMin.titleLabel?.textColor = color
        case 4:
            ibLabelBlueValue.textColor = color
            ibLabelRedValue.textColor = color
            ibLabelGreenValue.textColor = color
            
        default:
            ibMainView.backgroundColor = color
        }
    }
    
    func updateLabelColor() {
        ibLabelRedValue.text = "\(Int(ibSliderRed.value))"
        ibLabelBlueValue.text = "\(Int(ibSliderBlue.value))"
        ibLabelGreenValue.text = "\(Int(ibSliderGreen.value))"
    }
    
    func setToAllSlider(_ value: Float){
        for slider in colorSlider {
            slider.value = value
        }
        colorFillComponent()
        updateLabelColor()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLabelColor()
        colorFillComponent()
    }
    
    @IBAction func ibMaxButtonPress(_ sender: Any) {
        setToAllSlider(maxValueSlider)
        updateLabelColor()
        colorFillComponent()
        
    }
    
    @IBAction func ibMediumButtonPress(_ sender: Any) {
        setToAllSlider(medValueSlider)
        updateLabelColor()
        colorFillComponent()
    }
    
    @IBAction func ibMinButtonPress(_ sender: Any) {
        setToAllSlider(minValueSlider)
        updateLabelColor()
        colorFillComponent()
    }
    
    @IBAction func ibSliderRedValueChanged(_ sender: Any) {
        updateLabelColor()
        colorFillComponent()
    }
    
    @IBAction func ibSliderGreenValueChanged(_ sender: Any) {
        updateLabelColor()
        colorFillComponent()
    }
    
    @IBAction func ibSliderBueValueChanged(_ sender: Any) {
        ibLabelBlueValue.text = String(Int(ibSliderBlue.value))
        colorFillComponent()
        
    }
}

