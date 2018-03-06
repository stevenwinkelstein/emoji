//
//  TableViewController.swift
//  Emoji Dictionary
//
//  Created by Steven Winkelstein on 2/25/18.
//  Copyright © 2018 Steven Winkelstein. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var emoji = ["😀","😎","👿","👾","👽"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emoji.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        cell.textLabel?.text = emoji[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "OurSegwey", sender: nil)
        
    }
}
