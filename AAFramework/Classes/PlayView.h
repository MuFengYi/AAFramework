//
//  PlayView.h
//  Pods
//
//  Created by hao ke on 2022/1/19.
//

#import <UIKit/UIKit.h>


#import "IJKMediaFramework/IJKMediaFramework.h"
NS_ASSUME_NONNULL_BEGIN
@interface PlayView : UIView



@property   (nonatomic,strong)IJKFFMoviePlayerController  *player;


@property   (nonatomic,strong)NSURL *url;

- (void)play:(NSString*)url;


- (void)prepareToPlay;
@end
NS_ASSUME_NONNULL_END
