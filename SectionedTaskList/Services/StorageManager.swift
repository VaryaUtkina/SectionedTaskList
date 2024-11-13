//
//  StorageManager.swift
//  SectionedTaskList
//
//  Created by Варвара Уткина on 13.11.2024.
//

import Foundation

final class StorageManager {
    static let shared = StorageManager()
    
    private init() {}
    
    // MARK: - Task List
    func fetchTaskList() -> [TaskList] {
        []
    }
    
    func save(_ taskLists: [TaskList]) {
        
    }
    
    func save(_ taskList: String, completion: (TaskList) -> Void) {
        
    }
    
    func delete(_ taskList: TaskList) {
        
    }
    
    func edit(_ taskList: TaskList, newVelue: String) {
        
    }
    
    func done(_ taskList: TaskList) {
        
    }
    
    // MARK: - Tasks
    func save(_ task: String, withNote note: String, to  taskList: TaskList, completion: (Task) -> Void) {
        
    }
}
