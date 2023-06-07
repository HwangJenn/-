//
//  ArticleDetailsViewController.swift
//  MVVMexample05
//
//  Created by 황지현 on 2023/06/07.
//

import Foundation
import UIKit

class ArticleDetailsViewController: UIViewController {
    
    var articleDetailViewModel: ArticleDetailViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = self.articleDetailViewModel.articleViewModel.title
    }
}
