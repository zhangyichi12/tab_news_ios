//
//  NewsTableViewController.swift
//  Tap_New_iOS
//
//  Created by Yichi Zhang on 1/7/18.
//  Copyright © 2018 Yichi Zhang. All rights reserved.
//

import UIKit

class NewsTableViewController: UITableViewController {
    
    private let newsList = NewsList().newsList
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.tableView.register(UINib(nibName: "NewsTableViewCell", bundle: nil), forCellReuseIdentifier: "NewsTableCell")
        configreTableView()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return newsList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewsTableCell", for: indexPath) as! NewsTableViewCell

        cell.titlePreview.text = newsList[indexPath.row].title
        
        DispatchQueue.global().async {
            let urlImage = try? Data(contentsOf: URL(string: self.newsList[indexPath.row].imageUrl!)!)
            if let imageData = urlImage {
                DispatchQueue.main.async {
                    cell.preview.image = UIImage(data: imageData)
                }
            }
        }

        return cell
    }
    
    // Configure cell size
    func configreTableView() {
        self.tableView.rowHeight = 128
        
//        self.tableView.rowHeight = UITableViewAutomaticDimension
//        self.tableView.estimatedRowHeight = 100
    }
    
    //segue to detail news
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
//        let destinationVC = NewsDetailViewController()
//        let newsDetail = newsList[indexPath.row]
//        
//        destinationVC.newsTitle.text = newsDetail.title
//        destinationVC.newsSource.text = newsDetail.source
//        destinationVC.newsDescription.text = newsDetail.description
        
        self.performSegue(withIdentifier: "ShowNewsDetail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowNewsDetail" {
            if let destinationVC = segue.destination as? NewsDetailViewController {
                
                let row = self.tableView.indexPathForSelectedRow!.row
//                let selectedCell = self.tableView.cellForRow(at: self.tableView.indexPathForSelectedRow!) as! NewsTableViewCell
                destinationVC.imageUrl = newsList[row].imageUrl
                destinationVC.strTitle = newsList[row].title
                destinationVC.strSource = newsList[row].source
                destinationVC.strDescription = newsList[row].description
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, editActionsForRowAt: IndexPath) -> [UITableViewRowAction]? {
        let more = UITableViewRowAction(style: .normal, title: "More") { action, index in
            print("more button tapped")
        }
        more.backgroundColor = .lightGray
        
        let favorite = UITableViewRowAction(style: .normal, title: "Favorite") { action, index in
            print("favorite button tapped")
        }
        favorite.backgroundColor = .orange
        
        let share = UITableViewRowAction(style: .normal, title: "Share") { action, index in
            print("share button tapped")
        }
        share.backgroundColor = .blue
        
        return [share, favorite, more]
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }

}
