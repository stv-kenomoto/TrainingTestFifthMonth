//
//  Schedule.m
//  TrainingTestDay1
//
//  Created by Kouki Enomoto on 2016/12/26.
//  Copyright © 2016年 enomt. All rights reserved.
//

#import "Schedule.h"

const NSInteger SchedulesCount = 48;
const NSInteger HalfOfHourTimeInterval = 1800;

@implementation Schedule

+ (NSArray<Schedule *> *)schedulesWithDate:(NSDate *)date {
    NSMutableArray<Schedule *> *schedules = [@[] mutableCopy];
    for (NSInteger i = 0; i < SchedulesCount; i++) {
        NSDate *dateForSchedule = [date dateByAddingTimeInterval:HalfOfHourTimeInterval * i];
        [schedules addObject:[[Schedule alloc] initWithDate:dateForSchedule]];
    }

    return schedules;
}

- (instancetype)initWithDate:(NSDate *)date {
    if (self = [self init]) {
        _date = date;
    }

    return self;
}

@end