//
//  ViewController.swift
//  DynamicCells
//
//  Created by Zymek, Filip on 23/08/2019.
//  Copyright © 2019 Zymek, Filip. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var people: [Person]?

    var cellHeightCache: [Int: CGSize] = [:]

    @IBOutlet weak var collection: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        people = try? JSONDecoder().decode([Person].self, from: PERSON_DATA.data(using: .utf8)!)
        collection.dataSource = self
        collection.delegate = self

        collection.register(CollectionItemCell.nib(), forCellWithReuseIdentifier: CollectionItemCell.reuseIdentifier)
        (collection.collectionViewLayout as! UICollectionViewFlowLayout).estimatedItemSize = CGSize(width: collection.frame.width, height: 1)
    }

    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        cellHeightCache.removeAll()
        collection.reloadData()
    }

}

extension ViewController: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collection.dequeueReusableCell(withReuseIdentifier: CollectionItemCell.reuseIdentifier, for: indexPath) as? CollectionItemCell else {
            assertionFailure("Cannon dequeue cell")
            return UICollectionViewCell()
        }

        let person = people![indexPath.row]
        cell.render(person)

        return cell

    }


    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return people?.count ?? 0
    }

}


extension ViewController: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        let person = people![indexPath.row]
        let key = person.hashValue
        if let size = cellHeightCache[key] {
            return size
        }


        let width = collectionView.frame.width
        let height = CollectionItemCell.height(for: person, andWidth: width)
//        let subtitleHeight = getHeightForLable(labelWidth: width, numberOfLines: 0, labelText: person.subtitle ?? "", labelFont: UIFont.preferredFont(forTextStyle: .footnote))
//        let titleHeight = getHeightForLable(labelWidth: width, numberOfLines: 0, labelText: person.title, labelFont: UIFont.preferredFont(forTextStyle: .title2))
//
//        let height = 8 + subtitleHeight + titleHeight + 300
        let size = CGSize(width: collectionView.frame.width, height: height)
        cellHeightCache[key] = size
        return size

    }

    func getHeightForLable(labelWidth: CGFloat, numberOfLines: Int = 1, labelText: String, labelFont: UIFont) -> CGFloat {
        let tempLabel: UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: labelWidth, height: CGFloat.greatestFiniteMagnitude))
        tempLabel.numberOfLines = numberOfLines
        tempLabel.text = labelText
        tempLabel.font = labelFont
        tempLabel.sizeToFit()
        return tempLabel.frame.height
    }

}

