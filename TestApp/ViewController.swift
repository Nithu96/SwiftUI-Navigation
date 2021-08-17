//
//  ViewController.swift
//  TestApp
//
//  Created by Niwarthana De Alwis on 2021-08-16.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Test App"
        view.backgroundColor = .systemBlue
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        view.addSubview(button)
        button.center = view.center
        button.backgroundColor = .systemGray
        button.setTitle(" next view", for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
        // bar item color change light and dark cmd+shift+a
        navigationController?.navigationBar.tintColor = .label
        
        
        configureItems()
    }

    private func configureItems(){
        navigationItem.rightBarButtonItems = [
            UIBarButtonItem(
                image: UIImage(systemName: "person.circle"),
                style: .done,
                target: self,
                action: nil
            ),
            UIBarButtonItem(
                    barButtonSystemItem: .add,
                    target: self,
                    action: nil
            )
        ]
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName : "gear"), style: .done, target: self, action: nil)
        
    }
    
    @objc func didTapButton() {
        let  vc = UIViewController()
        vc.title = "Infor Page"
        vc.view.backgroundColor = .systemBlue
        vc.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Sign Out", style: .done, target: self, action: nil)
        
        navigationController?.pushViewController(vc, animated: true)
        
    }
}

