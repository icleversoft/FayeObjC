/* The MIT License
 
 Copyright (c) 2011 Paul Crawford
 Copyright (c) 2013 Tyrone Trevorrow
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in
 all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 THE SOFTWARE. */

//
//  FayeClient.m
//  FayeObjC
//

#import "FayeClient.h"
#import "FayeMessage.h"
#import "FayeChannel.h"
#import "FayeServer.h"
#import "SRWebSocket.h"

NSString * const FayeClientHandshakeChannel = @"/meta/handshake";
NSString * const FayeClientConnectChannel = @"/meta/connect";
NSString * const FayeClientDisconnectChannel = @"/meta/disconnect";
NSString * const FayeClientSubscribeChannel = @"/meta/subscribe";
NSString * const FayeClientUnsubscribeChannel = @"/meta/unsubscribe";

// allows definition of private property
@interface FayeClient () <SRWebSocketDelegate>
@property (nonatomic, retain) SRWebSocket* webSocket;
@property (nonatomic, strong) NSMutableDictionary *mySubscribedChannels;
@property (retain) NSDictionary *connectionExtension;
@property (nonatomic, strong) NSFileHandle *logFile;
@property (nonatomic, readonly) FayeServer *currentServer;

- (void) _debugMessage: (NSString*) format, ... NS_FORMAT_FUNCTION(1,2);

@end

@implementation FayeClient



@end