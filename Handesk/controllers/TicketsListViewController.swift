//
//  TicketsListViewController.swift
//  Handesk
//
//  Created by zombietux on 2020/03/30.
//  Copyright © 2020 zombietux. All rights reserved.
//

import UIKit

class TicketsListViewController: UIViewController, UITableViewDataSource {
    
    var tickets:[Ticket]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tickets.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") ?? UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel!.text = tickets[indexPath.row].title
        return cell
    }
}
