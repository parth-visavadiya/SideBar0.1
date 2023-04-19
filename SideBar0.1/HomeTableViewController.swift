//
//  HomeTableViewController.swift
//  SideBar0.1
//
//  Created by parth visavadiya on 12/04/23.
//

import UIKit

struct Options{
    var name: String
    var image: String
}
class HomeTableViewController: UITableViewController {
    
    // MARK: - var
    var arrOptions: [Options] = []
    var selectedIndex: Int = -1
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        loadOptions()
    }

    // MARK: - function
    private func loadOptions() {
        arrOptions = [Options(name: "Home", image: "fireplace"),
                      Options(name: "About Us", image: "fireplace")]
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrOptions.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell()
        cell.textLabel?.text = arrOptions[indexPath.row].name
        cell.imageView?.image = UIImage(named: arrOptions[indexPath.row].image)
        cell.selectionStyle = .none
        if selectedIndex == indexPath.row {
            cell.textLabel?.textColor = .red
        } else {
            cell.textLabel?.textColor = .black
        }
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedIndex = indexPath.row
        tableView.reloadData()
        switch indexPath.row{
        case 0: performSegue(withIdentifier: "Home", sender: nil)
        case 1: performSegue(withIdentifier: "About Us", sender: nil)
        default: performSegue(withIdentifier: "Home", sender: nil)
        }
    }
}

