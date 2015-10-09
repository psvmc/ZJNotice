//
//  ViewController.swift
//  ZJNoticeDemo
//
//  Created by 张剑 on 15/10/9.
//  Copyright © 2015年 张剑. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var segmentedType: UISegmentedControl!
    @IBOutlet weak var segmentedEffect: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func clearWaitAction(sender: AnyObject) {
        self.clearWaitNotice();
    }
    
    @IBAction func clearAllAction(sender: AnyObject) {
        self.clearAllNotice();
    }
    
    @IBAction func showEffectAction(sender: AnyObject) {
        let typeIndex:Int = segmentedType.selectedSegmentIndex;
        let effectIndex:Int = segmentedEffect.selectedSegmentIndex;
        let result = (typeIndex,effectIndex);
        
        switch result {
        case (0,0):
            self.showNoticeText("我是文字我是文字我是文字我是文字我是文字")
            break;
        case (0,1):
            self.showNoticeText("我是文字我是文字我是文字我是文字我是文字", time: 1.2)
            break;
        case (0,2):
            self.showNoticeText("我是文字我是文字我是文字我是文字我是文字", time: 1.2, callbackBlock: {
                self.showNoticeText("我是回调", time: 1.2);
            })
            break;
        case (1,0):
            self.showNoticeWait();
            break;
        case (1,1):
            self.showNoticeWait(1.2);
            break;
        case (1,2):
            self.showNoticeWait(1.2, callbackBlock: {
                self.showNoticeText("我是回调", time: 1.2);
            })
            break;
        case (2,0):
            self.showNoticeWait(text: "我是文字");
            break;
        case (2,1):
            self.showNoticeWait("我是文字", time: 1.2)
            break;
        case (2,2):
            self.showNoticeWait("我是文字", time: 1.2, callbackBlock: {
                self.showNoticeText("我是回调", time: 1.2);
            })
            break;
        case (3,0):
            self.showNoticeSuc("我是文字");
            break;
        case (3,1):
            self.showNoticeSuc("我是文字", time: 1.2)
            break;
        case (3,2):
            self.showNoticeSuc("我是文字", time: 1.2, callbackBlock: {
                self.showNoticeText("我是回调", time: 1.2);
            })
            break;
        case (4,0):
            self.showNoticeErr("我是文字");
            break;
        case (4,1):
            self.showNoticeErr("我是文字", time: 1.2)
            break;
        case (4,2):
            self.showNoticeErr("我是文字", time: 1.2, callbackBlock: {
                self.showNoticeText("我是回调", time: 1.2);
            })
            break;
        case (5,0):
            self.showNoticeInfo("我是文字")
            break;
        case (5,1):
            self.showNoticeInfo("我是文字", time: 1.2)
            break;
        case (5,2):
            self.showNoticeInfo("我是文字", time: 1.2, callbackBlock: {
                self.showNoticeText("我是回调", time: 1.2);
            })
            break;
        default:
            break;
            
        }
    }
    
}

