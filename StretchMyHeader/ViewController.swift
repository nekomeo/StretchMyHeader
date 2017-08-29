//
//  ViewController.swift
//  StretchMyHeader
//
//  Created by Elle Ti on 2017-08-29.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource
{
    //MARK: - Properties
    
    
    //MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    //MARK: - ViewController Data Source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! NewsTableViewCell
        
        cell.category = "Test category"
        cell.headline = "Climate change protests, divestments meet fossil fuels realities. See tips below image if you need them:"
        
        cell.categoryLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        cell.headlineLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        
        return cell
    }


}

