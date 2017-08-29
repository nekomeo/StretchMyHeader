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
    var newsItemsArray: [NewsItem] = []
    
    //MARK: - Outlets
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var currentDate: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tableView.estimatedRowHeight = 70
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.reloadData()
        
        newsItemSetup()
        dateLabel()
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool)
    {
        super.viewWillDisappear(animated)
        self.navigationController?.isNavigationBarHidden = false
    }
    
    //MARK: - Other Setup
    override var prefersStatusBarHidden: Bool
    {
        return true
    }
    
    func dateLabel()
    {
        let date = Date()
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = "MMM dd yyyy"

        self.currentDate.text = dateFormatter.string(from: date)
    }
    
    //MARK: - NewsItem Helpers
    func newsItemSetup()
    {
        //append newsItemsArray here
        
        let newsItem1 = NewsItem.init(category: .World, headline: "Climate change protests, divestments meet fossil fuels realities")
        let newsItem2 = NewsItem.init(category: .Europe, headline: "Scotland's 'Yes' leader says independence vote is 'once in a lifetime'")
        let newsItem3 = NewsItem.init(category: .MiddleEast, headline: "Airstrikes boost Islamic State, FBI director warns more hostages possible")
        let newsItem4 = NewsItem.init(category: .Africa, headline: "Nigeria says 70 dead in building collapse; questions S. Africa victim claim")
        let newsItem5 = NewsItem.init(category: .AsiaPacific, headline: "Despite UN ruling, Japan seeks backing for whale hunting")
        let newsItem6 = NewsItem.init(category: .Americas, headline: "Officials: FBI is tracking 100 Americans who fought alongside IS in Syria")
        let newsItem7 = NewsItem.init(category: .World, headline: "South Africa in $40 billion deal for Russian nuclear reactors")
        let newsItem8 = NewsItem.init(category: .Europe, headline: "'One million babies' created by EU student exchanges")
        
        newsItemsArray.append(newsItem1)
        newsItemsArray.append(newsItem2)
        newsItemsArray.append(newsItem3)
        newsItemsArray.append(newsItem4)
        newsItemsArray.append(newsItem5)
        newsItemsArray.append(newsItem6)
        newsItemsArray.append(newsItem7)
        newsItemsArray.append(newsItem8)
    }

    //MARK: - ViewController Data Source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.newsItemsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! NewsTableViewCell
        
        let newsItemForCell = newsItemsArray[indexPath.row]
        let categoryForCell = newsItemForCell.category
        cell.category = categoryForCell
        
        let headline = newsItemForCell.headline
        cell.headline = headline
        
//        cell.category = newsItemsArray[indexPath.row].category
//        
//        cell.headline = newsItemsArray[indexPath.row].headline
        
        return cell
    }


}

