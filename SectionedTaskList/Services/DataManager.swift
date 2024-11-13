//
//  DataManager.swift
//  SectionedTaskList
//
//  Created by Варвара Уткина on 13.11.2024.
//

import Foundation

final class DataManager {
    static let shared = DataManager()
    private let storageManager = StorageManager.shared
    
    private init() {}
    
    func createTempData(completion: @escaping() -> Void) {
        
    }
}
