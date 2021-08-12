//
//  SelectedStringProtocol.swift
//  Kadai9
//
//  Created by daiki umehara on 2021/08/13.
//

import Foundation

typealias SelectedString = (String) -> Void

protocol SelectStringProtocol: NSObject {
    var selectedString: SelectedString! { get set }

    func setSelectedString(_ selectedString: @escaping SelectedString)
}
