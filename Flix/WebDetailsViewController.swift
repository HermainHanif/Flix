//
//  WebDetailsViewController.swift
//  Flix
//
//  Created by Hermain Hanif on 1/25/19.
//  Copyright © 2019 Hermain Hanif. All rights reserved.
//

import UIKit
import WebKit

class WebDetailsViewController: UIViewController, WKUIDelegate {
    
    @IBOutlet weak var webView: UIWebView!
    
    var web: UIWebView!
    var movieTitle: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        super.viewDidLoad()
        movieTitle = movieTitle.replacingOccurrences(of: " ", with: "+")
        let movieURL = "https://www.youtube.com/results?search_query=\(String(describing: movieTitle!))+movie+trailer"
        
        let webView = WKWebView(frame: CGRect(x: 0, y: 64, width: self.view.frame.size.width, height: self.view.frame.size.height))
        self.view.addSubview(webView)
        let url = URL(string: movieURL)
        webView.load(URLRequest(url: url!))
        
        
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
