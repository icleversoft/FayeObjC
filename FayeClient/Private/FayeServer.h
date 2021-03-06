//
//  FayeServer.h
//  FayeClient
//
//  Created by Tyrone Trevorrow on 16-02-13.
//  Copyright (c) 2013 Sudeium. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, FayeServerConnectionType) {
    FayeServerConnectionTypeSecureWebSocket,
    FayeServerConnectionTypeWebSocket,
    FayeServerConnectionTypeSecureLongPolling,
    FayeServerConnectionTypeLongPolling
};

@interface FayeServer : NSObject
@property (nonatomic, strong) NSURL *url;
@property (nonatomic, readonly, assign) FayeServerConnectionType connectionType;
@property (nonatomic, assign) NSInteger failures;
@property (nonatomic, copy) NSDictionary *extension;
@property (nonatomic, assign) NSInteger sortIndex;
@property (nonatomic, strong) NSMutableDictionary *channelStatus;
@property (nonatomic, strong) NSString *clientID;
@property (nonatomic, copy) NSDictionary *advice;

+ (instancetype) fayeServerWithURL: (NSURL*) url;

- (NSComparisonResult) compareServer: (FayeServer*) otherServer;

- (BOOL) connectsWithWebSockets;
- (BOOL) connectsWithLongPolling;

- (NSString*) reconnectAdvice;
- (NSTimeInterval) intervalAdvice;
- (NSTimeInterval) timeoutAdvice;

@end
