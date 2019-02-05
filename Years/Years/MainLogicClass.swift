//
//  LocalRus.swift
//  Years
//
//  Created by Илья и Аня on 1/13/19.
//  Copyright © 2019 Илья и Аня. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

public class MainLogicClass{
    
    var player = AVAudioPlayer()
    var year = Int()
    
    func toSwitch(_ staticButton: UIButton,_ myLabel: UILabel,_ staticLabel: UILabel,_ textField: UITextField,_ animalImage: UIImageView,_ dict: [String: String]){
        
        var a: Int? = Int(textField.text ?? "error")
        myLabel.text = textField.text
       
        if textField.text != "" && a != nil{
            
            repeat {
                a! -= 12
                year = a!
            }while a! > 12
            
            if year == 1 || Int(textField.text!) == 1{
                myLabel.text = dict["cock"]
                sound("cock")
                animalImage.image = UIImage(named: "cock")
                }else if year == 2 || Int(textField.text!) == 2{
                myLabel.text = dict["dog"]
                sound("dog")
                animalImage.image = UIImage(named: "dog")
                }else if year == 3 || Int(textField.text!) == 3{
                myLabel.text = dict["pig"]
                sound("pig")
                animalImage.image = UIImage(named: "pig")
                }else if year == 4 || Int(textField.text!) == 4{
                myLabel.text = dict["rat"]
                sound("rat")
                animalImage.image = UIImage(named: "rat")
                }else if year == 5 || Int(textField.text!) == 5{
                myLabel.text = dict["bull"]
                sound("bull")
                animalImage.image = UIImage(named: "bull")
                }else if year == 6 || Int(textField.text!) == 6{
                myLabel.text = dict["tiger"]
                sound("tiger")
                animalImage.image = UIImage(named: "tiger")
                }else if year == 7 || Int(textField.text!) == 7{
                myLabel.text = dict["rabbit"]
                sound("rabbit")
                animalImage.image = UIImage(named: "rabbit")
                }else if year == 8 || Int(textField.text!) == 8{
                myLabel.text = dict["dragon"]
                sound("dragon")
                animalImage.image = UIImage(named: "dragon")
                }else if year == 9 || Int(textField.text!) == 9{
                myLabel.text = dict["snake"]
                sound("snake")
                animalImage.image = UIImage(named: "snake")
                }else if year == 10 || Int(textField.text!) == 10{
                myLabel.text = dict["horse"]
                sound("horse")
                animalImage.image = UIImage(named: "horse")
                }else if year == 11 || Int(textField.text!) == 11{
                myLabel.text = dict["goat"]
                sound("goat")
                animalImage.image = UIImage(named: "goat")
                }else if year == 12 || Int(textField.text!) == 12{
                myLabel.text = dict["monkey"]
                sound("monkey")
                animalImage.image = UIImage(named: "monkey")
            }else if year < 1{
                myLabel.text = dict["era"]
                animalImage.image = UIImage(named: "question")
                sound("")
                if player.play() == true{
                    player.stop()
                }
                }else{
                myLabel.text = dict["def"]
                animalImage.image = UIImage(named: "question")
                if player.play() == true{
                    player.stop()
                }
            }
        }else{
            myLabel.text = dict["correctType"]
            
            animalImage.image = UIImage(named: "question")
            sound("")
            if player.play() == true{
                player.stop()
            }else{
                print ("Error")
            }
        }
        textField.text = ""
    }
    
    
    func sound (_ title: String?){
        do {
            if let audioPath = Bundle.main.path(forResource: title, ofType: "mp3"){
                try player = AVAudioPlayer(contentsOf:  URL(fileURLWithPath: audioPath))
            }
        } catch  {
            print ("Error")
        }
        player.play()
    }
    
}
