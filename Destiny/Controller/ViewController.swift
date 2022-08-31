//
//  ViewController.swift
//  Destiny
//
//  Created by Dmitry M. on 7/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    var storyBrain = StoryBrain()
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        updateUI()
    }
    
    func updateUI() {
        
        storyLabel.text = storyBrain.storyLabelText()
        choice1Button.setTitle(storyBrain.firstButtonOption(), for: .normal)
        choice2Button.setTitle(storyBrain.secondButtonOption(), for: .normal)
    }
}

