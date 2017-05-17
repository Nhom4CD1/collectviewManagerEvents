//
//  EventDetailController.swift
//  UITableView_EventsManager_NTA
//
//  Created by THANH on 4/27/17.
//  Copyright © 2017 THANH. All rights reserved.
//
import UIKit
class EventDetailController: UITableViewController{//, UITextViewDelegate, UITextFieldDelegate{
    
    //Model
    var event: Event?
    var dateEvent: String?
    var dateImages: UIImage?
    var dateEventDetail: String?
    
    //@IBOutlet weak var dateImage: UIImageView!
   // @IBOutlet weak var dateLabel: UILabel!
 //   @IBOutlet weak var txtEventTitle: UITextField!
    //@IBOutlet weak var eventDesciptionTextView: UITextView!
    
    //
    @IBOutlet weak var eventDetailDesLabel: UITextView!
    @IBOutlet weak var eventDetailTitleLabel: UITextField!
    @IBOutlet weak var eventDetailDayLabel: UILabel!
    @IBOutlet weak var eventDetailImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
       // dateImage.image = dateImages
        //txtEventTitle.text = event?.tenViec
        //eventDesciptionTextView.text = event?.noidungCV
        //dateLabel.text = dateEvent
        
        eventDetailDesLabel.text = event?.noidungCV
        eventDetailTitleLabel.text = event?.tenViec
        eventDetailImageView.image = event?.hinhanhCV
        eventDetailDayLabel.text = dateEventDetail
    }
    
    
    // Hàm được gọi khi người dùng quay lại màn hình trước đó ( this view will disappear )
    
    override func viewWillDisappear(_ animated: Bool) {

       event?.tenViec = eventDetailTitleLabel.text!
        event?.noidungCV = eventDetailTitleLabel.text! //Lấy nội dung event bên modal gán cho TextView hiển thị
    }
    

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    // UIScrollViewDelegate ( Disable Keyboard  khi cuôn (scroll) màn hình the UIView )
   // override func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
     //   eventDesciptionTextView.resignFirstResponder()
       // txtEventTitle.resignFirstResponder()
    //}
    //
    // UIScrollViewDelegate ( Keyboard will disable when scroll the UIView )
    override func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        eventDetailDesLabel.resignFirstResponder()
        eventDetailTitleLabel.resignFirstResponder()
    }

}
