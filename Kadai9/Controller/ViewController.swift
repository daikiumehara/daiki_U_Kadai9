//
//  ViewController.swift
//  Kadai9
//
//  Created by daiki umehara on 2021/08/12.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func didTapSelectButton(_ sender: Any) {
        let nextVC = SelectViewController.instantiate()
        self.present(nextVC, animated: true, completion: nil)
    }
}

