//
//  AddView.swift
//  TodoList
//
//  Created by user239336 on 10/18/23.
//

import SwiftUI

struct AddView: View {
    @Environment(\.presentationMode)  var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textFieldText: String = ""
    
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    var body: some View {
        ScrollView{
            VStack {
                TextField("Add Item...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color("lightGray"))
                    .cornerRadius(10)
                Button(action: saveButtonPressed, label: {
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
        .alert(isPresented: $showAlert, content: getAlert)
    }
    func saveButtonPressed() {
        if textisAppropriate() {
            listViewModel.addItem(title: textFieldText)
            presentationMode.wrappedValue.dismiss()
        }
    }
    func textisAppropriate() -> Bool {
        if textFieldText.count < 3 {
            alertTitle = "Your new todo item must be at least 3 characters long."
            showAlert.toggle()
            return false
            
        }
        return true
    }
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AddView()
        }
        .environmentObject(ListViewModel())
    }
}
