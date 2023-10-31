//
//  PageControl.swift
//  Landmarks
//
//  Created by 김태성 on 10/31/23.
//

import SwiftUI
import UIKit

struct PageControl: UIViewRepresentable {
    var numberOfPages: Int
    @Binding var currentPage: Int


    func makeUIView(context: Context) -> UIPageControl {
        let control = UIPageControl()
        control.numberOfPages = numberOfPages


        return control
    }


    func updateUIView(_ uiView: UIPageControl, context: Context) {
        uiView.currentPage = currentPage
    }
}

#Preview {
    PageControl(numberOfPages: 0, currentPage: 0)
}
