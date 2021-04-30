//
//  resultViewController.swift
//  BarthelIndex
//
//  Created by Jeanyou on 2021/4/17.
//

import UIKit

class resultViewController: UIViewController {
    
    var score: Int?
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        scoreLabel.text = "\(score!)"
        resultByScore()
        
    }
    
    func resultByScore() {
        switch score! {
        case 0...20:
            resultLabel.text = "結果：完全依賴"
        case 21...60:
            resultLabel.text = "結果：嚴重依賴"
        case 61...90:
            resultLabel.text = "結果：中度依賴"
        case 91...99:
            resultLabel.text = "結果：輕度依賴"
        default:
            resultLabel.text = "結果：完全獨立"
        }
        
    }
    
    
    @IBAction func testAgain(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
   

}
