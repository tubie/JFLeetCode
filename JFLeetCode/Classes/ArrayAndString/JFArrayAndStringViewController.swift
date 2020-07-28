//
//  JFArrayAndStringViewController.swift
//  JFLeetCode
//
//  Created by lin jianfang on 2020/7/27.
//  Copyright © 2020 lin jianfang. All rights reserved.
//

import UIKit

class JFArrayAndStringViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
  
    @IBOutlet weak var tableView: UITableView!
    let questionList = [
        ["title":"两数之和",
         "desc":"给定一个整数数组 nums 和一个目标值 target，请你在该数组中找出和为目标值的那 两个 整数，并返回他们的数组下标。",
         "exam":"给定 nums = [2, 7, 11, 15], target = 9因为 nums[0] + nums[1] = 2 + 7 = 9所以返回 [0, 1]",
         "id":"1000"
        ],
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView.init()
        tableView.rowHeight = 50
        // Do any additional setup after loading the view.
    }
    
      func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questionList.count
      }
      
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =
        JFHomeTableViewCell.cellWithTableView(tableView: tableView)
        let dict = questionList[indexPath.row]
        cell.jfHomeTableViewCellTitle = dict["title"]
        return cell
      }
    
    @available(iOS 2.0, *)
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        tableView.deselectRow(at: indexPath, animated: true)
        
        let dict = questionList[indexPath.row]

        let vc = JFQuestionDetailViewController.init()
        vc.dict = dict
        self.navigationController?.pushViewController(vc, animated: true)
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
