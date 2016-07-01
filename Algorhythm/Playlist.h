//
//  Playlist.h
//  Algorhythm
//
//  Created by Chris Vanderhorst on 26/06/2016.
//  Copyright © 2016 Wekonnect. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Playlist : NSObject
@property(strong,nonatomic) NSString *playlistTitle;
@property (strong,nonatomic) NSString *playlistDescription;
@property(strong,nonatomic) UIImage *playlistIcon;
@property (strong,nonatomic) UIImage *playlistIconLarge;
@property(strong,nonatomic) NSArray *playlistArtists;
@property(strong,nonatomic) UIColor *playlistbackgroundColor;


-(instancetype) initWithIndex:(NSUInteger)index;
@end
