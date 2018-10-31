//
//  WebViewController.swift
//  Pokedex
//
//  Created by g807 DIT UPM on 26/10/18.
//  Copyright © 2018 UPM. All rights reserved.


import UIKit

class WebViewController: UIViewController {
    
    var race: Race?
    
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var str = "http://es.pokemon.wikia.com"
        
        if race != nil {
            title = race!.name
            
            if let path = "wiki/\(race!.name)".addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) {
                str = "\(str)/\(path)"
            }
        } else {
            title = "Pokemon"
        }
        
        if let url = URL(string: str) {
            let req = URLRequest(url: url)
            webView.loadRequest(req)
        }
    }
    
}
