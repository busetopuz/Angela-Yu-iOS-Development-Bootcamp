//
//  ViewController.swift
//  EggTimer
//
//  Created by Buse Topuz on 11.07.2022.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var label: UILabel!
    
    var player: AVAudioPlayer!
    let softTime = 5
    let mediumTime = 7
    let hardTime = 12
    let eggTimes = ["Soft": 3, "Medium": 300, "Hard": 7 ]
    var totalTime = 0
    var secondPassed = 0
    var timer = Timer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        progressBar.progress = 0.0
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        let hardness = sender.currentTitle!
        totalTime = eggTimes[hardness]!
        progressBar.progress = 0.0
        secondPassed = 0
        label.text = hardness
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)

}
    
    @objc func updateTimer(){
        if secondPassed < totalTime {
            secondPassed += 1
            progressBar.progress = Float(secondPassed)/Float(totalTime)
           
        } else  {
            playSound()
            timer.invalidate()
            print("done")
            label.text = "done"
        }
    }
    
    func playSound() {
        let url = Bundle.main.url(forResource: "EggTimer_alarm_sound", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }

}
