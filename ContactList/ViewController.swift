//
//  ViewController.swift
//  ContactList
//
//  Created by 강루비 on 2022/01/20.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    let contactNameArray: [String] = ["홍길동1", "홍길동2", "홍길동3", "홍길동4", "홍길동5", "홍길동6", "홍길동7", "홍길동8", "홍길동9", "홍길동10"]
    let contactPhoneArray: [String] = ["010-0000-0000", "010-1111-1111", "010-2222-2222", "010-3333-3333", "010-4444-4444", "010-5555-5555", "010-6666-6666", "010-7777-7777", "010-8888-8888", "010-9999-9999"]

    override func viewDidLoad() {
        super.viewDidLoad()
       
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactNameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath) as? ContactTableViewCell else { return UITableViewCell() }
        
        let name = contactNameArray[indexPath.row]
        cell.nameLabel.text = name
        
        let phone = contactPhoneArray[indexPath.row]
        cell.phoneLabel.text = phone
        
        return cell
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }

}

