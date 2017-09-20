//
//  GitHubCell.swift
//  GithubDemo
//
//  Created by user on 9/20/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class GitHubCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ownerLabel: UILabel!
    @IBOutlet weak var avatarImageView: UIImageView!
    
    @IBOutlet weak var starNumLabel: UILabel!
    @IBOutlet weak var forkNumLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var githubRepo: GithubRepo! {
        didSet {
            nameLabel.text = githubRepo.name
            ownerLabel.text = githubRepo.ownerHandle
            starNumLabel.text = String(describing: githubRepo.stars)
            forkNumLabel.text = String(describing: githubRepo.forks)
            descriptionLabel.text = githubRepo.repoDescription
            
            if let avatarURLString = githubRepo.ownerAvatarURL {
                if let avatarURL = URL(string: avatarURLString) {
                    avatarImageView.setImageWith(avatarURL)
                }
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
