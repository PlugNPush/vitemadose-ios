//
//  HomePartnersTableViewCell.swift
//  ViteMaDose
//
//  Created by Victor Sarda on 11/04/2021.
//

import UIKit

protocol HomeCellPartnersViewModelProvider: HomeCellViewModelProvider { }

struct HomeCellPartnersViewModel: HomeCellPartnersViewModelProvider {
    var cellType: HomeCellType = .logos
}

class HomePartnersTableViewCell: UITableViewCell {

    @IBOutlet private var titleLabel: UILabel!
    @IBOutlet private var logo1ImageView: UIImageView!
    @IBOutlet private var logo2ImageView: UIImageView!
    @IBOutlet private var logo3ImageView: UIImageView!
    @IBOutlet private var logo4ImageView: UIImageView!
    @IBOutlet var logoImageView5: UIImageView!

    private enum Constant {
        static let titleText = "Trouvez vos rendez-vous avec"
    }

    private lazy var allLogos: [UIImageView] = [
        logo1ImageView,
        logo2ImageView,
        logo3ImageView,
        logo4ImageView,
        logoImageView5,
    ]

    func configure() {
        titleLabel.text = Constant.titleText
        titleLabel.font = .systemFont(ofSize: 13, weight: .light)
        titleLabel.textColor = .secondaryLabel
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        for logoImageView in allLogos {
            logoImageView.image = logoImageView.image?.tint(with: .systemGray)
        }
    }
    
}