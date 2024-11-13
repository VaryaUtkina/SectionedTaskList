//
//  AlertControllerBuilder.swift
//  SectionedTaskList
//
//  Created by Варвара Уткина on 13.11.2024.
//

import UIKit

final class AlertControllerBuilder {
    private let alertController: UIAlertController
    
    init(title: String, message: String) {
        alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
    }
    
    func setTextField(withPlaceholder placeholder: String, andText text: String?) -> AlertControllerBuilder {
        alertController.addTextField { textField in
            textField.placeholder = placeholder
            textField.text = text
        }
        return self
    }
    
    @discardableResult
    func addAction(title: String, style: UIAlertAction.Style, handler: ((String, String) -> Void)? = nil) -> AlertControllerBuilder {
        let action = UIAlertAction(title: title, style: style) { [weak alertController] _ in
            guard let title = alertController?.textFields?.first?.text else { return }
            guard !title.isEmpty else { return }
            let note = alertController?.textFields?.last?.text
            handler?(title, note ?? "")
        }
        alertController.addAction(action)
        return self
    }
    
    func build() -> UIAlertController {
        alertController
    }
}
