//
//  ViewController.swift
//  RestaurantEZ
//
//  Created by Zobair on 10/17/14.
//  Copyright (c) 2014 littleBigCoder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func ButtonPressed(sender: AnyObject) {
        outputLabel.alpha=0.0;
        displayResturent();
    }

    @IBOutlet var outputLabel: UILabel!
    
    @IBOutlet var background: UIImageView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func displayResturent(){
        var resturentList: [String] = ["iHop", "Glory Days","Quiznos", "McDonalds", "KFC", "Subway"];
        var resturentImage: [String] = ["ihop.jpg", "glory.jpg","quiznos.jpg", "mcd.jpg", "kfc.jpg", "subway.jpg"];
        var randomNumber : Int = Int(arc4random_uniform(6));
        
        outputLabel.text="Go to: "+resturentList[randomNumber];
        
        
        
        var imageName = UIImage(named:resturentImage[randomNumber]);
        self.background.image=imageName;
        
        
        UIView.animateWithDuration(1.0, animations: {
            self.outputLabel.alpha = 1.0;
            }, completion: { _ in
                
        })
        
        
    }
    override func touchesBegan(_ touches: NSSet, withEvent event: UIEvent){
        outputLabel.alpha=0.0;
    }
    override func touchesEnded(_ touches: NSSet,
        withEvent event: UIEvent){
            displayResturent();
    }
    
    override func motionBegan(_ motion: UIEventSubtype,
        withEvent event: UIEvent){
            outputLabel.alpha=0.0;
    }
    
    override func motionEnded(_ motion: UIEventSubtype,
        withEvent event: UIEvent){
            displayResturent();
    }
    
    
    
    
    
}
