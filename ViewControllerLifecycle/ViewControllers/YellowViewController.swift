//
//  YellowViewController.swift
//  ViewControllerLifecycle
//
//  Created by Alexey on 14.03.2022.
//

import UIKit

class YellowViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? GreenViewController else { return }
        dvc.someProperties = "someProperties"
    }
}
