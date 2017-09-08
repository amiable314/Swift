//
//  ViewController.swift
//  MyGuessNumber
//
//  Created by user18 on 2017/9/8.
//  Copyright © 2017年 Doris. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    var answer=""  //1
    @IBOutlet weak var guess: NSTextField!
    
    
    @IBOutlet weak var history: NSTextField!
    
    
    
    @IBAction func doGuess(_ sender: Any) {
        //answer=createAnswer()
        //print(answer)         //3
    
    }
    
    
    @IBAction func doReset(_ sender: Any) {
    }
    
    func createAnswer() -> String{
        var num=Array(0...9)
        //print(type(of:nums))
        num=shullfe(source:Array(num))
        var ret=""
        for v in 0..<3{
            ret+=String(num[v])
        }
        return ret
    }  //2
    
    
    
    func shullfe(source:Array<Int>) -> Array<Int> {
        var poker = source
        let n = poker.count
        var rand = -1
        var temp = -1
        var max = -1
        for i in 0..<n {
            max = n - i
            rand = Int(arc4random_uniform(UInt32(max)))
            
            // swap : poker[rand] <-> poker[last]
            temp = poker[rand];
            poker[rand] = poker[max-1]
            poker[max-1] = temp
        }
        return poker
    } //
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        answer = createAnswer()
        print(answer)
        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

