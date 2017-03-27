//
//  ViewController.swift
//  sampleTableViewApp
//
//  Created by 尾上宗玄 on 2016/11/25.
//  Copyright © 2016年 Muneharu Onoue. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    private let items: [(title: String, detail: String)] = [
        ("title1","detail1"),
        ("title2","detail2"),
        ("title3","detail3")
    ]

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row].title
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        defer { super.prepare(for: segue, sender: sender) }
        if (segue.identifier == "toDetail") {
            guard let cell = sender as? UITableViewCell else { return }
            guard let vcDetail = segue.destination as? VCDetail else { return }
            guard let idx = tableView.indexPath(for: cell) else { return }
            vcDetail.item = (items[idx.row])
        }
    }
    
}

