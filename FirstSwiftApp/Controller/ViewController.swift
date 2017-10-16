//
//  ViewController.swift
//  FirstSwiftApp
//
//  Created by Hammond, Jacob on 10/6/17.
//  Copyright © 2017 Hammond, Jacob. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    lazy var colorTool : ColorTools = ColorTools()
    
    @IBOutlet weak var firstButton: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func firstMethod(_ sender: UIButton)
    {
        if (firstButton.backgroundColor == .red)
        {
            firstButton.backgroundColor = .cyan
        }
        
        else
        {
            firstButton.backgroundColor = .red
        }
        view.backgroundColor = colorTool.createRandomColor()
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func SwipeTwo(_ sender: UIPageControl) {
    }
}

