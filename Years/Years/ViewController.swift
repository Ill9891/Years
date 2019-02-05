//
//  ViewController.swift
//  Years
//
//  Created by Илья и Аня on 1/8/19.
//  Copyright © 2019 Илья и Аня. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet var myLabel: UILabel!
    @IBOutlet var staticLabel: UILabel!
    @IBOutlet var textField: UITextField!
    @IBOutlet var staticButton: UIButton!
    @IBOutlet var animalImage: UIImageView!
    @IBOutlet var localSegment: UISegmentedControl!
    
    var player = AVAudioPlayer()
    var guessYear = MainLogicClass()
    var lang = LanguagesInDictionary()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        animalImage.image = UIImage(named: "question")
    }
    
    
    @IBAction func myButton(_ sender: Any) {
        if localSegment.selectedSegmentIndex == 1{
            guessYear.toSwitch(staticButton, myLabel, staticLabel, textField, animalImage, lang.eng)
            self.view.endEditing(true)
        }else{
            guessYear.toSwitch(staticButton, myLabel, staticLabel, textField, animalImage, lang.rus)
            self.view.endEditing(true)
        }
        //textField.resignFirstResponder()
        }
    

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    

    @IBAction func switchSegment(_ sender: Any) {
        if localSegment.selectedSegmentIndex == 1{
            self.staticLabel.text = "Enter a year:"
            self.staticButton.setTitle("Continue", for: .normal)
            self.myLabel.text = ""
            animalImage.image = UIImage(named: "question")
            guessYear.sound(nil)
            if guessYear.player.play() == true{
                guessYear.player.stop()
            }else{
                print ("Error")
            }
        }else{
            self.staticLabel.text = "Введите год:"
            self.staticButton.setTitle("Продолжить", for: .normal)
            self.myLabel.text = ""
            animalImage.image = UIImage(named: "question")
            guessYear.sound(nil)
            if guessYear.player.play() == true{
                guessYear.player.stop()
            }else{
                print ("Error")
            }
        }
    }
    
}

