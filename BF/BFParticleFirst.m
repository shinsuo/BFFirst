//
//  MyCocos2DClass.m
//  BF
//
//  Created by suo xin on 12-8-19.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "BFParticleFirst.h"


@implementation BFParticleFirst

- (id)init
{
    return [self initWithTotalParticles:250];
}

- (id)initWithTotalParticles:(NSUInteger)numberOfParticles
{
    if (self = [super initWithTotalParticles:numberOfParticles]) {
        
        self.duration = kCCParticleDurationInfinity;
        self.emitterMode = kCCParticleModeGravity;
        
        if (self.emitterMode == kCCParticleModeGravity) {
            self.sourcePosition = ccp(-15, 0);
            self.gravity = ccp(-50, -90);
            self.radialAccel = -90;
            self.radialAccelVar = 20;
            self.speed = 15;
            self.speedVar = 4;
            self.tangentialAccel = 120;
            self.tangentialAccelVar = 10;
        }else if (self.emitterMode == kCCParticleModeRadius) {
            
        }
        
        self.position = CGPointZero;
        self.posVar = CGPointZero;
        self.positionType = kCCPositionTypeFree;
        
        self.startSize = 40.0f;
        self.startSizeVar = 0.0f;
        self.endSize = kCCParticleStartSizeEqualToEndSize;
        self.endSizeVar = 0;
        
        self.angle = 0;
        self.angleVar = 0;
        
        self.life = 5.0f;
        self.lifeVar = 1.0f;
        
        self.emissionRate = 30;
        self.totalParticles = numberOfParticles;
        
        startColor.r = 1.0f;
        startColor.g = 0.25f; 
        startColor.b = 0.12f;
        startColor.a = 1.0f;
        startColorVar.r = 0.0f;
        startColorVar.g = 0.0f;
        startColorVar.b = 0.0f;
        startColorVar.a = 0.0f;
        endColor.r = 0.0f;
        endColor.g = 0.0f;
        endColor.b = 0.0f;
        endColor.a = 1.0f;
        endColorVar.r = 0.0f;
        endColorVar.g = 0.0f;
        endColorVar.b = 1.0f;
        endColorVar.a = 0.0f;
        
        self.blendFunc = (ccBlendFunc){GL_SRC_ALPHA,GL_DST_ALPHA};
        
        self.texture = [[CCTextureCache sharedTextureCache] addImage:@"Icon.png"];
        
    }
    return self;
}

@end
