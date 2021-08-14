//
//  SelectViewController.swift
//  Kadai9
//
//  Created by daiki umehara on 2021/08/13.
//

import UIKit

class SelectViewController: UIViewController, SelectStringProtocol {

    var selectedString: SelectedString = { _ in }

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!

    private var nameButtons: [UIButton] {
        [button1, button2, button3, button4]
    }

    private let names = ["東京都", "神奈川県", "埼玉県", "千葉県"]

    override func viewDidLoad() {
        super.viewDidLoad()

        zip(nameButtons, names)
            .forEach { button, name in
                button.setTitle(name, for: .normal)
            }
    }

    func setSelectedString(_ selectedString: @escaping SelectedString) {
        self.selectedString = selectedString
    }

    @IBAction private func didTapNameButton(_ sender: UIButton) {
        guard let name = zip(nameButtons, names)
                .first(where: { button, name in button === sender })?.1 else { return }
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
