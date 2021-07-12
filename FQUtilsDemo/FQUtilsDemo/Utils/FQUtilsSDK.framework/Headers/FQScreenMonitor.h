//
//  FQScreenMonitor.h
//  FQUtils
//
//  Created by TKiOS on 2021/7/5.
//

#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN
typedef enum : NSUInteger {
    ///截屏
    FQScreenShotsModel,
    ///录制
    FQScreenRecordModel,
} FQScreenMonitorModel;

typedef void(^MonitorBlock)(FQScreenMonitorModel model);
@interface FQScreenMonitor : NSObject

@property (nonatomic, copy) MonitorBlock monitorBlock;

+(instancetype)sharedScreenMonitor;
///开始监听
-(void)fq_startMonitor;
///移除监听
-(void)fq_removeMonitor;
@end

NS_ASSUME_NONNULL_END
