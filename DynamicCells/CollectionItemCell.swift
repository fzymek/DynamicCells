//
//  CollectionItemCell.swift
//  DynamicCells
//
//  Created by Zymek, Filip on 23/08/2019.
//  Copyright © 2019 Zymek, Filip. All rights reserved.
//

import Foundation
import UIKit

class CollectionItemCell: UICollectionViewCell {

    static let reuseIdentifier = "CollectionItemCell"

    static func nib() -> UINib {
        return UINib(nibName: String(describing: CollectionItemCell.self), bundle: Bundle.main)
    }

    static let sizingCell: CollectionItemCell = {
        let cell = nib().instantiate(withOwner: String(describing: CollectionItemCell.self), options: nil)[0] as! CollectionItemCell
        return cell
    }()

    static func height(for person: Person, andWidth width: CGFloat) -> CGFloat {

        let subtitleHeight = getHeightForLable(labelWidth: width, numberOfLines: 0, labelText: person.subtitle ?? "", labelFont: UIFont.preferredFont(forTextStyle: .footnote))
        let titleHeight = getHeightForLable(labelWidth: width, numberOfLines: 0, labelText: person.title, labelFont: UIFont.preferredFont(forTextStyle: .title2))

        let height = 8 + subtitleHeight + titleHeight + 300

//        let title = NSString(string: person.title)
//        let titleHeight = title.boundingRect(with: CGSize(width: width,
//                                                          height: .greatestFiniteMagnitude),
//                                             options: [.usesFontLeading, .usesLineFragmentOrigin],
//                                             attributes: [NSAttributedString.Key.font: UIFont.preferredFont(forTextStyle: .title2)], context: nil).height
//
//        let subtitle = NSString(string: person.subtitle ?? "")
//
//        let subtitleHeight = subtitle.boundingRect(with: CGSize(width: width,
//                                                          height: .greatestFiniteMagnitude),
//                                             options: [.usesFontLeading, .usesLineFragmentOrigin],
//                                             attributes: [NSAttributedString.Key.font: UIFont.preferredFont(forTextStyle: .footnote)], context: nil).height
//
//
//        return 8.0 + titleHeight + subtitleHeight + 150.0

        return height
    }

    static func getHeightForLable(labelWidth: CGFloat, numberOfLines: Int = 1, labelText: String, labelFont: UIFont) -> CGFloat {
        let title = NSString(string: labelText)
        let titleHeight = title.boundingRect(with: CGSize(width: labelWidth,
                                                          height: .greatestFiniteMagnitude),
                                             options: [.usesFontLeading, .usesLineFragmentOrigin],
                                             attributes: [NSAttributedString.Key.font: labelFont], context: nil).height

        return titleHeight

//        let tempLabel: UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: labelWidth, height: CGFloat.greatestFiniteMagnitude))
//        tempLabel.numberOfLines = numberOfLines
//        tempLabel.text = labelText
//        tempLabel.font = labelFont
//        tempLabel.sizeToFit()
//        return tempLabel.frame.height
    }
    
    @IBOutlet weak var subtitle: UILabel!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var content: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()

        title.font = UIFont.preferredFont(forTextStyle: .title2)
        subtitle.font = UIFont.preferredFont(forTextStyle: .footnote)

        title.numberOfLines = 0
        subtitle.numberOfLines = 0

        title.lineBreakMode = .byWordWrapping
        subtitle.lineBreakMode = .byWordWrapping
    }

    func render(_ person: Person) {
        title.text = person.title
        subtitle.text = person.subtitle
        content.backgroundColor = person.getColor()
    }

}
