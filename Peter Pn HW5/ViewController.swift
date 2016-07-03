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
    
    @IBAction func calcAction(_ sender: AnyObject) {
        
        if bfText.text != "" && taxText.text != "" {
            let bf:Float? = Float(bfText.text!)
            let tax:Float? = Float(taxText.text!)
            if let bfTxt = bf , let taxTxt = tax  {
                resultText.text = String(bfTxt * (taxTxt/100))
            }
        }
    }
    
    @IBAction func bfChangedAction(_ sender: AnyObject) {
        
        if bfText.text != "" && taxText.text != "" {
            let bf:Float? = Float(bfText.text!)
            let tax:Float? = Float(taxText.text!)
            if let bfTxt = bf , let taxTxt = tax  {
                    resultText.text = String(bfTxt * (taxTxt/100))
                }
        }
    }
    
    @IBAction func taxChangedAction(_ sender: AnyObject) {
        
        if bfText.text != "" && taxText.text != "" {
            let bf:Float? = Float(bfText.text!)
            let tax:Float? = Float(taxText.text!)
            
            if let bfTxt = bf , let taxTxt = tax  {
                resultText.text = String(bfTxt * (taxTxt/100))
            }
        }
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

