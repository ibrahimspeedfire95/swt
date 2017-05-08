//
//  ViewController.swift
//  Software Engineering
//
//  Created by ibrahim al-khatib on 5/8/17.
//  Copyright © 2017 ibrahim al-khatib. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    var books = [BookModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let book1 = BookModel()
        book1.name = "Harry Potter"
        book1.author = "Any"
        book1.pageCount = 5
        books.append(book1)
        
        let book2 = BookModel()
        book2.name = "XYZ"
        book2.author = "abc"
        book2.pageCount = 4
        books.append(book1)

        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = books[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = model.name
        cell?.detailTextLabel?.text = "\(model.pageCount)" +  ((model.pageCount == 1) ? "page" : "pages")
        return cell!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}

