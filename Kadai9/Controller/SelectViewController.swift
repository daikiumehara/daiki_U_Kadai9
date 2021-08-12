//
//  SelectViewController.swift
//  Kadai9
//
//  Created by daiki umehara on 2021/08/13.
//

import UIKit

class SelectViewController: UIViewController, SelectStringProtocol {

    var selectedString: SelectedString!

    @IBOutlet private var nameButtons: [NameButton]!

    private let names = ["東京都", "神奈川県", "埼玉県", "千葉県"]

    override func viewDidLoad() {
        super.viewDidLoad()
        nameButtons.forEach { [weak self] button in
            guard let self = self else {
                return
            }
            button.conigure(names[self.nameButtons.firstIndex(of: button)!])
        }
    }

    func setSelectedString(_ selectedString: @escaping SelectedString) {
        self.selectedString = selectedString
    }

    @IBAction private func didTapNameButton(_ sender: NameButton) {
        let name = sender.getName()
        selectedString(name)
    }

    @IBAction private func didTapCancelButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}

extension SelectViewController {
    static func instantiate() -> SelectViewController {
        guard let initialVC = UIStoryboard.init(name: "Select", bundle: nil)
                .instantiateInitialViewController() as? SelectViewController else {
            fatalError("Storyboardが見つかりませんでした")
        }
        return initialVC
    }
}
