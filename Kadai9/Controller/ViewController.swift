//
//  ViewController.swift
//  Kadai9
//
//  Created by daiki umehara on 2021/08/12.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private var nameLabel: UILabel!

    private var name: String = "未選択" {
        didSet {
            nameLabel.text = name
        }
    }

    @IBAction func didTapSelectButton(_ sender: Any) {
        let nextVC = NamePickerViewControllerFactory().instantiate(
            didSelectHandler: { [weak self] name in
                self?.name = name
                self?.dismiss(animated: true, completion: nil)
            }
        )

        nextVC.modalPresentationStyle = .fullScreen

        self.present(nextVC, animated: true, completion: nil)
    }
}
