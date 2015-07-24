//
//  ViewController.swift
//  ColorRGB
//
//  Created by John Silva on 7/23/15.
//  Copyright © 2015 John Silva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var r: UISlider!
    @IBOutlet var g: UISlider!
    @IBOutlet var b: UISlider!
    @IBOutlet var a: UISlider!
    @IBOutlet var lr: UILabel!
    @IBOutlet var lg: UILabel!
    @IBOutlet var lb: UILabel!
    @IBOutlet var la: UILabel!
    @IBOutlet var viewColor: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        r.value = 100
        g.value = 50
        b.value = 20
        a.value = 1
        
        showValue()
        sliderValueChanged()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    @IBAction func sliderValueChanged() {
        
        let red = CGFloat(r.value) / 255.0
        let green = CGFloat(g.value) / 255.0
        let blue = CGFloat(b.value) / 255.0
        let alpha = CGFloat(a.value) / 1.0
        
        let color = UIColor(red: red, green: green, blue: blue, alpha: alpha)
        
        viewColor.backgroundColor = color
        showValue()
        
    }
    
    func showValue() {
        lr.text = "\(Int(r.value))"
        lg.text = "\(Int(g.value))"
        lb.text = "\(Int(b.value))"
        la.text = String.localizedStringWithFormat("%.1f", a.value)
    }

}

