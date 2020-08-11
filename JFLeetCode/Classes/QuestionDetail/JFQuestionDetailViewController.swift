//
//  JFQuestionDetailViewController.swift
//  JFLeetCode
//
//  Created by lin jianfang on 2020/7/27.
//  Copyright © 2020 lin jianfang. All rights reserved.
//

import UIKit

class JFQuestionDetailViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var exampleLabel: UILabel!
    
    var dict:[String:String] = [:]
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = dict["desc"]
        exampleLabel.text = dict["exam"]
        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func btnClick(_ sender: Any) {
        let id = dict["id"]
        if id == "1000" {
            print(twoNumberSum())
        }
    }
    
    func twoNumberSum() -> [Int] {
        let nums:[Int] = [3,3]
        let target = 6
        
        for i in 0..<nums.count{//第一次遍历数组 拿到第一个值
        
            for j in i+1..<nums.count{ //第二次遍历数组 从第二个元素开始 拿到第二个后面的值
                
                if i != j {
                    if nums[i] + nums[j] == target { //如果相加的值相等 那么 就是i ，j就是所需要的 下标
                        return [i,j]
                    }
                }
            }
        }
        return []
    }
    
}
