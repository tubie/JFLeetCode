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
        let nums:[Int] = [2, 7, 11, 15]
        let target = 13
        var sumIndexArray:[Int] = []
        for item in nums {
            let c =  target - item
            for item2 in nums{
                if c ==  item2 {
                    let index = nums.firstIndex(of: item)!
                    let index2 = nums.firstIndex(of: c)!
                    sumIndexArray = [index , index2]
                    return sumIndexArray
                }
            }
        }
        return sumIndexArray
    }
    
}
