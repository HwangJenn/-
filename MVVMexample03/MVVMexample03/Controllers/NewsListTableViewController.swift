//
//  NewsListTableViewController.swift
//  MVVMexample03
//
//  Created by 황지현 on 2023/06/01.
// View, Controller
import Foundation
import UIKit

class NewsListTableViewController: UITableViewController {
    
    private var articleListVM: ArticleListViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
    }
    
    private func setup() {
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=e9b514c39c5f456db8ed4ecb693b0040")!
        WebService().getArticles(url: url) { //1
            (articles) in
            
            if let articles = articles {
                self.articleListVM = ArticleListViewModel(articles: articles) //2
            }
            
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
}

extension NewsListTableViewController {
    
    override func tableView(_ tableView:UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.articleListVM.numberOfRowsInSection(section)
    }
    
    override func numberOfSections(in tableView:UITableView) -> Int {
        return self.articleListVM == nil ? 0 : self.articleListVM.numberOFSections
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ArticleTableViewCell", for: indexPath) as? ArticleTableViewCell
        else {
            fatalError("no matched article TableViewCell identifier")
        }
        
        let articleVM = self.articleListVM.articleAtIndex(indexPath.row)
        cell.descriptionLabel?.text = articleVM.description
        cell.titleLabel?.text = articleVM.title
        
        return cell
    }
}

