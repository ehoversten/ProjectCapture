//
//  CaptureEntry+CoreDataProperties.h
//  ProjectCapture
//
//  Created by Erik Hoversten on 13.12.15.
//  Copyright © 2015 EverProductions. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "CaptureEntry.h"

NS_ASSUME_NONNULL_BEGIN

@interface CaptureEntry (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *title;
@property (nullable, nonatomic, retain) NSString *details;
@property (nullable, nonatomic, retain) NSString *nextStep;
@property (nonatomic) NSTimeInterval date;
@property (nonatomic) NSTimeInterval calDate;
@property (nullable, nonatomic, retain) NSData *projectImage;
@property (nonatomic) double progress;
@property (nonatomic) double timer;
@property (nonatomic) int16_t rating;
@property (nonatomic) NSTimeInterval dueDate;
@property (nullable, nonatomic, retain) NSString *ideas;

@end

NS_ASSUME_NONNULL_END
