//
//  HelloWorldLayer.m
//  BF
//
//  Created by suo xin on 12-8-19.
//  Copyright __MyCompanyName__ 2012年. All rights reserved.
//


// Import the interfaces
#import "HelloWorldLayer.h"
#import "BFParticleFirst.h"

// HelloWorldLayer implementation
@implementation HelloWorldLayer

+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	HelloWorldLayer *layer = [HelloWorldLayer node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

// on "init" you need to initialize your instance
-(id) init
{
	// always call "super" init
	// Apple recommends to re-assign "self" with the "super" return value
	if( (self=[super init])) {
		
		// create and initialize a Label

		// ask director the the window size
		CGSize size = [[CCDirector sharedDirector] winSize];

        CCSprite *sprite = [CCSprite spriteWithFile:@"Icon-Small.png"];
        sprite.position = CGPointMake(size.width/2, size.height/2);
        [self addChild:sprite];
        
        self.isTouchEnabled = YES;
	}
	return self;
}

// on "dealloc" you need to release all your retained objects
- (void) dealloc
{
	// in case you have something to dealloc, do it in this method
	// in this particular example nothing needs to be released.
	// cocos2d will automatically release all the children (Label)
	
	// don't forget to call "super dealloc"
	[super dealloc];
}

- (void)ccTouchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    BFParticleFirst *bf = [BFParticleFirst node];
    CGSize size = [[CCDirector sharedDirector] winSize];
    bf.position = CGPointMake(size.width/2, size.height/2);
    [self addChild:bf];
}

@end
