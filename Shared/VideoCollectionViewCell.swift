//
//  VideoCollectionViewCell.swift
//  Swift Project
//
//  Created by Yury Dzhishkariani on 7/4/21.
//

import UIKit
import AVFoundation

class VideoCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "VideoCollectionViewCell"
    
    //Subviews
    var player: AVPlayer?
    
    
    override init (frame: CGRect) {
        super.init(frame: frame)
    }
    public func confugire(with model: VideoModel) {
        contentView.backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }
}
