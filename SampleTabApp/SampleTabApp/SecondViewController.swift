//
//  SecondViewController.swift
//  SampleTabApp
//
//  Created by Kevin G on 2020-02-01.
//  Copyright © 2020 Kevin G. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let list = ["Project1", "Project2", "Project3", "Project4", "Project5", "Project6", "Project7", "Project8", "Project9", "Project10"]

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        return(list.count)
    }


    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //let cell = UITableViewCell(style: UITableViewCell, reuseIdentifier:"cell")
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = list[indexPath.row]
        return(cell)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

