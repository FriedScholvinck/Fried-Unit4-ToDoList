//
//  ToDoCell.swift
//  ToDoList
//
//  Created by Fried on 28/11/2018.
//  Copyright © 2018 Fried. All rights reserved.
//

import UIKit

// define protocol with method that the cell back to the delegate
@objc protocol ToDoCellDelegate: class {
    func checkmarkTapped(sender: ToDoCell)
}

class ToDoCell: UITableViewCell {
    var delegate: ToDoCellDelegate?
    
    @IBOutlet weak var isCompleteButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    
    // inform delegate that button is tapped, passing in self as parameter
    @IBAction func completeButtonTapped(_ sender: UIButton) {
        delegate?.checkmarkTapped(sender: self)
        
    }
    

}
