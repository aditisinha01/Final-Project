//
//  AddEntryView.swift
//  Final Project
//
//  Created by Aditi Sinha26 on 5/23/23.
//

import SwiftUI

struct AddEntryView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State private var entryName = ""
    @State private var rating = 0
    @State private var selectedMood = ""
    @State private var entryText = ""
    @State private var timeOfDay = ""
    @State private var date = ""

    var onSave: (Entry) -> Void
    
    var body: some View {
    
        NavigationView {
            Form {
                Section {
                    TextField("Entry Name", text: $entryName)
                    Stepper(value: $rating, in: 1...10) {
                        Text("Rating: \(rating)")
                    }
                    
                }
                Section {
                    Picker("Mood", selection: $selectedMood) {
                        ForEach(moods, id: \.self) { mood in
                            Text(mood).tag(mood)
                        }
                    }
                }
                Section {
                    TextField("Journal Entry", text: $entryText)
                }
                Section {
                    TextField("Date", text: $date)
                }
                Section {
                    TextField("Time of Day", text: $timeOfDay)
                }
                .navigationBarTitle("Add Entry")
                .navigationBarItems(leading: Button("Cancel") {
                    presentationMode.wrappedValue.dismiss()
                }, trailing: Button("Save") {
                    
                    let newEntry = Entry(entryName: entryName, date: date, timeOfDay: timeOfDay, entryText: entryText, mood: selectedMood, rating: rating)
                    onSave(newEntry)
                })
            }
        }
        
    }
}
