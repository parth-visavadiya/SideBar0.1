//
//  HomeViewController.swift
//  SideBar0.1
//
//  Created by parth visavadiya on 12/04/23.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var barButton: UIBarButtonItem!
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        if self.revealViewController() != nil{
            barButton.target = self.revealViewController()
            barButton.action = #selector(self.revealViewController().revealToggle(_:))
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }
}
