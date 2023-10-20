//
//  ItemModel.swift
//  TodoList
//
//  Created by Fabricio Bahiense on 10/20/23.
//

import Foundation

struct ItemModel: Identifiable{
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}