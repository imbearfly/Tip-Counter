//
//  ViewController.swift
//  Peter Pn HW5
//
//  Created by Fly on 2016/7/3.
//  Copyright © 2016年 Fly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bfText: UITextField!
    @IBOutlet weak var taxText: UITextField!
    @IBOutlet weak var resultText: UILabel!
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var tipSlider0to10: UISlider!
    @IBOutlet weak var numOfPeopleSlider: UISlider!
    @IBOutlet weak var numOfPeopleLbl: UILabel!
    
    
    @IBAction func calcAction(_ sender: AnyObject) {
        
        if bfText.text != "" && taxText.text != "" {
            let bf:Int? = Int(bfText.text!)
            let tax:Int? = Int(taxText.text!)
            let numOfPeople:Int? = Int(numOfPeopleLbl.text!)
            if let bfTxt = bf , let taxTxt = tax , let numOfPeopleTxt = numOfPeople {
                let result = Float(bfTxt * (taxTxt/100))
                resultText.text = resultTxt(bf: bfTxt, tipValue: result, numOfPeople: numOfPeopleTxt)
            }
        }
    }
    
    @IBAction func bfChangedAction(_ sender: AnyObject) {
        let bf:Int? = Int(bfText.text!)
        let tax:Int? = Int(taxText.text!)
        let numOfPeople:Int? = Int(numOfPeopleLbl.text!)
        if let bfTxt = bf , let taxTxt = tax , let numOfPeopleTxt = numOfPeople {
            let result = Float(bfTxt) * (Float(taxTxt)/100)
            resultText.text = resultTxt(bf: bfTxt, tipValue: result, numOfPeople: numOfPeopleTxt)
        }
    }
    
    @IBAction func taxTxtChangedAction(_ sender: AnyObject) {
        let bf:Int? = Int(bfText.text!)
        let tax:Int? = Int(taxText.text!)
        let numOfPeople:Int? = Int(numOfPeopleLbl.text!)
        if let bfTxt = bf , let taxTxt = tax , let numOfPeopleTxt = numOfPeople {
            print(taxTxt/100)
            let result = Float(bfTxt) * (Float(taxTxt)/100)
            print(result)
            resultText.text = resultTxt(bf: bfTxt, tipValue: result, numOfPeople: numOfPeopleTxt)
        }
    }
    
    @IBAction func tip15to25ChangedAction(_ sender: UISlider) {
      let tipValue = String(format: "%.0f" ,tipSlider.value)// format: "%.2f" to limit 2 digits
//        let tipValue:Float = tipSlider.value
        taxText.text = String(tipValue)
        self.view.endEditing(true)
        
    }
    
    @IBAction func tax0to10changedAction(_ sender: AnyObject) {
        let tipValue = String(format: "%.0f" ,tipSlider0to10.value)// format: "%.2f" to limit 2 digits
//        let tipValue:Float = tipSlider0to10.value
        taxText.text = String(tipValue)
        self.view.endEditing(true)
    }
    
    @IBAction func numOfPeopleChangedAction(_ sender: UISlider) {
        let numOfPeople = String(format: "%.0f",numOfPeopleSlider.value)
        numOfPeopleLbl.text = numOfPeople
        let bf:Int? = Int(bfText.text!)
        let tax:Int? = Int(taxText.text!)
        if let bfTxt = bf , let taxTxt = tax  {
            let result = Float(bfTxt * (taxTxt/100))
            resultText.text = resultTxt(bf: bfTxt, tipValue: result, numOfPeople: Int(numOfPeople)!)
        }

        

        
    }
    
    func resultTxt(bf:Int, tipValue:Float , numOfPeople:Int)->String{
        let resultTxt = "Amount after tax: \(tipValue+Float(bf)) \n Your tip: \(tipValue/Float(numOfPeople)) \n Your total bill: \((Float(bf)+tipValue)/Float(numOfPeople))"
        return resultTxt
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

