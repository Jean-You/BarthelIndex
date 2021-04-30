//
//  mainViewController.swift
//  BarthelIndex
//
//  Created by Jeanyou on 2021/4/17.
//

import UIKit

class mainViewController: UIViewController {
    
    var totalScores = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    var currentIndex: Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var optionsButton: [UIButton]!
    @IBOutlet weak var totalScoreLabel: UILabel!
    @IBOutlet weak var nextButtonView: UIButton!
    
    
     let qnas = [
         qna(question: "一、進食", option0: "可自行使用餐具或輔具進食", option1: "需他人協助使用餐具或輔具進食", option2: "無法自行進食", option3: "", score0: 10, score1: 5, score2: 0, score3: nil),
         qna(question: "二、移位(平躺到坐起、床鋪至輪椅)", option0: "可自行完成移位，不需任何協助", option1: "移位時需他人輕微協助，或有安全上之顧慮", option2: "可自行坐起，但需他人協助才能移位", option3: "需他人協助坐起，或需兩人幫忙方可移位", score0: 15, score1: 10, score2: 5, score3: 0),
         qna(question: "三、個人衛生(包含盥洗、梳頭髮及刮鬍子)", option0: "可自行完成", option1: "需他人協助", option2: "", option3: "", score0: 5, score1: 0, score2: nil, score3: nil),
         qna(question: "四、如廁(包含穿脫衣褲、擦拭和沖水)", option0: "可自行完成如廁，不需任何協助", option1: "需他人協助保持平衡、整理衣物或擦拭", option2: "無法自行完成", option3: "", score0: 10, score1: 5, score2: 0, score3: nil),
         qna(question: "五、洗澡", option0: "可自行完成盆浴或淋浴", option1: "需他人協助完成動作", option2: "", option3: "", score0: 5, score1: 0, score2: nil, score3: nil),
         qna(question: "六、平地走動", option0: "可自行走動，或使用輔具可前進50公尺以上", option1: "稍微扶持或口頭指導下，可前進50公尺以上", option2: "無法行走，但可操作輔具前進50公尺以上", option3: "需要別人幫忙", score0: 15, score1: 10, score2: 5, score3: 0),
         qna(question: "七、上下樓梯", option0: "可自行上下樓梯", option1: "稍微扶持或口頭指導下，可自行上下樓梯", option2: "無法上下樓梯", option3: "", score0: 10, score1: 5, score2: 0, score3: nil),
         qna(question: "八、穿脫衣褲鞋襪", option0: "可自行完成、必要時使用輔具", option1: "他人協助下可自行完成一半以上動作", option2: "需要別人完全幫忙", option3: "", score0: 10, score1: 5, score2: 0, score3: nil),
         qna(question: "九、大便控制", option0: "不會失禁，必要時可自行使用塞劑", option1: "每週少於一次失禁，使用塞劑時需他人協助", option2: "失禁或需要灌腸", option3: "", score0: 10, score1: 5, score2: 0, score3: nil),
         qna(question: "十、小便控制", option0: "沒有尿失禁、可自行使用並清理尿布", option1: "每週少於一次失禁，使用尿布時需他人協助", option2: "失禁或需要導尿", option3: "", score0: 10, score1: 5, score2: 0, score3: nil)
     ]
    

    override func viewDidLoad() {
        super.viewDidLoad()
     
        questionLabel.text = qnas[0].question
        optionsButton[0].setTitle(qnas[0].option0, for: .normal)
        optionsButton[1].setTitle(qnas[0].option1, for: .normal)
        optionsButton[2].setTitle(qnas[0].option2, for: .normal)
        optionsButton[3].isHidden = true
        optionsButton[3].isEnabled = false
        nextButtonView.isHidden = true
        
    }
    
    
    @IBAction func option0Selected(_ sender: Any) {
        optionsButton[0].backgroundColor = UIColor(red: 171/255, green: 174/255, blue: 211/255, alpha: 1.0)
        optionsButton[1].backgroundColor = UIColor(red: 241/255, green: 201/255, blue: 196/255, alpha: 1.0)
        optionsButton[2].backgroundColor = UIColor(red: 241/255, green: 201/255, blue: 196/255, alpha: 1.0)
        optionsButton[3].backgroundColor = UIColor(red: 241/255, green: 201/255, blue: 196/255, alpha: 1.0)
        totalScores[currentIndex+1] = totalScores[currentIndex] + qnas[currentIndex].score0
        totalScoreLabel.text = "\(totalScores[currentIndex+1] )"
        nextButtonView.isHidden = false
    }
    
    
    @IBAction func option1Selected(_ sender: Any) {
        optionsButton[0].backgroundColor = UIColor(red: 241/255, green: 201/255, blue: 196/255, alpha: 1.0)
        optionsButton[1].backgroundColor = UIColor(red: 171/255, green: 174/255, blue: 211/255, alpha: 1.0)
        optionsButton[2].backgroundColor = UIColor(red: 241/255, green: 201/255, blue: 196/255, alpha: 1.0)
        optionsButton[3].backgroundColor = UIColor(red: 241/255, green: 201/255, blue: 196/255, alpha: 1.0)
        totalScores[currentIndex+1] = totalScores[currentIndex] + qnas[currentIndex].score1
        totalScoreLabel.text = "\(totalScores[currentIndex+1] )"
        nextButtonView.isHidden = false
    }
    
    
    @IBAction func option2Selected(_ sender: Any) {
        optionsButton[0].backgroundColor = UIColor(red: 241/255, green: 201/255, blue: 196/255, alpha: 1.0)
        optionsButton[1].backgroundColor = UIColor(red: 241/255, green: 201/255, blue: 196/255, alpha: 1.0)
        optionsButton[2].backgroundColor = UIColor(red: 171/255, green: 174/255, blue: 211/255, alpha: 1.0)
        optionsButton[3].backgroundColor = UIColor(red: 241/255, green: 201/255, blue: 196/255, alpha: 1.0)
        totalScores[currentIndex+1] = totalScores[currentIndex] + qnas[currentIndex].score2!
        totalScoreLabel.text = "\(totalScores[currentIndex+1] )"
        nextButtonView.isHidden = false
    }
    
    
    @IBAction func option3Selected(_ sender: Any) {
        optionsButton[0].backgroundColor = UIColor(red: 241/255, green: 201/255, blue: 196/255, alpha: 1.0)
        optionsButton[1].backgroundColor = UIColor(red: 241/255, green: 201/255, blue: 196/255, alpha: 1.0)
        optionsButton[2].backgroundColor = UIColor(red: 241/255, green: 201/255, blue: 196/255, alpha: 1.0)
        optionsButton[3].backgroundColor = UIColor(red: 171/255, green: 174/255, blue: 211/255, alpha: 1.0)
        totalScores[currentIndex+1] = totalScores[currentIndex] + qnas[currentIndex].score3!
        totalScoreLabel.text = "\(totalScores[currentIndex+1] )"
        nextButtonView.isHidden = false
    }
    
    
    @IBAction func nextButton(_ sender: Any) {
        
        optionsButton[0].backgroundColor = UIColor(red: 241/255, green: 201/255, blue: 196/255, alpha: 1.0)
        optionsButton[1].backgroundColor = UIColor(red: 241/255, green: 201/255, blue: 196/255, alpha: 1.0)
        optionsButton[2].backgroundColor = UIColor(red: 241/255, green: 201/255, blue: 196/255, alpha: 1.0)
        optionsButton[3].backgroundColor = UIColor(red: 241/255, green: 201/255, blue: 196/255, alpha: 1.0)
        
        if currentIndex < 9 {
        currentIndex+=1
        questionLabel.text = qnas[currentIndex].question
        optionsButton[0].setTitle(qnas[currentIndex].option0, for: .normal)
        optionsButton[1].setTitle(qnas[currentIndex].option1, for: .normal)
            if qnas[currentIndex].option2 == ""{
                optionsButton[2].isHidden = true
                optionsButton[2].isEnabled = false
                optionsButton[3].isHidden = true
                optionsButton[3].isEnabled = false
            } else if (qnas[currentIndex].option2 != "") && (qnas[currentIndex].option3 == ""){
                optionsButton[2].isHidden = false
                optionsButton[2].isEnabled = true
                optionsButton[2].setTitle(qnas[currentIndex].option2, for: .normal)
                optionsButton[3].isHidden = true
                optionsButton[3].isEnabled = false
            } else {
                optionsButton[2].isHidden = false
                optionsButton[2].isEnabled = true
                optionsButton[2].setTitle(qnas[currentIndex].option2, for: .normal)
                optionsButton[3].isHidden = false
                optionsButton[3].isEnabled = true
                optionsButton[3].setTitle(qnas[currentIndex].option3, for: .normal)
            }
        
        } else {
            
        performSegue(withIdentifier: "showResult", sender: nil)
            
        }
        
    }
    
    
    
    
    @IBSegueAction func showResult(_ coder: NSCoder) -> resultViewController? {
        let controller = resultViewController(coder: coder)
        controller?.score = totalScores[10]
        return controller
    }
    
    
    

}
