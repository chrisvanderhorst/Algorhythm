//
//  PlaylistDetailViewController.h
//  Algorhythm
//
//  Created by Chris Vanderhorst on 26/06/2016.
//  Copyright © 2016 Wekonnect. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Playlist;


@interface PlaylistDetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *buttonPressedLabel;
@property (strong, nonatomic) Playlist *playlist;
@property (weak, nonatomic) IBOutlet UIImageView *playlistCoverImage;
@property (weak, nonatomic) IBOutlet UILabel *PlaylistTitle;
@property (weak, nonatomic) IBOutlet UILabel *playlistArtist0;
@property (weak, nonatomic) IBOutlet UILabel *playlistArtist1;
@property (weak, nonatomic) IBOutlet UILabel *playlistArtist2;

@property (weak, nonatomic) IBOutlet UILabel *playlistDescription;
@end
