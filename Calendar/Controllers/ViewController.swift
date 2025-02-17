//
//  ViewController.swift
//  Calendar
//
//  Created by Saadet Şimşek on 07/01/2025.
//

import UIKit

class ViewController: UIViewController {
    
    private let preWeakButton = CalendarMoveButton(imageName: "chevron.backward")
    private let nextWeakButton = CalendarMoveButton(imageName: "chevron.forward")
    
    private let calendarCollectionView = CalendarCollectionViewViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setConstraints()
    }

    private func setupViews(){
        view.backgroundColor = .systemBackground
        view.addSubview(calendarCollectionView)
        view.addSubview(preWeakButton)
        view.addSubview(nextWeakButton)
    }

    private func setConstraints(){
        NSLayoutConstraint.activate([
            preWeakButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            preWeakButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            preWeakButton.heightAnchor.constraint(equalToConstant: 60),
            preWeakButton.widthAnchor.constraint(equalToConstant: 40),
            
            nextWeakButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            nextWeakButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            nextWeakButton.heightAnchor.constraint(equalToConstant: 60),
            nextWeakButton.widthAnchor.constraint(equalToConstant: 40),
            
            calendarCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            calendarCollectionView.leadingAnchor.constraint(equalTo: preWeakButton.trailingAnchor, constant: 5),
            calendarCollectionView.trailingAnchor.constraint(equalTo: nextWeakButton.leadingAnchor, constant: -5),
            calendarCollectionView.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
}
