//
//  ViewController.swift
//  ExpandableCollectionViewCells
//
//  Created by Josh R on 1/25/20.
//  Copyright © 2020 Josh R. All rights reserved.
//

import UIKit
import SwiftUI

class MainVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}



//MARK: SwiftUIs live preview
//MARK: SwiftUI setup to allow preview updates with UIKit
//NOTE:  The use of fileprivate is so you don't have to create new struct names each file you use this in
//Steps to copy this to another file:
//change VC the typealias is referring to
//change the name of the PreviewProvider struct below to something unique

fileprivate typealias ThisViewController = MainVC //update to this file's VC

fileprivate struct IntegratedController: UIViewControllerRepresentable {
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<IntegratedController>) -> ThisViewController {
        return ThisViewController()
    }
    
    func updateUIViewController(_ uiViewController: ThisViewController, context: UIViewControllerRepresentableContext<IntegratedController>) {
    }
}


//This needs to be changed to something unique IF root vc
fileprivate struct CustomContentView: View {
    var body: some View {
        IntegratedController().edgesIgnoringSafeArea(.all)
        //        IntegratedController()
    }
}

//This needs to be changed to something unique, cannot be fileprivate
struct OutlineViewController_ContentView_Preview: PreviewProvider {
    static var previews: some View {
        CustomContentView()  //if preview isn't changing, change this struct to the struct conforming to View
    }
}
