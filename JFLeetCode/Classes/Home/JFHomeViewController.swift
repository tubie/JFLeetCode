//
//  JFHomeViewController.swift
//  JFLeetCode
//
//  Created by lin jianfang on 2020/7/27.
//  Copyright © 2020 lin jianfang. All rights reserved.
//

import UIKit

class JFHomeViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var titleArray = ["数组和字符串","递归","堆栈","排序","场景"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView.init()
        tableView.rowHeight = 50
        
        // Do any additional setup after loading the view.
    }
    
    @available(iOS 2.0, *)
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return titleArray.count
    }

    
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
    
    @available(iOS 2.0, *)
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = JFHomeTableViewCell.cellWithTableView(tableView: tableView)
        cell.jfHomeTableViewCellTitle = titleArray[indexPath.row]
        return cell
    }
    
    @available(iOS 2.0, *)
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        tableView.deselectRow(at: indexPath, animated: true)
        switch indexPath.row {
        case 0:
            self.navigationController?.pushViewController(JFArrayAndStringViewController.init(), animated: true)
        default:
            print(indexPath.row)
            
        }
       
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

