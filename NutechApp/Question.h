//
//  Question.h
//  NutechApp
//
//  Created by Fiseha on 5/13/15.
//  Copyright (c) 2015 Nutech. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Question : NSManagedObject

@property (nonatomic, retain) NSString * subject;
@property (nonatomic, retain) NSString * questioin;
@property (nonatomic, retain) NSString * answer;

@end
