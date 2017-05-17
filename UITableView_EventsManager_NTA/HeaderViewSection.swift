//
//  HeaderViewSection.swift
//  UITableView_EventsManager_NTA
//
//  Created by THANH on 4/29/17.
//  Copyright © 2017 THANH. All rights reserved.
//

import UIKit

class HeaderViewSection: UICollectionReusableView//UITableViewCell
{

    @IBOutlet weak var headerSectionImage: UIImageView!
    @IBOutlet weak var headerSectionLabel: UILabel!
           // Initialization code
    

    var eventDates: EventLines!{
        didSet{
            headerSectionLabel.text = eventDates.dates
            headerSectionImage.image = eventDates.dateImages
        }
    }    //Lỗi
    //Xoá file(Move to Trash) nhưng không xoá tham chiếu(Reference), chương trình vẫn chạy nhưng hiện warning, Em chưa khắc phục được
}
