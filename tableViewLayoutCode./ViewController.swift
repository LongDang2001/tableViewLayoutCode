//
//  ViewController.swift
//  tableViewLayoutCode.
//
//  Created by admin on 6/29/20.
//  Copyright © 2020 Long. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    // khai báo tableView khi không outlet
    var tableView: UITableView = UITableView()
    var arrayData: [String] = ["One","Two","Three"]
    var arrayTitle: [String] = ["mot","hai","ba"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // dùng để nhận ra dạng delegate và datasource, nếu ko có thì các hàm ở dưới sẽ không hiểu.
        tableView.delegate = self
        tableView.dataSource = self
        // khai báo một bối cảnh main của tableView bằng bối cảnh của UIScreen
        let mainScreen = UIScreen.main.bounds
        // khai báo chiều rộng của tableView
        let scrennWidth = mainScreen.width
        // khai báo chiều cao của tableView.
        let scrennHeight = mainScreen.height
        
        // tạo bố cục với khung của tableView.
        tableView.frame = CGRect(x: 0, y: 0, width: scrennWidth, height: scrennHeight)
        
        // đặt idCell bằng code cho tableViewCell
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "IDCell")
        
        
        // dùng để thêm các view vào tableView hay có phương thức này thì nó mới hiển thị lên màn hình đc.
        view.addSubview(tableView)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrayData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "IDCell", for: indexPath)
        // đặt loại kiểu cho tableView gán cell = với kiểu subtitle
        cell = UITableViewCell(style: .subtitle, reuseIdentifier: "IDCell")
        cell.textLabel?.text = arrayData[indexPath.row]
        cell.detailTextLabel?.text = arrayTitle[indexPath.row]
        return cell
    }


}

