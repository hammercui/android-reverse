.class public Lcom/doodlemobile/gamecenter/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field public static final CLOSE_FEATURE_VIEW:I = 0x6

.field public static final CLOSE_FULLSCREEN:I = 0x1

.field public static final CLOSE_FULLSCREEN_SMALL:I = 0x10

.field public static final CREATE_FEATURE_VIEW:I = 0x4

.field public static final CREATE_FULLSCREEN:I = 0x0

.field public static final DEFAULT_FULLSCREEN_LAST_TIME:J = 0x2710L

.field public static final GOTO_RATE:I = 0x8

.field public static MY_AD_UNIT_ID:Ljava/lang/String; = null

.field public static MY_GA_ID:Ljava/lang/String; = null

.field public static final RELEASE_FEATURE_VIEW:I = 0x7

.field public static final SHOW_FEATURE_VIEW:I = 0x5

.field public static final SHOW_FULLSCREEN_SMALL:I = 0x9

.field public static final SHOW_FULLSCREEN_SMALLEXIT:I = 0x11

.field public static final SHOW_MOREGAMES_LAYOUT:I = 0x3

.field public static final START_MOREGAMES_ACTIVITY:I = 0x2

.field public static ShowFullScreenTimes:I

.field private static activity:Landroid/app/Activity;

.field public static fvShouldShow:Z

.field private static handler:Landroid/os/Handler;

.field private static isLandSacpe:Z

.field private static metrics:Landroid/util/DisplayMetrics;

.field private static orientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 36
    sput-boolean v1, Lcom/doodlemobile/gamecenter/Platform;->fvShouldShow:Z

    .line 51
    sput-object v0, Lcom/doodlemobile/gamecenter/Platform;->activity:Landroid/app/Activity;

    .line 52
    sput-object v0, Lcom/doodlemobile/gamecenter/Platform;->handler:Landroid/os/Handler;

    .line 53
    sput v1, Lcom/doodlemobile/gamecenter/Platform;->orientation:I

    .line 54
    sput-object v0, Lcom/doodlemobile/gamecenter/Platform;->metrics:Landroid/util/DisplayMetrics;

    .line 55
    sput-boolean v1, Lcom/doodlemobile/gamecenter/Platform;->isLandSacpe:Z

    .line 57
    sput v1, Lcom/doodlemobile/gamecenter/Platform;->ShowFullScreenTimes:I

    .line 58
    sput-object v0, Lcom/doodlemobile/gamecenter/Platform;->MY_AD_UNIT_ID:Ljava/lang/String;

    .line 59
    sput-object v0, Lcom/doodlemobile/gamecenter/Platform;->MY_GA_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clearMessage()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 162
    const/4 v2, 0x7

    new-array v1, v2, [I

    .line 163
    aput v3, v1, v3

    .line 164
    aput v6, v1, v4

    aput v7, v1, v5

    const/4 v2, 0x6

    aput v2, v1, v6

    .line 165
    aput v5, v1, v7

    const/4 v2, 0x6

    aput v4, v1, v2

    .line 167
    .local v1, "messages":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 171
    return-void

    .line 168
    :cond_0
    invoke-static {}, Lcom/doodlemobile/gamecenter/Platform;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/doodlemobile/gamecenter/Platform;->getHandler(Landroid/app/Activity;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 169
    invoke-static {}, Lcom/doodlemobile/gamecenter/Platform;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/doodlemobile/gamecenter/Platform;->getHandler(Landroid/app/Activity;)Landroid/os/Handler;

    move-result-object v2

    aget v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 167
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/doodlemobile/gamecenter/Platform;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getHandler(Landroid/app/Activity;)Landroid/os/Handler;
    .locals 1
    .param p0, "mainActivity"    # Landroid/app/Activity;

    .prologue
    .line 182
    sget-object v0, Lcom/doodlemobile/gamecenter/Platform;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Lcom/doodlemobile/gamecenter/event/PlatformHandler;

    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/event/PlatformHandler;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/doodlemobile/gamecenter/Platform;->handler:Landroid/os/Handler;

    .line 185
    :cond_0
    sget-object v0, Lcom/doodlemobile/gamecenter/Platform;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getMetrics()Landroid/util/DisplayMetrics;
    .locals 3

    .prologue
    .line 262
    sget-boolean v1, Lcom/doodlemobile/gamecenter/Platform;->isLandSacpe:Z

    if-eqz v1, :cond_0

    .line 263
    sget-object v1, Lcom/doodlemobile/gamecenter/Platform;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sget-object v2, Lcom/doodlemobile/gamecenter/Platform;->metrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v2, :cond_0

    .line 264
    sget-object v1, Lcom/doodlemobile/gamecenter/Platform;->metrics:Landroid/util/DisplayMetrics;

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 265
    .local v0, "w":I
    sget-object v1, Lcom/doodlemobile/gamecenter/Platform;->metrics:Landroid/util/DisplayMetrics;

    sget-object v2, Lcom/doodlemobile/gamecenter/Platform;->metrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 266
    sget-object v1, Lcom/doodlemobile/gamecenter/Platform;->metrics:Landroid/util/DisplayMetrics;

    iput v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 270
    :cond_0
    sget-object v1, Lcom/doodlemobile/gamecenter/Platform;->metrics:Landroid/util/DisplayMetrics;

    return-object v1
.end method

.method public static getOrientation()I
    .locals 1

    .prologue
    .line 256
    sget-boolean v0, Lcom/doodlemobile/gamecenter/Platform;->isLandSacpe:Z

    if-eqz v0, :cond_0

    .line 257
    const/4 v0, 0x2

    sput v0, Lcom/doodlemobile/gamecenter/Platform;->orientation:I

    .line 258
    :cond_0
    sget v0, Lcom/doodlemobile/gamecenter/Platform;->orientation:I

    return v0
.end method

.method public static getServerTime()V
    .locals 3

    .prologue
    .line 222
    sget-object v0, Lcom/doodlemobile/gamecenter/Platform;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/doodlemobile/gamecenter/Platform;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/net/DNetworkStatus;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 223
    :cond_0
    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->getTimeListener:Lcom/doodlemobile/gamecenter/fullscreen/Resources$GetServerTimeListener;

    if-eqz v0, :cond_1

    .line 224
    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->getTimeListener:Lcom/doodlemobile/gamecenter/fullscreen/Resources$GetServerTimeListener;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Lcom/doodlemobile/gamecenter/fullscreen/Resources$GetServerTimeListener;->onServerTimeRecived(J)V

    .line 253
    :cond_1
    :goto_0
    return-void

    .line 229
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/doodlemobile/gamecenter/Platform$1;

    invoke-direct {v1}, Lcom/doodlemobile/gamecenter/Platform$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 252
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static getTestServerTime()V
    .locals 3

    .prologue
    .line 275
    sget-object v0, Lcom/doodlemobile/gamecenter/Platform;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/doodlemobile/gamecenter/Platform;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/net/DNetworkStatus;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 276
    :cond_0
    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->getTimeListener:Lcom/doodlemobile/gamecenter/fullscreen/Resources$GetServerTimeListener;

    if-eqz v0, :cond_1

    .line 277
    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->getTimeListener:Lcom/doodlemobile/gamecenter/fullscreen/Resources$GetServerTimeListener;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Lcom/doodlemobile/gamecenter/fullscreen/Resources$GetServerTimeListener;->onServerTimeRecived(J)V

    .line 302
    :cond_1
    :goto_0
    return-void

    .line 282
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/doodlemobile/gamecenter/Platform$2;

    invoke-direct {v1}, Lcom/doodlemobile/gamecenter/Platform$2;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 301
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static isFullScreenShowing()Z
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreen:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreen:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    const/4 v0, 0x1

    .line 191
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFullScreenSmallIsReady()Z
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreen_small:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFullScreenSmallShowing()Z
    .locals 1

    .prologue
    .line 195
    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreen_small:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreen_small:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const/4 v0, 0x1

    .line 197
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static onCreate(Landroid/app/Activity;Z)V
    .locals 9
    .param p0, "mainActivity"    # Landroid/app/Activity;
    .param p1, "landScape"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 62
    if-nez p0, :cond_0

    .line 63
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Platform init failed: activity can\'t be null"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 65
    :cond_0
    sput-object p0, Lcom/doodlemobile/gamecenter/Platform;->activity:Landroid/app/Activity;

    .line 66
    sput-boolean p1, Lcom/doodlemobile/gamecenter/Platform;->isLandSacpe:Z

    .line 67
    invoke-static {}, Lcom/doodlemobile/gamecenter/event/ExitAppUtils;->getInstance()Lcom/doodlemobile/gamecenter/event/ExitAppUtils;

    move-result-object v5

    sget-object v6, Lcom/doodlemobile/gamecenter/Platform;->activity:Landroid/app/Activity;

    invoke-virtual {v5, v6}, Lcom/doodlemobile/gamecenter/event/ExitAppUtils;->addActivity(Landroid/app/Activity;)V

    .line 68
    new-instance v5, Lcom/doodlemobile/gamecenter/event/PlatformHandler;

    sget-object v6, Lcom/doodlemobile/gamecenter/Platform;->activity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Lcom/doodlemobile/gamecenter/event/PlatformHandler;-><init>(Landroid/app/Activity;)V

    sput-object v5, Lcom/doodlemobile/gamecenter/Platform;->handler:Landroid/os/Handler;

    .line 70
    sget-object v5, Lcom/doodlemobile/gamecenter/Platform;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    sput v5, Lcom/doodlemobile/gamecenter/Platform;->orientation:I

    .line 71
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v5, Lcom/doodlemobile/gamecenter/Platform;->metrics:Landroid/util/DisplayMetrics;

    .line 72
    sget-object v5, Lcom/doodlemobile/gamecenter/Platform;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    sget-object v6, Lcom/doodlemobile/gamecenter/Platform;->metrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v5, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 75
    sput v7, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->index:I

    .line 76
    sput v7, Lcom/doodlemobile/gamecenter/Platform;->ShowFullScreenTimes:I

    .line 77
    invoke-static {p0}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->onCreate(Landroid/app/Activity;)V

    .line 79
    sget-object v5, Lcom/doodlemobile/gamecenter/Platform;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "pkgName":Ljava/lang/String;
    sget-object v5, Lcom/doodlemobile/gamecenter/Platform;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "dm_featureview"

    const-string v7, "layout"

    invoke-virtual {v5, v6, v7, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->featureViewR:I

    .line 81
    sget-object v5, Lcom/doodlemobile/gamecenter/Platform;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "dm_admob"

    const-string v7, "layout"

    invoke-virtual {v5, v6, v7, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->admobViewR:I

    .line 82
    sget v5, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->admobViewR:I

    if-nez v5, :cond_1

    .line 83
    sget v5, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->featureViewR:I

    sput v5, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->admobViewR:I

    .line 86
    :cond_1
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobilePublic;->getAppVersionName()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "gameVerName":Ljava/lang/String;
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobilePublic;->getAppVersionCode()I

    move-result v0

    .line 88
    .local v0, "gameVerCode":I
    const-string v5, "activity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "gameVerName = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; gameVerCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    sget-object v5, Lcom/doodlemobile/gamecenter/Platform;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v5

    check-cast v5, Lcom/doodlemobile/gamecenter/DoodleAnalytics;

    .line 91
    sget-object v6, Lcom/doodlemobile/gamecenter/DoodleAnalytics$TrackerName;->APP_TRACKER:Lcom/doodlemobile/gamecenter/DoodleAnalytics$TrackerName;

    .line 90
    invoke-virtual {v5, v6}, Lcom/doodlemobile/gamecenter/DoodleAnalytics;->getTracker(Lcom/doodlemobile/gamecenter/DoodleAnalytics$TrackerName;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v4

    .line 92
    .local v4, "tracker":Lcom/google/android/gms/analytics/Tracker;
    invoke-virtual {v4, v8}, Lcom/google/android/gms/analytics/Tracker;->enableAdvertisingIdCollection(Z)V

    .line 93
    invoke-virtual {v4, v8}, Lcom/google/android/gms/analytics/Tracker;->enableAutoActivityTracking(Z)V

    .line 95
    new-instance v2, Lcom/google/android/gms/analytics/ExceptionReporter;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v5

    sget-object v6, Lcom/doodlemobile/gamecenter/Platform;->activity:Landroid/app/Activity;

    invoke-direct {v2, v4, v5, v6}, Lcom/google/android/gms/analytics/ExceptionReporter;-><init>(Lcom/google/android/gms/analytics/Tracker;Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;)V

    .line 96
    .local v2, "myHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    invoke-static {v2}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 97
    return-void
.end method

.method public static onDestroy()V
    .locals 4

    .prologue
    .line 128
    const/4 v2, 0x0

    :try_start_0
    sput-boolean v2, Lcom/doodlemobile/gamecenter/Platform;->fvShouldShow:Z

    .line 129
    invoke-static {}, Lcom/doodlemobile/gamecenter/Platform;->clearMessage()V

    .line 130
    invoke-static {}, Lcom/doodlemobile/gamecenter/event/ExitAppUtils;->getInstance()Lcom/doodlemobile/gamecenter/event/ExitAppUtils;

    move-result-object v2

    sget-object v3, Lcom/doodlemobile/gamecenter/Platform;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/doodlemobile/gamecenter/event/ExitAppUtils;->delActivity(Landroid/app/Activity;)V

    .line 131
    const/4 v2, 0x0

    sput-object v2, Lcom/doodlemobile/gamecenter/Platform;->handler:Landroid/os/Handler;

    .line 132
    const/4 v2, 0x0

    sput-object v2, Lcom/doodlemobile/gamecenter/Platform;->activity:Landroid/app/Activity;

    .line 133
    sget-object v2, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->featureView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 134
    sget-object v2, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->featureView:Landroid/view/View;

    check-cast v2, Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 135
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Lcom/google/android/gms/monkey/AdView;

    if-eqz v2, :cond_0

    .line 136
    check-cast v1, Lcom/google/android/gms/monkey/AdView;

    .end local v1    # "view":Landroid/view/View;
    invoke-virtual {v1}, Lcom/google/android/gms/monkey/AdView;->destroy()V

    .line 138
    :cond_0
    sget-object v2, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->featureView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewManager;

    sget-object v3, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->featureView:Landroid/view/View;

    invoke-interface {v2, v3}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 139
    const/4 v2, 0x0

    sput-object v2, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->featureView:Landroid/view/View;

    .line 141
    :cond_1
    const/4 v2, 0x0

    sput v2, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->featureViewR:I

    .line 142
    const/4 v2, 0x0

    sput v2, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->admobViewR:I

    .line 143
    const/4 v2, 0x0

    sput-object v2, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->getTimeListener:Lcom/doodlemobile/gamecenter/fullscreen/Resources$GetServerTimeListener;

    .line 144
    const/4 v2, 0x0

    sput-object v2, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreenCloseListener:Lcom/doodlemobile/gamecenter/fullscreen/Resources$FullScreenCloseListener;

    .line 146
    const/4 v2, 0x0

    sput-object v2, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreen:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;

    .line 147
    const/4 v2, 0x0

    sput-object v2, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreen_small:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;

    .line 148
    sget-object v2, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreenImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreenImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 149
    sget-object v2, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreenImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 151
    :cond_2
    sget-object v2, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreenImage_small:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreenImage_small:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 152
    sget-object v2, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreenImage_small:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 154
    :cond_3
    const/4 v2, 0x0

    sput-object v2, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreenImage:Landroid/graphics/Bitmap;

    .line 155
    const/4 v2, 0x0

    sput-object v2, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreenImage_small:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 156
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 157
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 100
    sget-object v1, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->featureView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 101
    sget-object v1, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->featureView:Landroid/view/View;

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 102
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Lcom/google/android/gms/monkey/AdView;

    if-eqz v1, :cond_0

    .line 103
    check-cast v0, Lcom/google/android/gms/monkey/AdView;

    .end local v0    # "view":Landroid/view/View;
    invoke-virtual {v0}, Lcom/google/android/gms/monkey/AdView;->pause()V

    .line 106
    :cond_0
    return-void
.end method

.method public static onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 109
    sget-object v1, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->featureView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 110
    sget-object v1, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->featureView:Landroid/view/View;

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 111
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Lcom/google/android/gms/monkey/AdView;

    if-eqz v1, :cond_0

    .line 112
    check-cast v0, Lcom/google/android/gms/monkey/AdView;

    .end local v0    # "view":Landroid/view/View;
    invoke-virtual {v0}, Lcom/google/android/gms/monkey/AdView;->resume()V

    .line 115
    :cond_0
    return-void
.end method

.method public static onStart()V
    .locals 2

    .prologue
    .line 118
    sget-object v0, Lcom/doodlemobile/gamecenter/Platform;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    sget-object v1, Lcom/doodlemobile/gamecenter/Platform;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStart(Landroid/app/Activity;)V

    .line 119
    return-void
.end method

.method public static onStop()V
    .locals 2

    .prologue
    .line 122
    sget-object v0, Lcom/doodlemobile/gamecenter/Platform;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    sget-object v1, Lcom/doodlemobile/gamecenter/Platform;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStop(Landroid/app/Activity;)V

    .line 123
    sget-object v0, Lcom/doodlemobile/gamecenter/Platform;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->onStop(Landroid/app/Activity;)V

    .line 124
    return-void
.end method

.method public static setActivity(Landroid/app/Activity;)V
    .locals 0
    .param p0, "mainActivity"    # Landroid/app/Activity;

    .prologue
    .line 174
    sput-object p0, Lcom/doodlemobile/gamecenter/Platform;->activity:Landroid/app/Activity;

    .line 175
    return-void
.end method

.method public static setFullScreenCloseListener(Lcom/doodlemobile/gamecenter/fullscreen/Resources$FullScreenCloseListener;)V
    .locals 0
    .param p0, "fullScreenCloseListener"    # Lcom/doodlemobile/gamecenter/fullscreen/Resources$FullScreenCloseListener;

    .prologue
    .line 217
    sput-object p0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreenCloseListener:Lcom/doodlemobile/gamecenter/fullscreen/Resources$FullScreenCloseListener;

    .line 218
    return-void
.end method

.method public static setFullScreenTaskBeginListener(Lcom/doodlemobile/gamecenter/fullscreen/Resources$FullScreenTaskBeginListener;)V
    .locals 0
    .param p0, "fullScreenTaskBeginListener"    # Lcom/doodlemobile/gamecenter/fullscreen/Resources$FullScreenTaskBeginListener;

    .prologue
    .line 213
    sput-object p0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreenTaskBeginListener:Lcom/doodlemobile/gamecenter/fullscreen/Resources$FullScreenTaskBeginListener;

    .line 214
    return-void
.end method

.method public static setFull_Admob_ID(Ljava/lang/String;)V
    .locals 0
    .param p0, "admob_id"    # Ljava/lang/String;

    .prologue
    .line 305
    sput-object p0, Lcom/doodlemobile/gamecenter/Platform;->MY_AD_UNIT_ID:Ljava/lang/String;

    .line 306
    return-void
.end method

.method public static setGetFullScreenResultListener(Lcom/doodlemobile/gamecenter/fullscreen/Resources$GetFullScreenResultListener;)V
    .locals 0
    .param p0, "getFullScreenResultListener"    # Lcom/doodlemobile/gamecenter/fullscreen/Resources$GetFullScreenResultListener;

    .prologue
    .line 209
    sput-object p0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->getFullScreenResultListener:Lcom/doodlemobile/gamecenter/fullscreen/Resources$GetFullScreenResultListener;

    .line 210
    return-void
.end method

.method public static setGetServerTimeListener(Lcom/doodlemobile/gamecenter/fullscreen/Resources$GetServerTimeListener;)V
    .locals 0
    .param p0, "getTimeListener"    # Lcom/doodlemobile/gamecenter/fullscreen/Resources$GetServerTimeListener;

    .prologue
    .line 205
    sput-object p0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->getTimeListener:Lcom/doodlemobile/gamecenter/fullscreen/Resources$GetServerTimeListener;

    .line 206
    return-void
.end method

.method public static setGoogleAnalyticsID(Ljava/lang/String;)V
    .locals 0
    .param p0, "GA_id"    # Ljava/lang/String;

    .prologue
    .line 309
    sput-object p0, Lcom/doodlemobile/gamecenter/Platform;->MY_GA_ID:Ljava/lang/String;

    .line 310
    return-void
.end method
