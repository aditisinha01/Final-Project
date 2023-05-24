//
//  EntryRowView.swift
//  Final Project
//
//  Created by Aditi Sinha26 on 5/23/23.
//

import SwiftUI

struct EntryRowView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State private var entryName = ""
    @State private var rating = 0
    @State private var selectedMood = ""
    
    var entry: Entry = Entry(entryName: "", date: "", timeOfDay: "", entryText: "", mood: "", rating: 0)
    
    var body: some View {
        
        HStack {
            VStack(alignment: .leading) {
                HStack {
                    Text(entry.entryName)
                    .font(.system(size: 23))
                    .bold()
                    .padding(2)
                    .foregroundColor(.pink)
                
                    Text(entry.date)
                    Text(entry.timeOfDay)
                }
                HStack{
                    Text(entry.mood)
                    Text("\(entry.rating)")
                }
            }
        }
            }
        }

struct EntryRowView_Previews: PreviewProvider {
    static var previews: some View {
        EntryRowView()
    }
}
