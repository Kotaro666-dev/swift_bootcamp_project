//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var timer = Timer()
    var totalTime = 0
    var secondsPassed = 0
    var player: AVAudioPlayer!
    
    let eggTimes : [String: Int] = [
        "Soft": 300,
        "Medium": 420,
        "Hard": 720
//        "Soft": 3,
//        "Medium": 4,
//        "Hard": 5
    ]
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        initElemets()
        timer.invalidate()
        let hardness: String = sender.currentTitle!
        textLabel.text = hardness
        totalTime = eggTimes[hardness]!
        startTimer()
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(
            timeInterval: 1.0,
            target: self,
            selector: #selector(updateTimer),
            userInfo: nil,
            repeats: true)
    }
    
    func initElemets() {
        totalTime = 0
        secondsPassed = 0
        progressBar.progress = 0.0
    }
    
    @objc func updateTimer() {
        if(secondsPassed < totalTime) {
            secondsPassed += 1;
            let percentageProgress: Float = Float(secondsPassed) / Float(totalTime)
            progressBar.progress = percentageProgress
        } else {
            timer.invalidate()
            textLabel.text = "DONE!"
            playSound()
        }
    }
    
    func playSound() {
        let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player!.play()
    }
}
