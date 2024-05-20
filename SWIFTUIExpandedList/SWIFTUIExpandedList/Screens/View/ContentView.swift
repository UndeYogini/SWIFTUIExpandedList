//
//  ContentView.swift
//  SWIFTUIExpandedList
//
//  Created by Yogini Unde on 20/05/24.
//

import SwiftUI

struct ContentView: View {
    @State private var items: [CityListModel] = []
    @ObservedObject private var stateList = StateListViewModel()

    
    var body: some View {
        NavigationView {
            List(items, children: \.items) { item in
                Text(item.city ?? "")
            }
            .accessibilityLabel(Text(Constants.list))
            .onAppear {
                parseJSON()
            }
            .navigationBarTitle(Text(Constants.navigationTitle), displayMode: .inline)
            .accessibilityLabel(Text(Constants.navigationAccessibilityTitle))
        }
        Spacer()
        HStack(alignment: .bottom) {
           ColorTheme()
              .frame(minWidth: 100, maxWidth: .infinity, minHeight: 50, maxHeight: 100)
                   }

    }
    
    func parseJSON() {
        guard let filePath = Bundle.main.url(forResource: Constants.fileName, withExtension: Constants.fileExtension) else {
            items = []
            return
        }
        
        do {
            let data = try Data(contentsOf: filePath)
            let results = try JSONDecoder().decode([CityListModel].self, from: data)
            let dict = Dictionary(grouping: results, by: { $0.adminName })
            self.items = dict.map { (key, value) -> CityListModel in
                return CityListModel(city: key!, items: value)
            }
        } catch {
            print(error)
        }
    }
}


#Preview {
    ContentView()
}
