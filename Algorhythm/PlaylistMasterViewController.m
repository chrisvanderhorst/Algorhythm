//
//  ViewController.m
//  Algorhythm
//
//  Created by Chris Vanderhorst on 25/06/2016.
//  Copyright © 2016 Wekonnect. All rights reserved.
//

#import "PlaylistMasterViewController.h"
#import "PlaylistDetailViewController.h"
#import "Playlist.h"

@interface PlaylistMasterViewController ()

@end

@implementation PlaylistMasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    for(NSUInteger index=0; index< self.playlistImageViews.count;index++){
        Playlist *playlist =[[Playlist alloc] initWithIndex:index];
        UIImageView * playlistImageView = self.playlistImageViews[index];
        
        playlistImageView.image=playlist.playlistIcon;
        playlistImageView.backgroundColor=playlist.playlistbackgroundColor;
        
        
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller. showPlaylistDetail
    
    UIImageView *playtlistImageView = (UIImageView *)[sender view];
    
    if([self.playlistImageViews containsObject:playtlistImageView]){
        
        NSUInteger index = [self.playlistImageViews indexOfObject:playtlistImageView];
        
        
        if([segue.identifier isEqual:@"showPlaylistDetail"]){
            
            PlaylistDetailViewController *playlistDetailController = (PlaylistDetailViewController *)segue.destinationViewController;
            
            // playlistDetailController.segueLabelText = @"Yay! You pressed the button!";
            
            playlistDetailController.playlist=[[Playlist alloc]initWithIndex:index];
            
            
            
            
        }
        
        
        
        
    }

   

    
    
    
}



- (IBAction)showPlaylistDetail:(id)sender {
    
    
    [self performSegueWithIdentifier:@"showPlaylistDetail" sender:sender];
    
    
}





@end
