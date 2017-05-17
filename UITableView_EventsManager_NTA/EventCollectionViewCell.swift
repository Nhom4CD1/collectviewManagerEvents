//
//  EventCollectionViewCell.swift
//  UITableView_EventsManager_NTA
//
//  Created by THANH on 5/6/17.
//  Copyright © 2017 THANH. All rights reserved.
//

import UIKit

class EventCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var eventLable: UILabel!
    @IBOutlet weak var eventImageView: UIImageView!
    
    func configCellWith(event: Event){
        eventLable.text = event.tenViec
        eventImageView.image = event.hinhanhCV
    }
}
