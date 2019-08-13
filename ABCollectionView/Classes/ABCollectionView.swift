//
//  ABCollectionView.swift
//  ABCollectionView
//
//  Created by sudhakar reddy on 11/08/19.
//

import UIKit

public class ABCollectionView: UIView {
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override public func draw(_ rect: CGRect) {
        // Drawing code
    }
    var items: [String] = {
      return  ["0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"]
    }()
    var collectionView: UICollectionView!
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        initialSetUp()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func initialSetUp(){
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize.init(width: 140, height: 130)
        self.collectionView = UICollectionView.init(frame: CGRect(x: 0, y: 0, width: self.bounds.width, height: self.bounds.height - 200), collectionViewLayout: layout)
        collectionView.backgroundColor = UIColor.white
        self.addSubview(collectionView)
        collectionView.register(UINib(nibName: "CollectionViewCell", bundle:Bundle(for: CollectionViewCell.self)), forCellWithReuseIdentifier: "CollectionViewCell")
        self.collectionView.delegate   = self
        self.collectionView.dataSource = self
        self.collectionView.reloadData()
    }
}

extension ABCollectionView: UICollectionViewDataSource, UICollectionViewDelegate {
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.label.text = "title \(indexPath.row)"
        return cell
    }
    private func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("indexPath: \(indexPath)")
    }
    
}
