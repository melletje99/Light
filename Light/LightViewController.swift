//
//  ViewController.swift
//  Light
//
//  Created by Wessel Mel on 01-11-18.
//

import UIKit

class LightViewController: UIViewController {
    
    var color: UIColor?
    var lightBlue: UIColor?
    var state = 0
    
    @IBOutlet weak var HomeButton: UIButton!
    
    
    var lightOn = true
    override func viewDidLoad() {
        super.viewDidLoad()
        HomeButton.layer.cornerRadius = 5
        self.setNeedsStatusBarAppearanceUpdate()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        if state == 1 && (color == .white || color == .green || color == lightBlue || color == .yellow) {
            return .default
        }
        else {
            return .lightContent
        }
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn = !lightOn
        updateUI()
        self.setNeedsStatusBarAppearanceUpdate()
    }
    
    func updateUI() {
        view.backgroundColor = lightOn ? .black : color
        state = lightOn ? 0 : 1
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
