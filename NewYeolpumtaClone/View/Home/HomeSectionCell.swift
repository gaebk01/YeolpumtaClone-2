//
//  HomeSectionCell.swift
//  NewYeolpumtaClone
//
//  Created by 김태균 on 2021/07/04.
//

import UIKit
import SnapKit

class HomeSectionCell: UITableViewCell {
    // MARK: - Property
    
    static let cellIdentifier = String(describing: HomeSectionCell.self)
    
    private let goalLabel: UILabel = {
        let label = UILabel()
        label.text = "목표/과목"
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .lightGray
        return label
    }()
    
    private let spentTimeLabel: UILabel = {
        let label = UILabel()
        label.text = "공부시간"
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .lightGray
        return label
    }()
    
    // MARK: - Lifecycle
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Helpers
    
    fileprivate func setupUI() {
        addSubview(goalLabel)
        addSubview(spentTimeLabel)
        
        goalLabel.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(60)
            $0.centerY.equalToSuperview()
        }
        
        spentTimeLabel.snp.makeConstraints {
            $0.trailing.equalToSuperview().offset(-60)
            $0.centerY.equalToSuperview()
        }
        
        // Separator 모양을 추가해줌
        let separatorTopLine = UIView()
        let separatorBottomLine = UIView()
        
        separatorTopLine.backgroundColor = .lightGray.withAlphaComponent(0.5)
        separatorBottomLine.backgroundColor = .lightGray.withAlphaComponent(0.5)
        
        addSubview(separatorTopLine)
        addSubview(separatorBottomLine)
        
        separatorTopLine.snp.makeConstraints {
            $0.top.leading.trailing.equalToSuperview()
            $0.height.equalTo(1)
        }
        
        separatorBottomLine.snp.makeConstraints {
            $0.bottom.leading.trailing.equalToSuperview()
            $0.height.equalTo(1)
        }
    }
}
