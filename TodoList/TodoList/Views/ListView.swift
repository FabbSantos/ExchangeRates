//
//  ListView.swift
//  TodoList
//
//  Created by Fabricio Bahiense on 10/18/23.
//

import SwiftUI

struct ListView: View {
    @State var items: [ItemModel] = [
     ItemModel(title: "FirstTitle", isCompleted: false),
     ItemModel(title: "Second", isCompleted: true),
     ItemModel(title: "Third", isCompleted: false),

    ]
    
    var body: some View {
        List {
            ForEach(items) {
                item in
                ListRowView(item: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add", destination: AddView())
        )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListView()
        }
    }
}


