.class public Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;
.super Landroid/widget/RelativeLayout;
.source "FullScreenLayout.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private closeRect:Landroid/graphics/Rect;

.field private downloadRect:Landroid/graphics/Rect;

.field private game:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;

.field private hasClicked:Z

.field private image:Landroid/graphics/Bitmap;

.field private metrics:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "game"    # Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;
    .param p3, "image"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->image:Landroid/graphics/Bitmap;

    .line 33
    iput-boolean v4, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->hasClicked:Z

    .line 37
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->activity:Landroid/app/Activity;

    .line 38
    iput-object p2, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->game:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;

    .line 39
    iput-object p3, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->image:Landroid/graphics/Bitmap;

    .line 40
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->metrics:Landroid/util/DisplayMetrics;

    .line 41
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->metrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 44
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->isLanscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v1, v1, 0x9

    div-int/lit8 v1, v1, 0xa

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->metrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v3, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->metrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v3, v3, 0x5

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->closeRect:Landroid/graphics/Rect;

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x6

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->metrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    iget-object v3, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->metrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->metrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->downloadRect:Landroid/graphics/Rect;

    .line 52
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->setFocusableInTouchMode(Z)V

    .line 53
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->requestFocus()Z

    .line 54
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->setVisibility(I)V

    .line 55
    return-void

    .line 48
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x5

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->metrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v3, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->metrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v3, v3, 0xa

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->closeRect:Landroid/graphics/Rect;

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x5

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->metrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->metrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->downloadRect:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;)Landroid/util/DisplayMetrics;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->metrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic access$1(Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2(Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;)Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->game:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;

    return-object v0
.end method

.method private inRect(Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 147
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 148
    const/4 v0, 0x1

    .line 150
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLanscape()Z
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->metrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->metrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isShowing()Z
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 136
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 137
    const/4 v0, 0x1

    .line 138
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 125
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 126
    invoke-static {}, Lcom/doodlemobile/gamecenter/Platform;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/doodlemobile/gamecenter/Platform;->getHandler(Landroid/app/Activity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 131
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eq v4, v9, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v9

    .line 96
    :cond_1
    iget-object v4, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->closeRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v4}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->inRect(Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 97
    invoke-static {}, Lcom/doodlemobile/gamecenter/Platform;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 98
    iget-object v4, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->activity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/doodlemobile/gamecenter/Platform;->getHandler(Landroid/app/Activity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 101
    :cond_2
    iget-object v4, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->downloadRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, v4}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->inRect(Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 102
    iput-boolean v9, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->hasClicked:Z

    .line 103
    iget-object v4, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->activity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/cache/PreferencesCache;

    move-result-object v0

    .line 104
    .local v0, "cache":Lcom/doodlemobile/gamecenter/cache/PreferencesCache;
    const-string v4, "hasclicked"

    iget-boolean v5, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->hasClicked:Z

    invoke-virtual {v0, v4, v5}, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->putBoolean(Ljava/lang/String;Z)V

    .line 106
    :try_start_0
    iget-object v4, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->game:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;

    invoke-virtual {v4}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;->getMarketURI()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 107
    .local v3, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 108
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 109
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_1
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->game:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;

    iget-object v5, v5, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;->packageName:Ljava/lang/String;

    const-string v6, "Clicks"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "FullScreen_"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->game:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;

    iget-object v8, v8, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7, v10}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->logEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 115
    iget-object v4, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->activity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/doodlemobile/gamecenter/Platform;->getHandler(Landroid/app/Activity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->activity:Landroid/app/Activity;

    const-string v5, "Open Android Market Failed ... "

    invoke-static {v4, v5, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 112
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public prepare()Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 58
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 59
    .local v1, "imgView":Landroid/widget/ImageView;
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->image:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    invoke-virtual {p0, v1}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->addView(Landroid/view/View;)V

    .line 63
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 64
    .local v0, "alphaAnim":Landroid/view/animation/AlphaAnimation;
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 65
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 66
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 68
    return-object p0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout$1;

    invoke-direct {v1, p0}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout$1;-><init>(Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
