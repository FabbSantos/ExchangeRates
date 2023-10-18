//
//  ListView.swift
//  TodoList
//
//  Created by Fabricio Bahiense on 10/18/23.
//

import SwiftUI

struct ListView: View {
    @State var items: [String] = [
        "Go Shopping 1",
        "Brush Teeth 2",
        "Study 3"
    ]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) {
                item in ListRowView(title: item)
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


