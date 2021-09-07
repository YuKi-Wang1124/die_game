//
//  ViewController.swift
//  骰子轉轉轉
//
//  Created by 王昱淇 on 2021/9/7.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftOneImageView: UIImageView!
    @IBOutlet weak var leftTwoImageView: UIImageView!
    @IBOutlet weak var leftThreeImageView: UIImageView!
    @IBOutlet weak var rightOneImageView: UIImageView!
    @IBOutlet weak var rightTwoImageView: UIImageView!
    @IBOutlet weak var rightThreeImageView: UIImageView!
    @IBOutlet weak var bankruptImageView: UIImageView!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var leftTotalLabel: UILabel!
    @IBOutlet weak var rightTotalLabel: UILabel!
    @IBOutlet weak var playerMoneyLabel: UILabel!
    @IBOutlet weak var betLabel: UILabel!
    @IBOutlet weak var winOrLoseLabel: UILabel!
    
    @IBOutlet weak var moneyLabel: UILabel!
    @IBOutlet weak var moneyStepper: UIStepper!
    
    let imageNames = ["one","two","three","four","five","six"]
    
    var playerMoney = 100000
    var bet = 1000
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bankruptImageView.isHidden = true
    }

    @IBAction func increaseBet(_ sender: Any) {
        bet = Int(5000 * (moneyStepper.value))
        moneyLabel.text = "\(bet)"
    }
    
    @IBAction func changeRightDie(_ sender: Any) {

        let leftOneRadom = Int.random(in: 0...5)
        let leftTwoRadom = Int.random(in: 0...5)
        let leftThreeRadom = Int.random(in: 0...5)
        let rightOneRadom = Int.random(in: 0...5)
        let rightTwoRadom = Int.random(in: 0...5)
        let rightThreeRadom = Int.random(in: 0...5)
        
        leftOneImageView.image = UIImage(named: imageNames[leftOneRadom])
        leftTwoImageView.image = UIImage(named: imageNames[leftTwoRadom])
        leftThreeImageView.image = UIImage(named: imageNames[leftThreeRadom])
        
        leftTotalLabel.text = "\(leftOneRadom + leftTwoRadom + leftThreeRadom + 3)"
        
        rightOneImageView.image = UIImage(named: imageNames[rightOneRadom])
        rightTwoImageView.image = UIImage(named: imageNames[rightTwoRadom])
        rightThreeImageView.image = UIImage(named: imageNames[rightThreeRadom])
        
        rightTotalLabel.text = "\(rightOneRadom + rightTwoRadom + rightThreeRadom + 3)"
        
        let leftNumber = Int(leftTotalLabel.text!)
        let rightNumber = Int(rightTotalLabel.text!)
    
        if segmentedControl.selectedSegmentIndex == 0 {
            if leftNumber! > rightNumber! {
                playerMoneyLabel.text = "\(playerMoney - bet)"
                winOrLoseLabel.text = "比大～ 你輸了！ 賠\(bet) 元"
            } else if leftNumber! < rightNumber! {
                playerMoneyLabel.text = "\(playerMoney + bet)"
                winOrLoseLabel.text = "比大～ 你贏了！ 賺\(bet) 元"
            } else if leftNumber! == rightNumber! {
                playerMoneyLabel.text = "\(playerMoney)"
                winOrLoseLabel.text = "和莊家點數一樣！平手！"
            }
            
        } else if segmentedControl.selectedSegmentIndex == 1 {
            if leftNumber! > rightNumber! {
                playerMoneyLabel.text = "\(playerMoney + bet)"
                winOrLoseLabel.text = "比小～ 你贏了！ 賺\(bet) 元"
            } else if leftNumber! < rightNumber! {
                playerMoneyLabel.text = "\(playerMoney - bet)"
                winOrLoseLabel.text = "比小～ 你輸了！ 賠\(bet) 元"
            } else if leftNumber! == rightNumber! {
                playerMoneyLabel.text = "\(playerMoney)"
                winOrLoseLabel.text = "和莊家點數一樣！平手！"
            }
            }
       
            playerMoney = Int(playerMoneyLabel.text!)!
            
            if playerMoney == 0 {
                bankruptImageView.isHidden = false
            }
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?)
    {
    //放入手機搖晃後執行的程式碼，所以會跟button Action的內容一樣。
        let leftOneRadom = Int.random(in: 0...5)
        let leftTwoRadom = Int.random(in: 0...5)
        let leftThreeRadom = Int.random(in: 0...5)
        let rightOneRadom = Int.random(in: 0...5)
        let rightTwoRadom = Int.random(in: 0...5)
        let rightThreeRadom = Int.random(in: 0...5)
        
        leftOneImageView.image = UIImage(named: imageNames[leftOneRadom])
        leftTwoImageView.image = UIImage(named: imageNames[leftTwoRadom])
        leftThreeImageView.image = UIImage(named: imageNames[leftThreeRadom])
        
        leftTotalLabel.text = "\(leftOneRadom + leftTwoRadom + leftThreeRadom + 3)"
        
        rightOneImageView.image = UIImage(named: imageNames[rightOneRadom])
        rightTwoImageView.image = UIImage(named: imageNames[rightTwoRadom])
        rightThreeImageView.image = UIImage(named: imageNames[rightThreeRadom])
        
        rightTotalLabel.text = "\(rightOneRadom + rightTwoRadom + rightThreeRadom + 3)"
        
        let leftNumber = Int(leftTotalLabel.text!)
        let rightNumber = Int(rightTotalLabel.text!)
    
        if segmentedControl.selectedSegmentIndex == 0 {
            if leftNumber! > rightNumber! {
                playerMoneyLabel.text = "\(playerMoney - bet)"
                winOrLoseLabel.text = "比大～ 你輸了！ 賠\(bet) 元"
            } else if leftNumber! < rightNumber! {
                playerMoneyLabel.text = "\(playerMoney + bet)"
                winOrLoseLabel.text = "比大～ 你贏了！ 賺\(bet) 元"
            } else if leftNumber! == rightNumber! {
                playerMoneyLabel.text = "\(playerMoney)"
                winOrLoseLabel.text = "和莊家點數一樣！平手！"
            }
            
        } else if segmentedControl.selectedSegmentIndex == 1 {
            if leftNumber! > rightNumber! {
                playerMoneyLabel.text = "\(playerMoney + bet)"
                winOrLoseLabel.text = "比小～ 你贏了！ 賺\(bet) 元"
            } else if leftNumber! < rightNumber! {
                playerMoneyLabel.text = "\(playerMoney - bet)"
                winOrLoseLabel.text = "比小～ 你輸了！ 賠\(bet) 元"
            } else if leftNumber! == rightNumber! {
                playerMoneyLabel.text = "\(playerMoney)"
                winOrLoseLabel.text = "和莊家點數一樣！平手！"
            }
            }
       
            playerMoney = Int(playerMoneyLabel.text!)!
            
            if playerMoney == 0 {
                bankruptImageView.isHidden = false
            }
    }
    
    @IBAction func reset(_ sender: Any) {
        playerMoney = 100000
        playerMoneyLabel.text = "\(playerMoney)"
        bet = 1000
        moneyLabel.text = "\(bet)"
        leftTotalLabel.text = ""
        rightTotalLabel.text = ""
        winOrLoseLabel.text = ""
        bankruptImageView.isHidden = true
    }
    
    
    @IBAction func allIn(_ sender: Any) {
        bet = playerMoney
        moneyLabel.text = "\(bet)"
    }
}

