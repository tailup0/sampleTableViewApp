//
//  VCDetail.swift
//  sampleTableViewApp
//
//  Created by Muneharu Onoue on 2017/03/27.
//  Copyright © 2017年 Muneharu Onoue. All rights reserved.
//

import UIKit

class VCDetail: UIViewController {
    @IBOutlet weak var titleLb: UILabel!
    @IBOutlet weak var detailLb: UILabel!

    var item: (title:String, detail:String) = ("","")

    override func viewDidLoad() {
        super.viewDidLoad()
        titleLb.text = item.title
        detailLb.text = item.detail
    }

    @IBAction func close(_ sender: UITapGestureRecognizer) {
        dismiss(animated: true, completion: nil)
    }
}
