//
//  ViewController.swift
//  Tut_CustomTableViewCell
//
//  Created by ruroot on 10/7/18.
//  Copyright © 2018 Eray Alparslan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var mTableView: UITableView!
    let mTuple = [("cagkebap","Çağ Kebabı","25"), ("patlicankebap","Patlıcan Kebabı","20"), ("adanakebap","Adana Kebabı","24")];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mTableView.delegate = self
        mTableView.dataSource = self
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mTuple.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = mTableView.dequeueReusableCell(withIdentifier: "Cell") as! myCell
        cell.mImageView.image = UIImage(named: mTuple[indexPath.row].0)
        cell.titleLabel.text = mTuple[indexPath.row].1
        cell.priceLabel.text = "\(mTuple[indexPath.row].2)₺"
        return cell
    }
    
    
}

