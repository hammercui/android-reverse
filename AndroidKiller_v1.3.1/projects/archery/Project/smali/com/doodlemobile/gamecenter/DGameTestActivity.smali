.class public Lcom/doodlemobile/gamecenter/DGameTestActivity;
.super Landroid/app/Activity;
.source "DGameTestActivity.java"


# static fields
.field static final MSG_MOREGAMES:I = 0x1

.field private static mActivity:Landroid/app/Activity;


# instance fields
.field public mainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 127
    new-instance v0, Lcom/doodlemobile/gamecenter/DGameTestActivity$1;

    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/DGameTestActivity$1;-><init>(Lcom/doodlemobile/gamecenter/DGameTestActivity;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/DGameTestActivity;->mainHandler:Landroid/os/Handler;

    .line 25
    return-void
.end method

.method static synthetic access$0()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/doodlemobile/gamecenter/DGameTestActivity;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private showExitDialog()V
    .locals 6

    .prologue
    .line 140
    const/4 v1, 0x0

    .line 142
    .local v1, "featureView":Landroid/view/View;
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/doodlemobile/gamecenter/DGameTestActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 143
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030008

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 145
    new-instance v3, Landroid/app/AlertDialog$Builder;

    sget-object v4, Lcom/doodlemobile/gamecenter/DGameTestActivity;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 146
    const-string v4, "Are you sure exit?"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 147
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 148
    const-string v4, "Yes"

    new-instance v5, Lcom/doodlemobile/gamecenter/DGameTestActivity$10;

    invoke-direct {v5, p0}, Lcom/doodlemobile/gamecenter/DGameTestActivity$10;-><init>(Lcom/doodlemobile/gamecenter/DGameTestActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 154
    const-string v4, "No"

    new-instance v5, Lcom/doodlemobile/gamecenter/DGameTestActivity$11;

    invoke-direct {v5, p0}, Lcom/doodlemobile/gamecenter/DGameTestActivity$11;-><init>(Lcom/doodlemobile/gamecenter/DGameTestActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 161
    .local v0, "dialg":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 162
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const-string v0, "a15380843ce45b9"

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/Platform;->setFull_Admob_ID(Ljava/lang/String;)V

    .line 37
    const-string v0, "UA-60839069-1"

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/Platform;->setGoogleAnalyticsID(Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/doodlemobile/gamecenter/Platform;->onCreate(Landroid/app/Activity;Z)V

    .line 40
    new-instance v0, Lcom/doodlemobile/gamecenter/DGameTestActivity$2;

    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/DGameTestActivity$2;-><init>(Lcom/doodlemobile/gamecenter/DGameTestActivity;)V

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/Platform;->setFullScreenTaskBeginListener(Lcom/doodlemobile/gamecenter/fullscreen/Resources$FullScreenTaskBeginListener;)V

    .line 49
    new-instance v0, Lcom/doodlemobile/gamecenter/DGameTestActivity$3;

    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/DGameTestActivity$3;-><init>(Lcom/doodlemobile/gamecenter/DGameTestActivity;)V

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/Platform;->setGetServerTimeListener(Lcom/doodlemobile/gamecenter/fullscreen/Resources$GetServerTimeListener;)V

    .line 63
    new-instance v0, Lcom/doodlemobile/gamecenter/DGameTestActivity$4;

    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/DGameTestActivity$4;-><init>(Lcom/doodlemobile/gamecenter/DGameTestActivity;)V

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/Platform;->setGetFullScreenResultListener(Lcom/doodlemobile/gamecenter/fullscreen/Resources$GetFullScreenResultListener;)V

    .line 72
    new-instance v0, Lcom/doodlemobile/gamecenter/DGameTestActivity$5;

    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/DGameTestActivity$5;-><init>(Lcom/doodlemobile/gamecenter/DGameTestActivity;)V

    invoke-static {v0}, Lcom/doodlemobile/gamecenter/Platform;->setFullScreenCloseListener(Lcom/doodlemobile/gamecenter/fullscreen/Resources$FullScreenCloseListener;)V

    .line 81
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/DGameTestActivity;->setContentView(I)V

    .line 82
    sput-object p0, Lcom/doodlemobile/gamecenter/DGameTestActivity;->mActivity:Landroid/app/Activity;

    .line 84
    invoke-static {}, Lcom/doodlemobile/gamecenter/Platform;->getServerTime()V

    .line 87
    const v0, 0x7f05001a

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/DGameTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/doodlemobile/gamecenter/DGameTestActivity$6;

    invoke-direct {v1, p0}, Lcom/doodlemobile/gamecenter/DGameTestActivity$6;-><init>(Lcom/doodlemobile/gamecenter/DGameTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v0, 0x7f05001c

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/DGameTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/doodlemobile/gamecenter/DGameTestActivity$7;

    invoke-direct {v1, p0}, Lcom/doodlemobile/gamecenter/DGameTestActivity$7;-><init>(Lcom/doodlemobile/gamecenter/DGameTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const v0, 0x7f05001b

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/DGameTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/doodlemobile/gamecenter/DGameTestActivity$8;

    invoke-direct {v1, p0}, Lcom/doodlemobile/gamecenter/DGameTestActivity$8;-><init>(Lcom/doodlemobile/gamecenter/DGameTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const v0, 0x7f05001d

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/DGameTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/doodlemobile/gamecenter/DGameTestActivity$9;

    invoke-direct {v1, p0}, Lcom/doodlemobile/gamecenter/DGameTestActivity$9;-><init>(Lcom/doodlemobile/gamecenter/DGameTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 191
    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreen:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreen:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreen:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;

    invoke-virtual {v0, p1, p2}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 201
    :goto_0
    return v0

    .line 193
    :cond_0
    invoke-static {}, Lcom/doodlemobile/gamecenter/Platform;->isFullScreenSmallShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreen_small:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;

    invoke-virtual {v0, p1, p2}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 196
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 197
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/DGameTestActivity;->showExitDialog()V

    .line 198
    const/4 v0, 0x1

    goto :goto_0

    .line 201
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 180
    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreen:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreen:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreen:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;

    invoke-virtual {v0, p1, p2}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 185
    :goto_0
    return v0

    .line 182
    :cond_0
    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreen_small:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreen_small:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreen_small:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;

    invoke-virtual {v0, p1, p2}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 185
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 167
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 168
    invoke-static {}, Lcom/doodlemobile/gamecenter/Platform;->onStart()V

    .line 169
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 173
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 174
    invoke-static {}, Lcom/doodlemobile/gamecenter/Platform;->onStop()V

    .line 175
    return-void
.end method
