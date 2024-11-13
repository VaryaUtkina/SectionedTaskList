//
//  TaskList.swift
//  SectionedTaskList
//
//  Created by Варвара Уткина on 13.11.2024.
//

import Foundation

final class TaskList {
    var title = ""
    var date = Date()
    var tasks: [Task] = []
}

final class Task {
    var title = ""
    var note = ""
    var date = Date()
    var isCompleted = false
}
