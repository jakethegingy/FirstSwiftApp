//
//  FourthController.swift
//  FirstSwiftApp
//
//  Created by Hammond, Jacob on 10/18/17.
//  Copyright © 2017 Hammond, Jacob. All rights reserved.
//

import UIKit
import AVFoundation
public class FourthController : UIViewController
{
    @IBOutlet weak var imageFrame: UIImageView!
    @IBOutlet weak var imageButton: UIButton!
    @IBOutlet weak var soundButton: UIButton!
    @IBOutlet weak var soundSlider: UISlider!
    private var soundPlayer : AVAudioPlayer?
    private var imageCounter : Int = 0
    private lazy var color : ColorTools = ColorTools()
    
    @IBAction func NextImage(_ sender: Any)
    {
        switchImage()
    }
    private func switchImage() -> Void
    {
        if (imageCounter > 4)
        {
            imageCounter = 0
        }
        if (imageCounter == 0)
        {
            imageFrame.image = UIImage(named: "AdorableDog")
        }
        else if (imageCounter == 1)
        {
            imageFrame.image = UIImage(named: "TheDab")
        }
        else
        {
            imageFrame.image = UIImage(named: "DroneShotOne")
        }
    }
}
