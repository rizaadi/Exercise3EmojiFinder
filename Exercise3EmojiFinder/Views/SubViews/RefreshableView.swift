//
//  RefreshableView.swift
//  Exercise3EmojiFinder
//
//  Created by Riza Adi Kurniawan on 03/02/24.
//

import SwiftUI

struct RefreshableView: View {
    @State private var items = [String]()
    @State private var isRefresh = false
    
    var body: some View {
        List(items, id: \.self){ item in
            Text(item)
        }
        .refreshable {
            await fetchData()
        }
    }
    
    private func fetchData() async {
        isRefresh = true
        try? await Task.sleep(nanoseconds: 2 * 1_000_000_000)
        items.append("New item \(items.count + 1)")
        isRefresh = false
    }
}

#Preview {
    RefreshableView()
}
