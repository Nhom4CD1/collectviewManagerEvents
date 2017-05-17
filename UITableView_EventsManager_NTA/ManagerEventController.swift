//
//  ManagerEventController.swift
//  UITableView_EventsManager_NTA
//
//  Created by THANH on 4/27/17.
//  Copyright © 2017 THANH. All rights reserved.
//

import UIKit
//var eventLines = EventLines.eventLines();
var heightofHeader : CGFloat = 44
//
struct StoryBoard {
    static let headerViewSection = "HeaderViewSection"
    static let eventCell = "EventCell"
    static let showDetailSegue = "XemChiTiet"
    
    static let leftAndRightPaddings: CGFloat = 2.0
    static let numberOfItemPerRow: CGFloat = 3.0
    
}
class ManagerEventController: UICollectionViewController{//UITableViewController {
    
    lazy var eventLines: [EventLines] = {
        return EventLines.eventLines()
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Uncomment the following line to preserve selection between presentations
         self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        //Show Edit Button
        self.navigationItem.rightBarButtonItem = self.editButtonItem//
        
        let collectionViewWidth = collectionView?.frame.width
        
        let itemWidth = (collectionViewWidth! - StoryBoard.leftAndRightPaddings) / StoryBoard.numberOfItemPerRow
        
        let layout = collectionViewLayout as! UICollectionViewFlowLayout
        
        layout.itemSize = CGSize(width: itemWidth, height: itemWidth)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
      //  tableView.reloadData()
        collectionView?.reloadData()
        if Utilitys.isLoadDataAgain{
            let day: String = Utilitys.ngay;
            let event: Event = Utilitys.congviec
            if day == "Chủ Nhật" {
                eventLines[0].events.append(event);
            }
            else if day == "Thứ 2" {
                eventLines[1].events.append(event)
            }
            else if day == "Thứ 3" {
                eventLines[2].events.append(event)
            }
            else if day == "Thứ 4" {
                eventLines[3].events.append(event)
            }
            else if day == "Thứ 5" {
                eventLines[4].events.append(event)
            }
            else if day == "Thứ 6" {
                eventLines[5].events.append(event)
            }
            else  {
                eventLines[6].events.append(event)
            }
            // eventInDays = EventInDay.eventInDays()
            collectionView?.reloadData()
            Utilitys.isLoadDataAgain = false;
        } else {
            collectionView?.reloadData()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    //override func numberOfSections(in tableView: UITableView) -> Int {
      //  return eventLines.count
    //}===> THAY BANG COLLECT VIEW
    
    // MARK: UICollectionViewDataSource A
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return eventLines.count
    }
    
    //override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
     //   let eventLine = eventLines[section]
      //  return eventLine.events.count // trả về số event trong section
   // }==>THAY BANG
    
    //So Item trong moi Section
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return eventLines[section].events.count
    }
    
    //Mark  Header Section Mặc định
   // override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
   //  let eventLine = eventLines[section]
     //return eventLine.dates // số dòng sự kiện mỗi ngày
    //}==> Thay Bang
    
    //MARK: - Config Header Section Cell
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let headerSectionView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: StoryBoard.headerViewSection, for: indexPath) as! HeaderViewSection
        
        let eventLine = eventLines[indexPath.section];
        
        headerSectionView.headerSectionLabel.text = eventLine.dates
        headerSectionView.headerSectionImage.image = eventLine.dateImages
        
        return headerSectionView
    }
    //Mark   Chỉnh sửa Header Section
    // Người dùng phải set height để show  section
    //override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    //    return heightofHeader
   // }==>Thay bang
    
  //  override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    //    let headerViewSection = Bundle.main.loadNibNamed("HeaderViewSection", owner: self, options: nil)?.first as! HeaderViewSection
        
      //  headerViewSection.headerSectionImage.image = eventLines[section].dateImages
        //headerViewSection.headerSectionLabel.text = eventLines[section].dates
        
        //return headerViewSection
    //}
    // Set data cho tableView
    /*override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CongViec_Cell", for: indexPath)
        
        let eventLine = eventLines[indexPath.section]
        let event = eventLine.events[indexPath.row]
        cell.textLabel?.text = event.tenViec
        //tenCV detail
        // Cấu hình, tuỳ chỉnh lại cell
        return cell
    }*/
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: StoryBoard.eventCell, for: indexPath) as! EventCollectionViewCell
        
        let event = eventLines[indexPath.section].events[indexPath.item];
        
        cell.configCellWith(event: event)
        return cell;
    }
    //DOAN LENH EDIT/DELETE
    // Override lại hàm tableView cho việc chỉnh sửa trên table view.
  //  override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
    //    if editingStyle == .delete {
            // Xoá một hàng từ data source
     //       let eventLine = eventLines[indexPath.section]
      //      eventLine.events.remove(at: indexPath.row)
        //    tableView.deleteRows(at: [indexPath], with: UITableViewRowAnimation.automatic
        //    )
            
     //   } else if editingStyle == .insert {
        // Tạo mới một instance thuộc  appropriate class, chèn nó vào mảng (array), và thêm (add) 1hàng mới (row) vào table view
       // }
   // }
    
    
    
    //Sắp xếp và Chuyển Data từ Section đến Section
  //  override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        //get data in sourceIndexPath
     //   let evenLine = eventLines[sourceIndexPath.section];
     //   let event = evenLine.events[sourceIndexPath.row];
        
     //   evenLine.events.remove(at: sourceIndexPath.row)
        
     //   let evenLineDes = eventLines[destinationIndexPath.section];
      //  evenLineDes.events.insert(event, at: destinationIndexPath.row);
      //
 //   }
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
   /* override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Lấy về new view controller sử dụng segue.destinationViewController.
        // Pass đối tượng đã chọn (the selected object) đến view controller mới.
        
        if (segue.identifier == "ChiTiet_CongViec") {
            // Khởi tạo một view controller và cast nó vào view controller
            let eventDetailVC = segue.destination as! EventDetailController
            if let indexPath = self.tableView.indexPathForSelectedRow{
                eventDetailVC.event = eventAtIndexPath(indexPath: indexPath as NSIndexPath)
                eventDetailVC.dateEvent = dateAtIndexPath(indexPath: indexPath as NSIndexPath)
                eventDetailVC.dateImages = imageAtIndexPath(indexPath: indexPath as NSIndexPath)
            }
        }
    }*/
    // MARK: - UICollectionViewDelegate
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        self.performSegue(withIdentifier: StoryBoard.showDetailSegue, sender: indexPath);
    }
    
    // MARK: - Event Detail
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == StoryBoard.showDetailSegue {
            let eventDetailVC = segue.destination as! EventDetailController
            let index = sender as! IndexPath
            
            let evenLine = eventLines[index.section];
            //let event = eventLine.events[index.item];
            let event = evenLine.events[index.item]
            
            
            eventDetailVC.event = event
            eventDetailVC.dateEventDetail = evenLine.dates
            
        }
    }
    
    //Lấy Công việc, sự kiện (event) dựa trên indexPath
    func eventAtIndexPath(indexPath: NSIndexPath) -> Event{
        let eventLine = eventLines[indexPath.section]
        return eventLine.events[indexPath.row]
    }
    
    //Lấy Thứ(date) dựa trên indexPath
    func dateAtIndexPath(indexPath: NSIndexPath) -> String{
        let eventLine = eventLines[indexPath.section]
        return eventLine.dates
    }
    
    //Lấy image nhờ indexPath
    func imageAtIndexPath(indexPath: NSIndexPath) -> UIImage{
        let eventLine = eventLines[indexPath.section]
        return eventLine.dateImages
    }
    
    //Animation cho TableView
    /*func animateTable() {
        
        let cells = tableView.visibleCells
        let tableViewHeight = tableView.bounds.size.height
    
        for cell in cells {
            cell.transform = CGAffineTransform(translationX: 0, y: tableViewHeight)
        }
        
        var delayCounter = 0
        for cell in cells {
            UIView.animate(withDuration: 0.5, delay: Double(delayCounter) * 0.05, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                cell.transform = CGAffineTransform.identity
            }, completion: nil)
            delayCounter += 1
        }*/
    
}
