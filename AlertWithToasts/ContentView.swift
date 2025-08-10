//
//  ContentView.swift
//  AlertWithToasts
//
//  Created by Łukasz Adamczak on 10/08/2025.
//

import SwiftUI
import ToastUI

struct ContentView: View {
    @State private var showToast: Bool = false
    
    var body: some View {
        VStack {
            Spacer()
            Button {
                showToast = true
            } label: {
                Text("Show Toast")
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(5.0)
            }
            .padding()
        }
        .toast(isPresented: $showToast, dismissAfter: 1.0) {
            ToastView {
                Text("This is a toast 🍞!")
            }
        }
    }
}

#Preview {
    ContentView()
}
