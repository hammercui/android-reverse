.class public Lcom/doodlemobile/gamecenter/event/PlatformHandler;
.super Landroid/os/Handler;
.source "PlatformHandler.java"


# static fields
.field private static lastMoreGameClickTime:J


# instance fields
.field private activity:Landroid/app/Activity;

.field private interstitial:Lcom/google/android/gms/monkey/InterstitialAd;

.field private scaleX:F

.field private scaleY:F

.field private should_show:Z

.field task:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenTask;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6
    .param p1, "mainActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x44480000    # 800.0f

    const/high16 v3, 0x43f00000    # 480.0f

    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 36
    iput-object v5, p0, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->activity:Landroid/app/Activity;

    .line 37
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->should_show:Z

    .line 38
    iput v2, p0, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->scaleX:F

    .line 39
    iput v2, p0, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->scaleY:F

    .line 228
    iput-object v5, p0, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->task:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenTask;

    .line 43
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->activity:Landroid/app/Activity;

    .line 44
    invoke-static {p1}, Lcom/doodlemobile/gamecenter/Platform;->setActivity(Landroid/app/Activity;)V

    .line 45
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->activity:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 58
    :goto_0
    return-void

    .line 48
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 49
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 50
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 51
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v2, :cond_1

    .line 52
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    iput v1, p0, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->scaleX:F

    .line 53
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    iput v1, p0, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->scaleY:F

    goto :goto_0

    .line 55
    :cond_1
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    iput v1, p0, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->scaleX:F

    .line 56
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    div-float/2addr v1, v4

    iput v1, p0, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->scaleY:F

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/doodlemobile/gamecenter/event/PlatformHandler;)Lcom/google/android/gms/monkey/InterstitialAd;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->interstitial:Lcom/google/android/gms/monkey/InterstitialAd;

    return-object v0
.end method

.method private closeFeatureView()V
    .locals 2

    .prologue
    .line 152
    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->featureView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 153
    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->featureView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 155
    :cond_0
    return-void
.end method

.method private closeFullScreen()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 263
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->removeMessages(I)V

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->should_show:Z

    .line 265
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->task:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenTask;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->task:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenTask;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenTask;->cancelTask()V

    .line 268
    :cond_0
    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreen:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreen:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 269
    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreen:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->setVisibility(I)V

    .line 270
    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreen:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewManager;

    sget-object v1, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreen:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 271
    sput-object v2, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreen:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;

    .line 273
    :cond_1
    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreenImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreenImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 274
    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreenImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 276
    :cond_2
    sput-object v2, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreenImage:Landroid/graphics/Bitmap;

    .line 277
    iput-object v2, p0, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->task:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenTask;

    .line 278
    return-void
.end method

.method private closeFullScreenSmall()V
    .locals 2

    .prologue
    .line 281
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->removeMessages(I)V

    .line 282
    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreen_small:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreen_small:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreen_small:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;->setVisibility(I)V

    .line 284
    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreen_small:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewManager;

    sget-object v1, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreen_small:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 285
    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreenCloseListener:Lcom/doodlemobile/gamecenter/fullscreen/Resources$FullScreenCloseListener;

    if-eqz v0, :cond_0

    .line 286
    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreenCloseListener:Lcom/doodlemobile/gamecenter/fullscreen/Resources$FullScreenCloseListener;

    invoke-interface {v0}, Lcom/doodlemobile/gamecenter/fullscreen/Resources$FullScreenCloseListener;->onFullSCreenClosed()V

    .line 289
    :cond_0
    return-void
.end method

.method private createFeatureView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 213
    new-instance v0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGameMutiCountryTask;

    invoke-direct {v0}, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGameMutiCountryTask;-><init>()V

    .line 214
    .local v0, "task":Lcom/doodlemobile/gamecenter/featuregames/DFeatureGameMutiCountryTask;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 215
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-array v2, v3, [Lorg/apache/http/NameValuePair;

    invoke-virtual {v0, v1, v2}, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGameMutiCountryTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_0
    new-array v1, v3, [Lorg/apache/http/NameValuePair;

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGameMutiCountryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private gotoRate()V
    .locals 4

    .prologue
    .line 145
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "market://details?id=com.mojang.minecraftpe"

    .line 147
    .local v1, "referrer":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 148
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 149
    return-void
.end method

.method private releaseFeatureView()V
    .locals 2

    .prologue
    .line 222
    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->featureView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 223
    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->featureView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewManager;

    sget-object v1, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->featureView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 224
    const/4 v0, 0x0

    sput-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->featureView:Landroid/view/View;

    .line 226
    :cond_0
    return-void
.end method

.method private showFeatureView()V
    .locals 6

    .prologue
    .line 159
    :try_start_0
    sget-object v4, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->featureView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 160
    sget-object v4, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->featureView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 161
    sget-object v4, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->featureView:Landroid/view/View;

    check-cast v4, Landroid/widget/RelativeLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 162
    .local v3, "view":Landroid/view/View;
    check-cast v3, Landroid/widget/RelativeLayout;

    .end local v3    # "view":Landroid/view/View;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 163
    .local v1, "content":Landroid/view/View;
    if-eqz v1, :cond_0

    instance-of v4, v1, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;

    if-eqz v4, :cond_0

    .line 164
    move-object v0, v1

    check-cast v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->logAppearEvent()V

    .line 165
    check-cast v1, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;

    .end local v1    # "content":Landroid/view/View;
    invoke-virtual {v1}, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->forceRefreshNewGame()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v2

    .line 169
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private showFeatureView(Landroid/graphics/Rect;II)V
    .locals 9
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "horizontalPosition"    # I
    .param p3, "verticalPosition"    # I

    .prologue
    const/4 v8, -0x2

    const/4 v7, 0x0

    .line 181
    sget-object v4, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->featureView:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 182
    sget-object v4, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->featureView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 183
    sget-object v4, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->featureView:Landroid/view/View;

    check-cast v4, Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 185
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_3

    .line 186
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 187
    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->scaleX:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 188
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->scaleY:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 186
    invoke-direct {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 189
    .local v2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, p0, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->scaleY:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 190
    iget v4, p1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, p0, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->scaleX:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 191
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    check-cast v3, Landroid/widget/RelativeLayout;

    .end local v3    # "view":Landroid/view/View;
    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 194
    .local v0, "content":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 195
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 198
    .local v1, "contentLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-nez p2, :cond_0

    const/16 p2, 0xe

    .line 199
    :cond_0
    if-nez p3, :cond_1

    const/16 p3, 0xc

    .line 200
    :cond_1
    invoke-virtual {v1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 201
    invoke-virtual {v1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 202
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    .end local v1    # "contentLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    instance-of v4, v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;

    if-eqz v4, :cond_3

    move-object v4, v0

    .line 205
    check-cast v4, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;

    invoke-virtual {v4}, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->logAppearEvent()V

    .line 206
    check-cast v0, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;

    .end local v0    # "content":Landroid/view/View;
    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->forceRefreshNewGame()V

    .line 210
    .end local v2    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    return-void
.end method

.method private showFullScreen()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 230
    const-string v0, "zhaoming"

    const-string v1, "handle show_fullscreen"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/net/DNetworkStatus;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 232
    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->getFullScreenResultListener:Lcom/doodlemobile/gamecenter/fullscreen/Resources$GetFullScreenResultListener;

    if-eqz v0, :cond_0

    .line 233
    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->getFullScreenResultListener:Lcom/doodlemobile/gamecenter/fullscreen/Resources$GetFullScreenResultListener;

    const-string v1, "No network"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/doodlemobile/gamecenter/fullscreen/Resources$GetFullScreenResultListener;->onFullScreenResultRecived(Ljava/lang/String;I)V

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget-boolean v0, p0, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->should_show:Z

    if-eqz v0, :cond_2

    .line 238
    new-instance v0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenTask;

    invoke-direct {v0}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenTask;-><init>()V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->task:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenTask;

    .line 239
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    .line 240
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->task:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenTask;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-array v2, v2, [Lorg/apache/http/NameValuePair;

    invoke-virtual {v0, v1, v2}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 245
    :cond_2
    :goto_1
    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreenTaskBeginListener:Lcom/doodlemobile/gamecenter/fullscreen/Resources$FullScreenTaskBeginListener;

    if-eqz v0, :cond_0

    .line 246
    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreenTaskBeginListener:Lcom/doodlemobile/gamecenter/fullscreen/Resources$FullScreenTaskBeginListener;

    invoke-interface {v0}, Lcom/doodlemobile/gamecenter/fullscreen/Resources$FullScreenTaskBeginListener;->onFullScreenTaskBegined()V

    goto :goto_0

    .line 242
    :cond_3
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->task:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenTask;

    new-array v1, v2, [Lorg/apache/http/NameValuePair;

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method private showFullScreenSmall(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 257
    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreen_small:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreenImage_small:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreen_small:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreen_small:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;

    const/16 v1, 0x52

    const/16 v2, 0x55

    invoke-virtual {v0, v1, v2, p1}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;->prepare(IIZ)Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;->show()V

    .line 260
    :cond_0
    return-void
.end method

.method private showFullScreenSmallExit(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 251
    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreen_small:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreenImage_small:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreen_small:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreen_small:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;

    const/16 v1, 0x3a

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2, p1}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;->prepare(IIZ)Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;->show()V

    .line 254
    :cond_0
    return-void
.end method

.method private showMoreGamesLayout()V
    .locals 10

    .prologue
    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 298
    .local v0, "curClickTime":J
    sget-wide v5, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->lastMoreGameClickTime:J

    sub-long v5, v0, v5

    const-wide/16 v7, 0x1f4

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    .line 317
    :goto_0
    return-void

    .line 303
    :cond_0
    :try_start_0
    new-instance v3, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;

    iget-object v5, p0, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->activity:Landroid/app/Activity;

    invoke-direct {v3, v5}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;-><init>(Landroid/content/Context;)V

    .line 304
    .local v3, "moreGamesLayout":Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 305
    .local v4, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->activity:Landroid/app/Activity;

    invoke-virtual {v5, v3, v4}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->setVisibility(I)V

    .line 308
    sget v5, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->gAppType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 309
    const/4 v5, 0x2

    const-string v6, "moreapps"

    const-string v7, "Appear"

    const-string v8, "MoreGamesLayout"

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->logEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    .end local v3    # "moreGamesLayout":Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;
    .end local v4    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :goto_1
    sput-wide v0, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->lastMoreGameClickTime:J

    goto :goto_0

    .line 311
    .restart local v3    # "moreGamesLayout":Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;
    .restart local v4    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    const/4 v5, 0x2

    :try_start_1
    const-string v6, "moregames"

    const-string v7, "Appear"

    const-string v8, "MoreGamesLayout"

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->logEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 313
    .end local v3    # "moreGamesLayout":Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;
    .end local v4    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :catch_0
    move-exception v2

    .line 314
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private startMoreGamesActivity()V
    .locals 3

    .prologue
    .line 292
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->activity:Landroid/app/Activity;

    const-class v2, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 293
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 294
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 61
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 142
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 63
    :pswitch_1
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->showFullScreen()V

    .line 64
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v2, :cond_0

    .line 65
    new-instance v1, Lcom/google/android/gms/monkey/InterstitialAd;

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/google/android/gms/monkey/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->interstitial:Lcom/google/android/gms/monkey/InterstitialAd;

    .line 66
    sget-object v1, Lcom/doodlemobile/gamecenter/Platform;->MY_AD_UNIT_ID:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 67
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Admob ID can\'t be null, init MY_AD_UNIT_ID first"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->interstitial:Lcom/google/android/gms/monkey/InterstitialAd;

    sget-object v2, Lcom/doodlemobile/gamecenter/Platform;->MY_AD_UNIT_ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/monkey/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 70
    new-instance v1, Lcom/google/android/gms/monkey/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/monkey/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/monkey/AdRequest$Builder;->build()Lcom/google/android/gms/monkey/AdRequest;

    move-result-object v0

    .line 71
    .local v0, "adRequest":Lcom/google/android/gms/monkey/AdRequest;
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->interstitial:Lcom/google/android/gms/monkey/InterstitialAd;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/monkey/InterstitialAd;->loadAd(Lcom/google/android/gms/monkey/AdRequest;)V

    .line 72
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->interstitial:Lcom/google/android/gms/monkey/InterstitialAd;

    new-instance v2, Lcom/doodlemobile/gamecenter/event/PlatformHandler$1;

    invoke-direct {v2, p0, v0}, Lcom/doodlemobile/gamecenter/event/PlatformHandler$1;-><init>(Lcom/doodlemobile/gamecenter/event/PlatformHandler;Lcom/google/android/gms/monkey/AdRequest;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/monkey/InterstitialAd;->setAdListener(Lcom/google/android/gms/monkey/AdListener;)V

    goto :goto_0

    .line 84
    .end local v0    # "adRequest":Lcom/google/android/gms/monkey/AdRequest;
    :pswitch_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v2, :cond_5

    .line 85
    sget v1, Lcom/doodlemobile/gamecenter/Platform;->ShowFullScreenTimes:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->interstitial:Lcom/google/android/gms/monkey/InterstitialAd;

    invoke-virtual {v1}, Lcom/google/android/gms/monkey/InterstitialAd;->isLoaded()Z

    move-result v1

    if-nez v1, :cond_4

    .line 86
    :cond_2
    sget v1, Lcom/doodlemobile/gamecenter/Platform;->ShowFullScreenTimes:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/doodlemobile/gamecenter/Platform;->ShowFullScreenTimes:I

    .line 87
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 88
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->showFullScreenSmall(Z)V

    goto :goto_0

    .line 90
    :cond_3
    invoke-direct {p0, v3}, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->showFullScreenSmall(Z)V

    goto :goto_0

    .line 91
    :cond_4
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->interstitial:Lcom/google/android/gms/monkey/InterstitialAd;

    invoke-virtual {v1}, Lcom/google/android/gms/monkey/InterstitialAd;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->interstitial:Lcom/google/android/gms/monkey/InterstitialAd;

    invoke-virtual {v1}, Lcom/google/android/gms/monkey/InterstitialAd;->show()V

    goto :goto_0

    .line 95
    :cond_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_6

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 96
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->showFullScreenSmall(Z)V

    goto/16 :goto_0

    .line 98
    :cond_6
    invoke-direct {p0, v3}, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->showFullScreenSmall(Z)V

    goto/16 :goto_0

    .line 102
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_7

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    .line 103
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->showFullScreenSmallExit(Z)V

    goto/16 :goto_0

    .line 105
    :cond_7
    invoke-direct {p0, v3}, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->showFullScreenSmallExit(Z)V

    goto/16 :goto_0

    .line 108
    :pswitch_4
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->closeFullScreen()V

    goto/16 :goto_0

    .line 111
    :pswitch_5
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->closeFullScreenSmall()V

    goto/16 :goto_0

    .line 114
    :pswitch_6
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->startMoreGamesActivity()V

    goto/16 :goto_0

    .line 117
    :pswitch_7
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->showMoreGamesLayout()V

    goto/16 :goto_0

    .line 120
    :pswitch_8
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->createFeatureView()V

    goto/16 :goto_0

    .line 123
    :pswitch_9
    const/4 v1, 0x1

    sput-boolean v1, Lcom/doodlemobile/gamecenter/Platform;->fvShouldShow:Z

    .line 124
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_8

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/graphics/Rect;

    if-nez v1, :cond_9

    .line 125
    :cond_8
    const-string v1, "DoodleMobile"

    const-string v2, "no param"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->showFeatureView()V

    goto/16 :goto_0

    .line 128
    :cond_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v1, v2, v3}, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->showFeatureView(Landroid/graphics/Rect;II)V

    goto/16 :goto_0

    .line 132
    :pswitch_a
    sput-boolean v3, Lcom/doodlemobile/gamecenter/Platform;->fvShouldShow:Z

    .line 133
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->closeFeatureView()V

    goto/16 :goto_0

    .line 136
    :pswitch_b
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->releaseFeatureView()V

    goto/16 :goto_0

    .line 139
    :pswitch_c
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->gotoRate()V

    goto/16 :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method
