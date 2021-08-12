//
//  NameButton.swift
//  Kadai9
//
//  Created by daiki umehara on 2021/08/13.
//

import UIKit

class NameButton: UIButton {
    private var name: String!

    init() {
        super.init(frame: .zero)
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    func conigure(_ name: String) {
        self.name = name
        self.setTitle(name, for: UIControl.State.normal)
    }

    func getName() -> String {
        return self.name
    }
}
