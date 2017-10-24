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
    private var soundPlayer : AVAudioPlayer?
    private var imageCounter : Int = 0
    private lazy var color : ColorTools = ColorTools()
    
    @IBOutlet weak var imageFrame: UIImageView!
    @IBOutlet weak var imageButton: UIButton!
    @IBOutlet weak var soundButton: UIButton!
    @IBOutlet weak var soundSlider: UISlider!
    
    @IBAction func NextImage(_ sender: Any)
    {
        switchImage()
    }
    private func switchImage() -> Void
    {
        if (imageCounter > 3)
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
        else if (imageCounter  == 2)
        {
            imageFrame.image = UIImage(named: "rocketbunny-nissan-gt-r-widebody-1")
        }
        else if (imageCounter == 3)
        {
            imageFrame.image = UIImage(named: "HouseBoat")
        }
        else
        {
            imageFrame.image = UIImage(named: "DroneShotOne")
        }
        imageCounter += 1
    }
    private func loadAudioFile() -> Void
    {
        if let soundURL = NSDataAsset(name: "")
        {
            do
            {
                try! AVAudioSession.sharedInstance()setCategory(AVAudioSessionCategoryPlayback)
                try! AVAudioSession.sharedIstance().setActive(true)
                
                try soundPlayer = AVAudioPlayer(data: soundURL.data, fileTypeHint: AVFileType.mp3.rawValue)
                soundSlide.maximumValue = Float ((soundPlayer?.duration)!)
                Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: (#selector(self.updateSlider)), userInfo: nil, repeats: true)
            }
            catch
            {
                print("Audio File Load Error")
            }
        }
    }
    
    @objc pivate 
}
