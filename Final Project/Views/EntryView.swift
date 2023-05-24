//
//  MealPlanView.swift
//  UserInput_MVVM
//
//  Created by Aditi Sinha26 on 4/9/23.
//

import SwiftUI

struct EntryView: View {
    
    @ObservedObject var viewModel = EntryViewModel()
    @State private var showAddEntryView = false
    @State private var selectedMood: String = "All Moods"
    
    var body: some View {
        
        
        NavigationView {
            ZStack {
                    if selectedMood == "Great" {
                        Color.pink1
                            .ignoresSafeArea()
                    } else if selectedMood == "Good" {
                        Color.pink2
                            .ignoresSafeArea()
                    } else if selectedMood == "Meh" {
                        Color.pink3
                            .ignoresSafeArea()
                    } else if selectedMood == "Bad" {
                        Color.pink4
                            .ignoresSafeArea()
                    } else if selectedMood == "Awful" {
                        Color.pink5
                            .ignoresSafeArea()
                    } else if selectedMood == "All" {
                        Color.pink0
                            .ignoresSafeArea()
                    }
                    VStack{
                        Picker("Mood", selection: $selectedMood) {
                            Text("All").tag("All")
                            ForEach(moods, id: \.self) { mood in
                                Text(mood).tag(mood)
                            }
                        }
                        .pickerStyle(SegmentedPickerStyle())
                        
                        if selectedMood == "All" {
                            List {
                                ForEach(viewModel.entries) { currentEntry in
                                    NavigationLink {
                                        EntryDetailView(entry: currentEntry)
                                    } label : {
                                        EntryRowView(entry: currentEntry)
    
                                    }
                                }
                                .onDelete(perform: viewModel.removeEntry)
                            }
                            .scrollContentBackground(.hidden)
                        } else {
                            List {
                                ForEach(viewModel.filteredEntries(list: viewModel.entries, goal: selectedMood)) { entry in
                                    NavigationLink(destination: EntryDetailView(entry: entry),
                                                   label: {
                                        EntryRowView(entry: entry)
                                    })
                                }
                                .onDelete(perform: viewModel.removeEntry)
                            }
                            .scrollContentBackground(.hidden)
                        }
                    }
                    .padding()
                    .navigationBarTitle("Journal Entries")
                    .navigationBarItems(
                        leading: EditButton(),
                        trailing: Button(action: {
                            showAddEntryView = true
                        }) {
                            Image(systemName: "plus")
                        })
               
                    .sheet(isPresented: $showAddEntryView) {
                        AddEntryView { newEntry in
                            viewModel.addEntry(entry: newEntry)
                            showAddEntryView = false
                        }
                    }
                }
            }
        }
    }

struct EntryView_Previews: PreviewProvider {
    static var previews: some View {
        EntryView()
    }
}
