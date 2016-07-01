//
//  Playlist.m
//  Algorhythm
//
//  Created by Chris Vanderhorst on 26/06/2016.
//  Copyright © 2016 Wekonnect. All rights reserved.
//

#import "Playlist.h"
#import "MusicLibrary.h"
@implementation Playlist

-(instancetype) initWithIndex:(NSUInteger)index{
    
    self = [super init];
    if (self) {
        

        MusicLibrary * musicLibrary =[[MusicLibrary alloc ] init];
        NSArray *library = musicLibrary.library;
        
        NSDictionary *playlistDictionary = library[index];
        
        _playlistTitle=[playlistDictionary objectForKey:kTitle];
        _playlistDescription=[playlistDictionary objectForKey:kDescription];
        
        NSString *iconName =[playlistDictionary objectForKey:kIcon];
        NSString *iconNameLarge =[playlistDictionary objectForKey:kLargeIcon];
        
        _playlistIcon=[UIImage imageNamed:iconName];
        _playlistIconLarge=[UIImage imageNamed:iconNameLarge];
        
        
        _playlistArtists=[NSArray arrayWithArray:[playlistDictionary objectForKey:kArtists] ];
        
        _playlistbackgroundColor=[playlistDictionary objectForKey:kBackgroundColor];
        
        NSDictionary *colorDictionary=[playlistDictionary objectForKey:kBackgroundColor];
        
        _playlistbackgroundColor = [self rgbColorFromDictionary:colorDictionary];
     
        
    }
    return self;
}




-(UIColor*)rgbColorFromDictionary:(NSDictionary*)colorDictionary{
    
    CGFloat red = [[colorDictionary objectForKey:@"red"] doubleValue];
    CGFloat green = [[colorDictionary objectForKey:@"green"] doubleValue];
    CGFloat blue = [[colorDictionary objectForKey:@"blue"] doubleValue];
    CGFloat alpha = [[colorDictionary objectForKey:@"alpha"] doubleValue];
    
    return [UIColor colorWithRed:red/255 green:green/255 blue:blue/255 alpha:alpha];
    
    
    
}





@end
