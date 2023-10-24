//
//  ListViewModel.swift
//  TodoList
//
//  Created by Fabricio Bahiense on 10/23/23.
//

import Foundation

/*
 
CRUD Functions
 
 Create
 Read
 Update
 Delete
 
*/

class ListViewModel: ObservableObject {
    @Published var items: [ItemModel] = []
    
    init() {
        getItems()
    }
    
    func getItems () {
//        let newItems: [ItemModel] = []

        let newItems = [
            ItemModel(title: "FirstTitle", isCompleted: false),
            ItemModel(title: "Second", isCompleted: true),
            ItemModel(title: "Third", isCompleted: false),
        ]
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    func addItem(title: String) {
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    func updateItem (item: ItemModel) {
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index] = item.updateCompletion()
        }
    }
}
 
