//
//  EventLines.swift
//  UITableView_EventsManager_NTA
//
//  Created by THANH on 4/27/17.
//  Copyright © 2017 THANH. All rights reserved.
//

import Foundation
import UIKit
class EventLines
{
    // Khai báo biến
    var dates: String            // ngày của sự kiện(event) được chọn
    var events: [Event]     //  Tất cả event trong ngày được chọn
    var dateImages: UIImage
    
    init(dateOfWeek: String, includeEvents: [Event], dateImage: UIImage)
    {
        dates = dateOfWeek     //Gán ngày trog tuần
        events = includeEvents //Gán các sự kiện
        dateImages = dateImage //Gán ảnh với ngày tương ứng
    }
    
    //Hàm trả về List các sụ kiện
    class func eventLines() -> [EventLines]
    {
        return [self.ngayChuNhat(),self.ngayThuHai(), self.ngayThuBa(), self.ngayThuTu(), self.ngayThuNam(), self.ngayThuSau(), self.ngayThuBay()]
    }
    
    // Hàm xử lí thêm sự kiện trong ngày Thứ Hai
    private class func ngayThuHai() -> EventLines {
        var events = [Event]()
        
        events.append(Event(tenViec: "Rửa mặt", noidungCV: "Rửa mặt", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Ăn Sáng", noidungCV: "Mua Hủ tiếu về ăn sáng ^^", hinhanhCV:#imageLiteral(resourceName: "thuBa")))
        events.append(Event(tenViec: "Lên Trường", noidungCV: "Đi học buổi sáng", hinhanhCV: #imageLiteral(resourceName: "thuTu")))
        events.append(Event(tenViec: "Học KTMT", noidungCV: "Học KTMT", hinhanhCV: #imageLiteral(resourceName: "thuNam")))
        events.append(Event(tenViec: "Học CĐ2", noidungCV: "Học CHuyên Đề 2", hinhanhCV: #imageLiteral(resourceName: "thuSau")))
        events.append(Event(tenViec: "Ăn Trưa", noidungCV: "Nghỉ ngơi ăn trưa", hinhanhCV: #imageLiteral(resourceName: "thuBay")))
        events.append(Event(tenViec: "Ngủ Trưa", noidungCV: "Ngủ trưa", hinhanhCV:#imageLiteral(resourceName: "ngayCN")))
        events.append(Event(tenViec: "Học CĐ3", noidungCV: "Học Chuyên ĐỀ 3", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Ăn Tối", noidungCV: "Nấu bữa tối", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Học AV", noidungCV: "Học Anh Văn", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        
        return EventLines(dateOfWeek: "Thứ 2 Khởi Động", includeEvents: events, dateImage: #imageLiteral(resourceName: "thuHai"))
    }
    
    // Hàm xử lí thêm sự kiện trong ngày Thứ Ba
    private class func ngayThuBa() -> EventLines {
        
        var events = [Event]()
        
        events.append(Event(tenViec: "Rửa mặt", noidungCV: "Rửa mặt", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Ăn Sáng", noidungCV: "Mua Hủ tiếu về ăn sáng ^^", hinhanhCV:#imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Lên Trường", noidungCV: "Đi học buổi sáng", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Học KTMT", noidungCV: "Học KTMT", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Học CĐ2", noidungCV: "Học CHuyên Đề 2", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Ăn Trưa", noidungCV: "Nghỉ ngơi ăn trưa", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Ngủ Trưa", noidungCV: "Ngủ trưa", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Học CĐ3", noidungCV: "Học Chuyên ĐỀ 3", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Ăn Tối", noidungCV: "Nấu bữa tối", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Học AV", noidungCV: "Học Anh Văn", hinhanhCV: #imageLiteral(resourceName: "thuHai")))

        
        return EventLines(dateOfWeek: "Thứ 3 Vượt chướng ngại vật", includeEvents: events, dateImage: #imageLiteral(resourceName: "thuBa"))
    }
    
    // Hàm xử lí thêm sự kiện trong ngày Thứ Tư
    private class func ngayThuTu() -> EventLines {
        
        var events = [Event]()
        
        events.append(Event(tenViec: "Rửa mặt", noidungCV: "Rửa mặt", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Ăn Sáng", noidungCV: "Mua Hủ tiếu về ăn sáng ^^", hinhanhCV:#imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Lên Trường", noidungCV: "Đi học buổi sáng", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Học KTMT", noidungCV: "Học KTMT", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Học CĐ2", noidungCV: "Học CHuyên Đề 2", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Ăn Trưa", noidungCV: "Nghỉ ngơi ăn trưa", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Ngủ Trưa", noidungCV: "Ngủ trưa", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Học CĐ3", noidungCV: "Học Chuyên ĐỀ 3", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Ăn Tối", noidungCV: "Nấu bữa tối", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Học AV", noidungCV: "Học Anh Văn", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        return EventLines(dateOfWeek: "Thứ 4 NOT YESTERDAY", includeEvents: events, dateImage: #imageLiteral(resourceName: "thuTu"))
    }
    
    // Hàm xử lí thêm sự kiện trong ngày Thu Năm
    private class func ngayThuNam() -> EventLines {
        
        var events = [Event]()
        
        events.append(Event(tenViec: "Rửa mặt", noidungCV: "Rửa mặt", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Ăn Sáng", noidungCV: "Mua Hủ tiếu về ăn sáng ^^", hinhanhCV:#imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Lên Trường", noidungCV: "Đi học buổi sáng", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Học KTMT", noidungCV: "Học KTMT", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Học CĐ2", noidungCV: "Học CHuyên Đề 2", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Ăn Trưa", noidungCV: "Nghỉ ngơi ăn trưa", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Ngủ Trưa", noidungCV: "Ngủ trưa", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Học CĐ3", noidungCV: "Học Chuyên ĐỀ 3", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Ăn Tối", noidungCV: "Nấu bữa tối", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Học AV", noidungCV: "Học Anh Văn", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        
        return EventLines(dateOfWeek: "Thứ 5 Tăng Tốc", includeEvents: events, dateImage: #imageLiteral(resourceName: "thuNam"))
    }
    
    // Hàm xử lí thêm sự kiện trong ngày Thứ Sáu
    private class func ngayThuSau() -> EventLines {
        
        var events = [Event]()
        
        events.append(Event(tenViec: "Rửa mặt", noidungCV: "Rửa mặt", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Ăn Sáng", noidungCV: "Mua Hủ tiếu về ăn sáng ^^", hinhanhCV:#imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Lên Trường", noidungCV: "Đi học buổi sáng", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Học KTMT", noidungCV: "Học KTMT", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Học CĐ2", noidungCV: "Học CHuyên Đề 2", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Ăn Trưa", noidungCV: "Nghỉ ngơi ăn trưa", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Ngủ Trưa", noidungCV: "Ngủ trưa", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Học CĐ3", noidungCV: "Học Chuyên ĐỀ 3", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Ăn Tối", noidungCV: "Nấu bữa tối", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Học AV", noidungCV: "Học Anh Văn", hinhanhCV: #imageLiteral(resourceName: "thuHai")))

        return EventLines(dateOfWeek: "Thứ 6 KEEP CALM", includeEvents: events, dateImage: #imageLiteral(resourceName: "thuSau"))
    }
    
    // Hàm xử lí thêm sự kiện trong ngày Thứ Bảy
    private class func ngayThuBay() -> EventLines {
        
        var events = [Event]()
        
        events.append(Event(tenViec: "Rửa mặt", noidungCV: "Rửa mặt", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Ăn Sáng", noidungCV: "Mua Hủ tiếu về ăn sáng ^^", hinhanhCV:#imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Lên Trường", noidungCV: "Đi học buổi sáng", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Học KTMT", noidungCV: "Học KTMT", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Học CĐ2", noidungCV: "Học CHuyên Đề 2", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Ăn Trưa", noidungCV: "Nghỉ ngơi ăn trưa", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Ngủ Trưa", noidungCV: "Ngủ trưa", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Học CĐ3", noidungCV: "Học Chuyên ĐỀ 3", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Ăn Tối", noidungCV: "Nấu bữa tối", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Học AV", noidungCV: "Học Anh Văn", hinhanhCV: #imageLiteral(resourceName: "thuHai")))

        
        return EventLines(dateOfWeek: "Thứ 7 VỀ ĐÍCH", includeEvents: events, dateImage: #imageLiteral(resourceName: "thuBay"))
    }
    
    // Hàm xử lí thêm sự kiện trong ngày Chủ Nhật
    private class func ngayChuNhat() -> EventLines {
        //  Khai báo biến chứa các sự kiện
        var events = [Event]()
        //Thêm nội dung vào List sự kiện
        events.append(Event(tenViec: "Rửa mặt", noidungCV: "Rửa mặt", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Ăn Sáng", noidungCV: "Mua Hủ tiếu về ăn sáng ^^", hinhanhCV:#imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Lên Trường", noidungCV: "Đi học buổi sáng", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Học KTMT", noidungCV: "Học KTMT", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Học CĐ2", noidungCV: "Học CHuyên Đề 2", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Ăn Trưa", noidungCV: "Nghỉ ngơi ăn trưa", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Ngủ Trưa", noidungCV: "Ngủ trưa", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Học CĐ3", noidungCV: "Học Chuyên ĐỀ 3", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Ăn Tối", noidungCV: "Nấu bữa tối", hinhanhCV: #imageLiteral(resourceName: "thuHai")))
        events.append(Event(tenViec: "Học AV", noidungCV: "Học Anh Văn", hinhanhCV: #imageLiteral(resourceName: "thuHai")))

        
        return EventLines(dateOfWeek: "Ngày Chủ Nhật CHUẨN BỊ", includeEvents: events, dateImage: #imageLiteral(resourceName: "ngayCN"))
    }
    
}
