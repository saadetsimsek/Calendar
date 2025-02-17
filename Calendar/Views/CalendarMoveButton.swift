//
//  CalendarMoveButton.swift
//  Calendar
//
//  Created by Saadet Şimşek on 17/02/2025.
//

import UIKit

final class CalendarMoveButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(imageName: String) {
        self.init(type: .system)
        setImage(UIImage(systemName: imageName), for: .normal)
        configure()
    }
    
    private func configure(){
        layer.cornerRadius = 10
        backgroundColor = .systemBlue
        tintColor = .white
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    
}
