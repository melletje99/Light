//
//  ColorChooseViewController.swift
//  Light
//
//  Created by Wessel Mel on 08/12/2018.
//

import UIKit

class ColorChooseViewController: UIViewController {
    
    var Pink = UIColor.init(red: 1.0, green: 0.0, blue: 1.0, alpha: 1.0)
    var LightBlue = UIColor.init(red: 0.0, green: 1.0, blue: 1.0, alpha: 1.0)
    var DarkBlue = UIColor.init(red: 0.0, green: 0.0, blue: 0.5, alpha: 1.0)
    var Default = UIColor.init(red: 0.0, green: 122/255, blue: 1, alpha: 1)
    
    var lightColor: UIColor?

    @IBOutlet weak var RedOutlet: UIButton!
    @IBOutlet weak var GreenOutlet: UIButton!
    @IBOutlet weak var PinkOutlet: UIButton!
    @IBOutlet weak var LightBlueOutlet: UIButton!
    @IBOutlet weak var WhiteOutlet: UIButton!
    @IBOutlet weak var BlueOutlet: UIButton!
    @IBOutlet weak var OrangeOutlet: UIButton!
    @IBOutlet weak var GreyOutlet: UIButton!
    @IBOutlet weak var YellowOutlet: UIButton!
    @IBOutlet var ColorsOutlet: [UIButton]!
    
    @IBOutlet weak var ColorLabel: UILabel!
    @IBOutlet weak var TurnOn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for button in ColorsOutlet {
            button.layer.cornerRadius = 5
            button.layer.borderWidth = 1
            button.layer.borderColor = UIColor.black.cgColor
        }
        TurnOn.layer.cornerRadius = 5
        ColorLabel.text = ""
        
        // Do any additional setup after loading the view.
    }
    
    func Reset() {
        for button in ColorsOutlet {
            button.backgroundColor = .clear
            button.setTitleColor(Default, for: .normal)
        }
    }
    
    @IBAction func unwindBack(segue:UIStoryboardSegue) { }
    
    @IBAction func Red(_ sender: UIButton) {
        UIView.animate(withDuration: 0.3) {
            self.RedOutlet.transform = CGAffineTransform(scaleX: 3.0, y: 3.0)
            self.RedOutlet.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        }
        Reset()
        RedOutlet.backgroundColor = .red
        RedOutlet.setTitleColor(.black, for: .normal)
        lightColor = .red
        ColorLabel.text = "Red"
    }
    @IBAction func Green(_ sender: UIButton) {
        UIView.animate(withDuration: 0.3) {
            self.GreenOutlet.transform = CGAffineTransform(scaleX: 3.0, y: 3.0)
            self.GreenOutlet.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        }
        Reset()
        GreenOutlet.backgroundColor = .green
        GreenOutlet.setTitleColor(.black, for: .normal)
        lightColor = .green
        ColorLabel.text = "Green"
    }
    
    @IBAction func Pink(_ sender: UIButton) {
        UIView.animate(withDuration: 0.3) {
            self.PinkOutlet.transform = CGAffineTransform(scaleX: 3.0, y: 3.0)
            self.PinkOutlet.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        }
        Reset()
        PinkOutlet.backgroundColor = Pink
        PinkOutlet.setTitleColor(.black, for: .normal)
        lightColor = Pink
        ColorLabel.text = "Pink"
    }
    
    @IBAction func LightBlue(_ sender: Any) {
        UIView.animate(withDuration: 0.3) {
            self.LightBlueOutlet.transform = CGAffineTransform(scaleX: 3.0, y: 3.0)
            self.LightBlueOutlet.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        }
        Reset()
        LightBlueOutlet.backgroundColor = LightBlue
        LightBlueOutlet.setTitleColor(.black, for: .normal)
        lightColor = LightBlue
        ColorLabel.text = "Light Blue"
    }
    
    @IBAction func White(_ sender: UIButton) {
        UIView.animate(withDuration: 0.3) {
            self.WhiteOutlet.transform = CGAffineTransform(scaleX: 3.0, y: 3.0)
            self.WhiteOutlet.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        }
        Reset()
        WhiteOutlet.backgroundColor = .white
        WhiteOutlet.setTitleColor(.black, for: .normal)
        lightColor = .white
        ColorLabel.text = "White"
    }
    
    @IBAction func DarkBlue(_ sender: Any) {
        UIView.animate(withDuration: 0.3) {
            self.BlueOutlet.transform = CGAffineTransform(scaleX: 3.0, y: 3.0)
            self.BlueOutlet.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        }
        Reset()
        BlueOutlet.backgroundColor = DarkBlue
        BlueOutlet.setTitleColor(.white, for: .normal)
        lightColor = DarkBlue
        ColorLabel.text = "Dark Blue"
    }
    
    @IBAction func Orange(_ sender: UIButton) {
        UIView.animate(withDuration: 0.3) {
            self.OrangeOutlet.transform = CGAffineTransform(scaleX: 3.0, y: 3.0)
            self.OrangeOutlet.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        }
        Reset()
        OrangeOutlet.backgroundColor = .orange
        OrangeOutlet.setTitleColor(.black, for: .normal)
        lightColor = .orange
        ColorLabel.text = "Orange"
    }
    
    @IBAction func Grey(_ sender: Any) {
        UIView.animate(withDuration: 0.3) {
            self.GreyOutlet.transform = CGAffineTransform(scaleX: 3.0, y: 3.0)
            self.GreyOutlet.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        }
        Reset()
        GreyOutlet.backgroundColor = .gray
        GreyOutlet.setTitleColor(.black, for: .normal)
        lightColor = .gray
        ColorLabel.text = "Gray"
    }
    
    @IBAction func Yellow(_ sender: UIButton) {
        UIView.animate(withDuration: 0.3) {
            self.YellowOutlet.transform = CGAffineTransform(scaleX: 3.0, y: 3.0)
            self.YellowOutlet.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        }
        Reset()
        YellowOutlet.backgroundColor = .yellow
        YellowOutlet.setTitleColor(.black, for: .normal)
        lightColor = .yellow
        ColorLabel.text = "Yellow"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "LightSegue"{
           let lightVC = segue.destination as! LightViewController
            lightVC.color = lightColor
            lightVC.lightBlue = LightBlue
        }
    }
    
    @IBAction func TurnOnAction(_ sender: UIButton) {
        if ColorLabel.text != "" && ColorLabel.text != "Choose a color!" {
            performSegue(withIdentifier: "LightSegue", sender: TurnOn)
        }
        else {
            ColorLabel.text = "Choose a color!"
        }
    }
    
    

}
