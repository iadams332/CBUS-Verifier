//
//  AboutViewController.swift
//  CBUS
//
//  Created by Isaac Adams on 2/20/20.
//  Copyright © 2020 UAHS. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    @IBOutlet var gradientBackgroundView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Sets up the gradient background
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor(red: 0/255, green: 14/255, blue: 229/255, alpha: 1).cgColor, UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1).cgColor ]
        gradientLayer.shouldRasterize = true
        gradientBackgroundView.layer.addSublayer(gradientLayer)
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 2)
    }
    
    //Prevents the background from rotating
    override var shouldAutorotate: Bool {
        return false
    }
    
    //Makes the UIStatusBar text white
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @IBAction func mainMenuSegue(_ sender: Any) {
        [self .performSegue(withIdentifier: "mainMenuSegue", sender: self)]
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
