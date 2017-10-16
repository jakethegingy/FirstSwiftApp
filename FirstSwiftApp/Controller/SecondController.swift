//
//  SecondController.swift
//  FirstSwiftApp
//
//  Created by Hammond, Jacob on 10/12/17.
//  Copyright © 2017 Hammond, Jacob. All rights reserved.
//

import UIKit
public class SecondController : UIViewController
{
    lazy var colorTool = ColorTools()
    
    public override func viewDidLoad()
    {
        super.viewDidLoad()
        view.backgroundColor = colorTool.createRandomColor()
    }
    @IBOutlet weak var SwipeTwo: UIPageControl!
}
