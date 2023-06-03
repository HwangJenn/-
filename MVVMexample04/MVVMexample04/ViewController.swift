//
//  ViewController.swift
//  MVVMexample04
//
//  Created by 황지현 on 2023/06/02.
//

import UIKit

class ViewController: UITableViewController {
    
    private var viewmodel: ListViewModel = ListViewModel() {
        
        didSet {
            
            self.tableView.reloadData()
            
        }
    }
    
    var didSelect: (ArticleViewModel) -> () = { _ in }
    var addArticleTapped: () -> () = {}

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = self.viewmodel.title
        
        loadArticles()
    }
    
    private func loadArticles() {
        
        let url = URL(string: "https://newsapi.org/v1/articles?source=the-next-web&sortBy=latest&apiKey=0cf790498275413a9247f8b94b3843fd")!
        
        WebService().getArticles(url: url) {
            articles in print(articles)
            
            let articles = articles.map {
                article in return ArticleViewModel(article : article)
                }
            
            self.viewmodel = ListViewModel(articles : articles)
        }
    }
    
    @IBAction func addArticleButtonTapped(_ sender: Any) {
        addArticleTapped()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let articleViewModel = self.viewmodel.articles[indexPath.row]
        didSelect(articleViewModel)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.viewmodel.articles.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let articleViewModel = self.viewmodel.articles[indexPath.row]
        
        cell.textLabel?.text = articleViewModel.title
        return cell
    }
}

