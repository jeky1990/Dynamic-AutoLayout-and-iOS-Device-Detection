//
//  ViewController.swift
//  DymanicAutoLayoutByButtons
//
//  Created by macbook on 10/24/18.
//  Copyright © 2018 macbook. All rights reserved.
//

import UIKit

struct Device {
    
    static let IS_IPAD             = UIDevice.current.userInterfaceIdiom == .pad
    static let IS_IPHONE           = UIDevice.current.userInterfaceIdiom == .phone
    static let IS_RETINA           = UIScreen.main.scale >= 2.0
    
    static let SCREEN_WIDTH        = Int(UIScreen.main.bounds.size.width)
    static let SCREEN_HEIGHT       = Int(UIScreen.main.bounds.size.height)
    static let SCREEN_MAX_LENGTH   = Int( max(SCREEN_WIDTH, SCREEN_HEIGHT) )
    static let SCREEN_MIN_LENGTH   = Int( min(SCREEN_WIDTH, SCREEN_HEIGHT) )
    
    static let IS_IPHONE_4_OR_LESS = IS_IPHONE && SCREEN_MAX_LENGTH  < 568
    static let IS_IPHONE_5         = IS_IPHONE && SCREEN_MAX_LENGTH == 568
    static let IS_IPHONE_6         = IS_IPHONE && SCREEN_MAX_LENGTH == 667
    static let IS_IPHONE_6P        = IS_IPHONE && SCREEN_MAX_LENGTH == 736
    static let IS_IPHONE_X         = IS_IPHONE && SCREEN_MAX_LENGTH == 812
    static let IS_IPHONE_XR        = IS_IPHONE && SCREEN_MAX_LENGTH == 896
}

class ViewController: UIViewController {
    
    
    @IBOutlet weak var Bottom: NSLayoutConstraint!
    let FixHeight : CGFloat = 100
    var Heightofview = CGFloat()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    func ViewHeight() -> CGFloat
    {
        return self.view.frame.size.height
    }
    override func viewWillAppear(_ animated: Bool)
    {
        FindDevise()
        Heightofview = ViewHeight()
        print(Heightofview)
        Bottom.constant = ViewHeight() - 230
    }
    
    @IBAction func Add(_ sender: UIButton)
    {
        if (Device.IS_IPHONE_5)
        {
            AddActionForHeight568()
        }
        else if (Device.IS_IPHONE_6)
        {
            AddActionForHeight667()
        }
        else if (Device.IS_IPHONE_6P)
        {
            AddActionForHeight736()
        }
        else if (Device.IS_IPHONE_X)
        {
            AddActionForHeight812()
        }
        else if (Device.IS_IPHONE_XR)
        {
           AddActionForHeight896()
        }
       
    }
    
    @IBAction func MInus(_ sender: UIButton) {
        if (Device.IS_IPHONE_5)
        {
            MinusActionFor568()
        }
        else if (Device.IS_IPHONE_6)
        {
            MinusActionFor667()
        }
        else if (Device.IS_IPHONE_6P)
        {
            MinusActionFor736()
        }
        else if (Device.IS_IPHONE_X)
        {
            MinusActionFor812()
        }
        else if (Device.IS_IPHONE_XR)
        {
            MinusActionFor896()
        }
    }
    
    func AddActionForHeight568()
    {
        if Bottom.constant == ViewHeight() - 230
        {
            Bottom.constant = ViewHeight() - 330
        }
        else if Bottom.constant == ViewHeight() - 330
        {
            Bottom.constant = ViewHeight() - 430
        }
        else if Bottom.constant == ViewHeight() - 430
        {
            Bottom.constant = ViewHeight() - 538
        }
    }
    
    func MinusActionFor568()
    {
        if Bottom.constant == ViewHeight() - 230
        {
            Bottom.constant = ViewHeight() - 230
        }
        else if Bottom.constant == ViewHeight() - 330
        {
            Bottom.constant = ViewHeight() - 230
        }
        else if Bottom.constant == ViewHeight() - 430
        {
            Bottom.constant = ViewHeight() - 330
        }
        else if Bottom.constant == ViewHeight() - 538
        {
            Bottom.constant = ViewHeight() - 430
        }
    }
    func AddActionForHeight667()
    {
        if Bottom.constant == ViewHeight() - 230
        {
            Bottom.constant = ViewHeight() - 330
        }
        else if Bottom.constant == ViewHeight() - 330
        {
            Bottom.constant = ViewHeight() - 430
        }
        else if Bottom.constant == ViewHeight() - 430
        {
            Bottom.constant = ViewHeight() - 530
        }
        else if Bottom.constant == ViewHeight() - 530
        {
            Bottom.constant = ViewHeight() - 630
        }
        else if Bottom.constant == ViewHeight() - 630
        {
            Bottom.constant = ViewHeight() - 637
        }
    }
    
    func MinusActionFor667()
    {
        if Bottom.constant == ViewHeight() - 230
        {
            Bottom.constant = ViewHeight() - 230
        }
        else if Bottom.constant == ViewHeight() - 330
        {
            Bottom.constant = ViewHeight() - 230
        }
        else if Bottom.constant == ViewHeight() - 430
        {
            Bottom.constant = ViewHeight() - 330
        }
        else if Bottom.constant == ViewHeight() - 530
        {
            Bottom.constant = ViewHeight() - 430
        }
        else if Bottom.constant == ViewHeight() - 630
        {
            Bottom.constant = ViewHeight() - 530
        }
        else if Bottom.constant == ViewHeight() - 637
        {
            Bottom.constant = ViewHeight() - 630
        }
    }
    
    func AddActionForHeight736()
    {
        if Bottom.constant == ViewHeight() - 230
        {
            Bottom.constant = ViewHeight() - 330
        }
        else if Bottom.constant == ViewHeight() - 330
        {
            Bottom.constant = ViewHeight() - 430
        }
        else if Bottom.constant == ViewHeight() - 430
        {
            Bottom.constant = ViewHeight() - 530
        }
        else if Bottom.constant == ViewHeight() - 530
        {
            Bottom.constant = ViewHeight() - 630
        }
        else if Bottom.constant == ViewHeight() - 630
        {
            Bottom.constant = ViewHeight() - 706
        }
    }
    
    func MinusActionFor736()
    {
        if Bottom.constant == ViewHeight() - 230
        {
            Bottom.constant = ViewHeight() - 230
        }
        else if Bottom.constant == ViewHeight() - 330
        {
            Bottom.constant = ViewHeight() - 230
        }
        else if Bottom.constant == ViewHeight() - 430
        {
            Bottom.constant = ViewHeight() - 330
        }
        else if Bottom.constant == ViewHeight() - 530
        {
            Bottom.constant = ViewHeight() - 430
        }
        else if Bottom.constant == ViewHeight() - 630
        {
            Bottom.constant = ViewHeight() - 530
        }
        else if Bottom.constant == ViewHeight() - 706
        {
            Bottom.constant = ViewHeight() - 630
        }
    }
    func AddActionForHeight812()
    {
        if Bottom.constant == ViewHeight() - 230
        {
            Bottom.constant = ViewHeight() - 330
        }
        else if Bottom.constant == ViewHeight() - 330
        {
            Bottom.constant = ViewHeight() - 430
        }
        else if Bottom.constant == ViewHeight() - 430
        {
            Bottom.constant = ViewHeight() - 530
        }
        else if Bottom.constant == ViewHeight() - 530
        {
            Bottom.constant = ViewHeight() - 630
        }
        else if Bottom.constant == ViewHeight() - 630
        {
            Bottom.constant = ViewHeight() - 730
        }
        else if Bottom.constant == ViewHeight() - 730
        {
            Bottom.constant = ViewHeight() - 782
        }
    }
    
    func MinusActionFor812()
    {
        if Bottom.constant == ViewHeight() - 230
        {
            Bottom.constant = ViewHeight() - 230
        }
        else if Bottom.constant == ViewHeight() - 330
        {
            Bottom.constant = ViewHeight() - 230
        }
        else if Bottom.constant == ViewHeight() - 430
        {
            Bottom.constant = ViewHeight() - 330
        }
        else if Bottom.constant == ViewHeight() - 530
        {
            Bottom.constant = ViewHeight() - 430
        }
        else if Bottom.constant == ViewHeight() - 630
        {
            Bottom.constant = ViewHeight() - 530
        }
        else if Bottom.constant == ViewHeight() - 730
        {
            Bottom.constant = ViewHeight() - 630
        }
        else if Bottom.constant == ViewHeight() - 782
        {
            Bottom.constant = ViewHeight() - 730
        }
    }
    
    func AddActionForHeight896()
    {
        if Bottom.constant == ViewHeight() - 230
        {
            Bottom.constant = ViewHeight() - 330
        }
        else if Bottom.constant == ViewHeight() - 330
        {
            Bottom.constant = ViewHeight() - 430
        }
        else if Bottom.constant == ViewHeight() - 430
        {
            Bottom.constant = ViewHeight() - 530
        }
        else if Bottom.constant == ViewHeight() - 530
        {
            Bottom.constant = ViewHeight() - 630
        }
        else if Bottom.constant == ViewHeight() - 630
        {
            Bottom.constant = ViewHeight() - 730
        }
        else if Bottom.constant == ViewHeight() - 730
        {
            Bottom.constant = ViewHeight() - 830
        }
        else if Bottom.constant == ViewHeight() - 830
        {
            Bottom.constant = ViewHeight() - 862
        }
    }
    
    func MinusActionFor896()
    {
        if Bottom.constant == ViewHeight() - 230
        {
            Bottom.constant = ViewHeight() - 230
        }
        else if Bottom.constant == ViewHeight() - 330
        {
            Bottom.constant = ViewHeight() - 230
        }
        else if Bottom.constant == ViewHeight() - 430
        {
            Bottom.constant = ViewHeight() - 330
        }
        else if Bottom.constant == ViewHeight() - 530
        {
            Bottom.constant = ViewHeight() - 430
        }
        else if Bottom.constant == ViewHeight() - 630
        {
            Bottom.constant = ViewHeight() - 530
        }
        else if Bottom.constant == ViewHeight() - 730
        {
            Bottom.constant = ViewHeight() - 630
        }
        else if Bottom.constant == ViewHeight() - 830
        {
            Bottom.constant = ViewHeight() - 730
        }
        else if Bottom.constant == ViewHeight() - 862
        {
            Bottom.constant = ViewHeight()  - 830
        }
    }
    
    func FindDevise()
    {
        if (Device.IS_IPHONE_5)
        {
            print("iphone 5 or SE")
        }
        else if (Device.IS_IPHONE_6)
        {
            print("iphone 6 or 6s or 7 or 8")
        }
        else if (Device.IS_IPHONE_6P)
        {
            print("iphone 6 plus or 6s plus or 7 plus or 8 plus")
        }
        else if (Device.IS_IPHONE_X)
        {
            print("iphone x or XS")
        }
        else if (Device.IS_IPHONE_XR)
        {
            print("iphone XR or XS Max")
        }
    }
}

