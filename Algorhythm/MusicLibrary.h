//
//  MusicLibrary.h
//  Algorhythm
//
//  Created by Chris Vanderhorst on 26/06/2016.
//  Copyright © 2016 Wekonnect. All rights reserved.
//

#import <Foundation/Foundation.h>
extern NSString *const kTitle;
extern NSString *const kDescription;
extern NSString *const kIcon;
extern NSString *const kLargeIcon;
extern NSString *const kBackgroundColor;
extern NSString *const kArtists;


@interface MusicLibrary : NSObject
@property (strong,nonatomic) NSArray *library;

@end
