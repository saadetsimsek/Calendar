//
//  CalendarCollectionViewCollectionViewCell.swift
//  Calendar
//
//  Created by Saadet Şimşek on 09/01/2025.
//

import UIKit

class CalendarCollectionViewCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "CalendarCollectionViewCollectionViewCell"
    
    private let dayOfWeekLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Day"
        label.textColor = .systemPink
        label.textAlignment = .center
        return label
    }()
    
    private let numberOfDayLabel: UILabel = {
        let label = UILabel()
        label.text = "17"
        label.textColor = .black
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
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
        addSubview(dayOfWeekLabel)
        addSubview(numberOfDayLabel)
        
    }
    
    func configure(with day:Int) {
        numberOfDayLabel.text = "\(day)"
    }
    
    private func setConstraints(){
        NSLayoutConstraint.activate([
            dayOfWeekLabel.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            dayOfWeekLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            numberOfDayLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5),
            numberOfDayLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
        ])
    }
}
