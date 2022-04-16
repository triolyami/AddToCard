//
//  ViewController.swift
//  AddToCard
//
//  Created by Me on 09.04.2022.
//

import UIKit

class CatalogViewController: UITableViewController {
    

 //   var catalogView = CatalogView()
//    override func loadView() {
//      //  view = catalogView
//    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.tableView.register(CatalogViewCell.self, forCellReuseIdentifier: CatalogViewCell.cellIdentifier)
        
        // Do any additional setup after loading the view.
    }
    
}

extension CatalogViewController {
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: CatalogViewCell.cellIdentifier, for: indexPath) as! CatalogViewCell
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
}
