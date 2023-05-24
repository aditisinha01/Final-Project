//
//  EntryViewModel.swift
//  Final Project
//
//  Created by Aditi Sinha26 on 5/23/23.
//

import Foundation

class EntryViewModel: ObservableObject {
    @Published var entries = [Entry]()
    
    func addEntry(entry: Entry) {
        
        entries.append(entry)
    }
    
    func removeEntry(at offsets: IndexSet) {
        entries.remove(atOffsets: offsets)
    }
    
    func filteredEntries(list: [Entry], goal: String) -> [Entry] {
        
        var filtered = [Entry]()
        for entry in list {
            if entry.mood == goal {
                filtered.append(entry)
            }
        }
        return filtered
        
    }
}
