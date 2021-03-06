//
//  PersonDetailsViewModel.m
//  PeopleCRM
//
//  Created by Benjamin Encz on 3/16/15.
//  Copyright (c) 2015 Benjamin Encz. All rights reserved.
//

#import "PersonDetailViewModel.h"

@implementation PersonDetailViewModel

- (id)init {
  self = [super init];
  
  if (self) {
    
    self.editButtonCommand = [[RACCommand alloc] initWithSignalBlock:^RACSignal *(id input) {
      return [RACSignal return:@(YES)];
    }];

    RAC(self, avatar) = RACObserve(self, person.avatar);
    RAC(self, name) = RACObserve(self, person.name);
    RAC(self, notes) = RACObserve(self, person.notes);
    RAC(self, twitterHandle) = RACObserve(self, person.twitterUsername);
  }
  
  return self;
}

@end
