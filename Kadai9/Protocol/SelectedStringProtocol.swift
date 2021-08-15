//
//  SelectedStringProtocol.swift
//  Kadai9
//
//  Created by daiki umehara on 2021/08/13.
//

import UIKit

typealias DidSelectHandler = (String) -> Void

struct NamePickerViewControllerFactory {
    func instantiate(didSelectHandler: @escaping DidSelectHandler) -> UIViewController {
        SelectViewController.instantiate(didSelectHandler: didSelectHandler)
    }
}
