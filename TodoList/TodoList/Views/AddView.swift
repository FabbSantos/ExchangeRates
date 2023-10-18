//
//  AddView.swift
//  TodoList
//
//  Created by user239336 on 10/18/23.
//

import SwiftUI

struct AddView: View {
    @State var textFieldText: String = ""
    var body: some View {
        ScrollView{
            VStack {
                TextField("Add Item...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color("lightGray"))
                    .cornerRadius(10)
                Button(action: {
                    
                }, label: {
                    Text("Save".uppercased())
                        .padding(.vertical)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .foregroundColor(.white)
                        .font(.headline)
                        .cornerRadius(10)
                })
            }
            .padding(16)
        }
        .navigationTitle("Add an Item")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AddView()
        }
    }
}
