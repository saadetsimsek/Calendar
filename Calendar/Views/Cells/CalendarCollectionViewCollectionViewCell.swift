//
//  CalendarCollectionViewCollectionViewCell.swift
//  Calendar
//
//  Created by Saadet Şimşek on 09/01/2025.
//

import UIKit

class CalendarCollectionViewCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "CalendarCollectionViewCollectionViewCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        setConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews(){
        layer.cornerRadius = 10
        backgroundColor = .red
        
    }
    
    private func setConstraints(){
        NSLayoutConstraint.activate([
            
        ])
    }
}
