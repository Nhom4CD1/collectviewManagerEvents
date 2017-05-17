//
//  AddEventController.swift
//  UITableView_EventsManager_NTA
//
//  Created by THANH on 5/10/17.
//  Copyright © 2017 THANH. All rights reserved.
//

import UIKit

class AddEventController: UITableViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
        
        var days = ["Chủ Nhật","Thứ 2","Thứ 3","Thứ 4","Thứ 5","Thứ 6","Thứ 7"]
        //var pickDay = UIPickerView()
        @IBOutlet weak var txtFieldDay: UITextField!
        @IBOutlet weak var txtFieldTitle: UITextField!
        @IBOutlet weak var txtViewDescript: UITextView!
        @IBOutlet weak var imgEvent: UIImageView!
        override func viewDidLoad() {
            super.viewDidLoad()
            txtFieldDay.text = dayOfWeek()
            
            // Uncomment the following line to preserve selection between presentations
            // self.clearsSelectionOnViewWillAppear = false
            
            // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
            // self.navigationItem.rightBarButtonItem = self.editButtonItem()
            //txtFieldDay.text = Date().dayOfWeek()! // Auto set day of week
            //pickDay.delegate = self as? UIPickerViewDelegate
            //pickDay.dataSource = self as? UIPickerViewDataSource
            //txtFieldDay.inputView = pickDay
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
        @IBAction func btnSaveAction(_ sender: UIBarButtonItem) {
            if (txtFieldTitle.text!.isEmpty ||  txtViewDescript.text!.isEmpty || imgEvent.image == nil){
                //create alert
                let alert = UIAlertController(title: "Notification", message: "Please enter full information", preferredStyle: UIAlertControllerStyle.alert)
                //add an action
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                //show alert
                self.present(alert, animated: true, completion: nil)
            } else {
                Utilitys.isLoadDataAgain = true;
                let event: Event = Event(tenViec: txtFieldTitle.text!, noidungCV: txtViewDescript.text!, hinhanhCV: imgEvent.image!)
                Utilitys.congviec = event;
                //Utilitys.day = Date().dayOfWeek()
                Utilitys.ngay = txtFieldDay.text
                self.navigationController?.popViewController(animated: true)
            }
        }
        
        // MARK: - Pick a picture
        @IBAction func btnChooseImageAction(_ sender: UIButton) {
            let imagePickerController = UIImagePickerController()
            imagePickerController.delegate = self
            
            let actionSheet = UIAlertController(title: "Photo Source", message: "Choose a source", preferredStyle: .actionSheet)
            
            actionSheet.addAction(UIAlertAction(title: "Camera", style: .default, handler: { (action:UIAlertAction) in
                
                if UIImagePickerController.isSourceTypeAvailable(.camera) {
                    imagePickerController.sourceType = .camera
                    self.present(imagePickerController, animated: true, completion: nil)
                }else{
                    print("Camera not available")
                }
                
            }))
            
            actionSheet.addAction(UIAlertAction(title: "Photo Library", style: .default, handler: { (action:UIAlertAction) in
                imagePickerController.sourceType = .photoLibrary
                self.present(imagePickerController, animated: true, completion: nil)
            }))
            
            actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            
            self.present(actionSheet, animated: true, completion: nil)
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
            let image = info[UIImagePickerControllerOriginalImage] as! UIImage
            
            imgEvent.image = image
            
            picker.dismiss(animated: true, completion: nil)
        }
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            picker.dismiss(animated: true, completion: nil)
        }
        
        // MARK: - UITextFieldDelegate ( Keyboard will  disable when press return )
        // User must set delegate from this textfield to this view
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            textField.resignFirstResponder()
            return true
        }
        
        // UIScrollViewDelegate ( Keyboard will disable when scroll the UIView )
        override func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
            txtViewDescript.resignFirstResponder()
            txtFieldTitle.resignFirstResponder()
            txtFieldDay.resignFirstResponder()
        }
        
        //MARK: - Pick Day
        func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
            return 1
        }
        
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return days.count
        }
        
        //func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
          //  txtFieldDay.text = days[row]
        //}
        
        //func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            //return days[row]
        //}
        
    func getDayOfWeek(_ today:String) -> Int? {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        guard let todayDate = formatter.date(from: today) else { return nil }
        let myCalendar = Calendar(identifier: .gregorian)
        let weekDay = myCalendar.component(.weekday, from: todayDate)
        return weekDay
    }
    
    func currentDate() -> String? {
        let currentDate = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        let date = formatter.string(from: currentDate)
        return date
    }
    
    func dayOfWeek() -> String? {
        let day = getDayOfWeek(currentDate()!)
        if day == 1 {
            return "Chủ Nhật"
        } else if day == 2 {
            return "Thứ 2"
        } else if day == 3 {
            return "Thứ 3"
        } else if day == 4 {
            return "Thứ 4"
        } else if day == 5 {
            return "Thứ 5"
        } else if day == 6 {
            return "Thứ 6"
        } else {
            return "Thứ 7"
        }
    }
    
    // MARK: - Auto set day of week
   // extension Date {
        //func dayOfWeek() -> String? {
         //   let dateFormatter = DateFormatter()
          //  dateFormatter.dateFormat = "EEEE"
          //  return dateFormatter.string(from: self).capitalized
      //  }
}
