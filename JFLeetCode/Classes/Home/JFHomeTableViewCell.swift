//
//  JFHomeTableViewCell.swift
//  JFLeetCode
//
//  Created by lin jianfang on 2020/7/27.
//  Copyright © 2020 lin jianfang. All rights reserved.
//

import UIKit

class JFHomeTableViewCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    
    open var jfHomeTableViewCellTitle:String?{
        didSet{
            label.text = jfHomeTableViewCellTitle
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    class func cellWithTableView(tableView:UITableView) ->JFHomeTableViewCell{
        var cell = tableView.dequeueReusableCell(withIdentifier: "JFHomeTableViewCell")
        if cell == nil {
            cell = Bundle.main.loadNibNamed("JFHomeTableViewCell", owner: nil, options: nil)?.last as? UITableViewCell
        }
        return cell as! JFHomeTableViewCell
    }
    
}
