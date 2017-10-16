//
//  ThirdController.swift
//  FirstSwiftApp
//
//  Created by Hammond, Jacob on 10/12/17.
//  Copyright © 2017 Hammond, Jacob. All rights reserved.
//

import UIKit
public class ThirdController : UIViewController
{
    lazy var colorTool = ColorTools()
        
    public override func viewDidLoad()
    {
        super.viewDidLoad()
        view.backgroundColor = colorTool.createRandomColor()
    }
    @IBAction func ThirdSwipe(_ sender: UIPageControl)
    {
        
    }
}
