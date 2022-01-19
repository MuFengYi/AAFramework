//
//  PlayView.m
//  Pods
//
//  Created by hao ke on 2022/1/19.
//

#import "PlayView.h"


@implementation PlayView

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */




- (instancetype)initWithFrame:(CGRect)frame
{
    
    self   = [super initWithFrame:frame];
    
    [self initCommon];
    return self;
}


- (instancetype)initWithCoder:(NSCoder *)coder
{
    
    self    =   [super initWithCoder:coder];
    [self initCommon];
    
    
    
    return self;
}
- (void)initCommon{
    [self toPlay];
    
}




- (void)play:(NSString*)url
{
    
    if ([url hasPrefix:@"http"]||[url hasPrefix:@"rtmp"]) {
        
        self.url    =   [NSURL URLWithString:url];
        
        
    }else{
        self.url    =   [NSURL fileURLWithPath:url];
    }
    
    
    
    
    
    [self toPlay];
}
- (void)toPlay{
    
    [IJKFFMoviePlayerController checkIfFFmpegVersionMatch:true];
    IJKFFOptions    *options    =   [IJKFFOptions optionsByDefault];
    
    [self.player.view removeFromSuperview];
    
    

    self.player =   [[IJKFFMoviePlayerController alloc] initWithContentURL:self.url withOptions:options];
    

    [self.player.view setAutoresizingMask:UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleHeight];
    
    
    
    
    
    self.player.view.frame  = self.bounds;
    self.player.scalingMode =   IJKMPMovieScalingModeAspectFit;
    
    self.player.shouldAutoplay  =   YES;
    self.autoresizesSubviews    =   YES;
    if (self.player.view!=nil) {
        self.backgroundColor    =   UIColor.greenColor;
        [self addSubview:self.player.view];
    }
}


















- (void)prepareToPlay{
    
    
    [self.player prepareToPlay];
    
    
}
@end
