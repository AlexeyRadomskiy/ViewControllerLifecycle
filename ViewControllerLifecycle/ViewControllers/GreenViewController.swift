//
//  GreenViewController.swift
//  ViewControllerLifecycle
//
//  Created by Alexey on 14.03.2022.
//

import UIKit

class GreenViewController: UIViewController {

    @IBOutlet var openThirdVc: UIButton! {
        didSet {
            print(openThirdVc.currentTitle ?? "")
        }
    }
    
    var someProperties: String! {
        didSet {
            print(someProperties ?? "")
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        printMessage()
    }
    
//    override func loadView() {
//        
//    }
    
    // Called after View is loaded into memory
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "GreenVC"
        printMessage()
    }
    
    // Called before the view appears
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        printMessage()
    }
    
    // Called when placing constrains
    override func updateViewConstraints() { //
        printMessage()
        super.updateViewConstraints()
    }
    
    // Called before arranging all elements on the screen
    override func viewWillLayoutSubviews() {
        printMessage()
    }
    
    // This is where Auto Layout comes into play
    
    // Called after all elements have been placed on the screen
    override func viewDidLayoutSubviews() {
        printMessage()
    }
    
    // Called after the view appears on the screen
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        printMessage()
    }
    
    // Called when the view is resized
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        print(size.height)
    }
    
    // Called before hiding the view
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        printMessage()
    }
    
    // Called after hiding the view
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        printMessage()
    }
}

extension UIViewController {
    func printMessage(function: String = #function) {
        print("\(title ?? ""): \(function)")
    }
}
