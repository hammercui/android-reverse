.class public Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;
.super Landroid/app/Activity;
.source "MoreGamesActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$DoodleJS;,
        Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$MyWebViewClient;
    }
.end annotation


# static fields
.field private static final CACHE_HOURS:J = 0x18L

.field private static mWebView:Landroid/webkit/WebView;


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mWebView:Landroid/webkit/WebView;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private initMoreGames()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 51
    :try_start_0
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->getIsFirstInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    invoke-static {p0}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->onCreate(Landroid/app/Activity;)V

    .line 55
    :cond_0
    sget v2, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->gAppType:I

    if-ne v2, v7, :cond_3

    .line 56
    const/4 v2, 0x2

    const-string v3, "moreapps"

    const-string v4, "Appear"

    const-string v5, "MoreGamesActivity"

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->logEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 61
    :goto_0
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mWebView:Landroid/webkit/WebView;

    .line 63
    sget-object v2, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v2, :cond_2

    .line 64
    sget-object v2, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v2}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->setContentView(Landroid/view/View;)V

    .line 66
    sget-object v2, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->requestFocus()Z

    .line 67
    sget-object v2, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$DoodleJS;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$DoodleJS;-><init>(Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$DoodleJS;)V

    const-string v4, "doodle"

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    sget-object v2, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$MyWebViewClient;

    invoke-direct {v3, p0}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$MyWebViewClient;-><init>(Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 69
    sget-object v2, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$1;

    invoke-direct {v3, p0}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$1;-><init>(Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 84
    sget-object v2, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$2;

    invoke-direct {v3, p0}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$2;-><init>(Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 95
    sget-object v2, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 96
    .local v1, "webSettings":Landroid/webkit/WebSettings;
    if-eqz v1, :cond_1

    .line 97
    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 98
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 99
    invoke-direct {p0, v1}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->setWebSettingsCache(Landroid/webkit/WebSettings;)V

    .line 102
    :cond_1
    sget v2, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->gAppType:I

    if-ne v2, v7, :cond_4

    .line 103
    sget-object v2, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mWebView:Landroid/webkit/WebView;

    const-string v3, "http://featured.perfectionholic.com:8080/moregames/index_app.html"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 111
    .end local v1    # "webSettings":Landroid/webkit/WebSettings;
    :cond_2
    :goto_1
    return-void

    .line 58
    :cond_3
    const/4 v2, 0x2

    const-string v3, "moregames"

    const-string v4, "Appear"

    const-string v5, "MoreGamesActivity"

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->logEvent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 105
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "webSettings":Landroid/webkit/WebSettings;
    :cond_4
    :try_start_1
    sget-object v2, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mWebView:Landroid/webkit/WebView;

    const-string v3, "http://myworldzoo.apps.cn/"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private setWebSettingsCache(Landroid/webkit/WebSettings;)V
    .locals 12
    .param p1, "webSettings"    # Landroid/webkit/WebSettings;

    .prologue
    .line 146
    :try_start_0
    invoke-static {}, Lcom/doodlemobile/gamecenter/cache/DGlobalPrefences;->isFirstOpen()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 147
    new-instance v8, Lcom/doodlemobile/gamecenter/cache/DGlobalPrefences;

    invoke-direct {v8, p0}, Lcom/doodlemobile/gamecenter/cache/DGlobalPrefences;-><init>(Landroid/content/Context;)V

    .line 150
    :cond_0
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 151
    .local v7, "nowDate":Ljava/util/Date;
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 152
    .local v3, "lNowDate":J
    invoke-static {}, Lcom/doodlemobile/gamecenter/cache/DGlobalPrefences;->getMoreGamesCacheTime()J

    move-result-wide v5

    .line 153
    .local v5, "lPreferDate":J
    sub-long v8, v3, v5

    const-wide/32 v10, 0x36ee80

    div-long v1, v8, v10

    .line 155
    .local v1, "lDays":J
    iget-object v8, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mActivity:Landroid/app/Activity;

    invoke-static {v8}, Lcom/doodlemobile/gamecenter/net/DNetworkStatus;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-wide/16 v8, 0x18

    cmp-long v8, v1, v8

    if-ltz v8, :cond_1

    .line 156
    sget-object v8, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 157
    sget-object v8, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->clearHistory()V

    .line 158
    invoke-static {v3, v4}, Lcom/doodlemobile/gamecenter/cache/DGlobalPrefences;->setMoreGamesCacheTime(J)V

    .line 165
    .end local v1    # "lDays":J
    .end local v3    # "lNowDate":J
    .end local v5    # "lPreferDate":J
    .end local v7    # "nowDate":Ljava/util/Date;
    :goto_0
    return-void

    .line 160
    .restart local v1    # "lDays":J
    .restart local v3    # "lNowDate":J
    .restart local v5    # "lPreferDate":J
    .restart local v7    # "nowDate":Ljava/util/Date;
    :cond_1
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Landroid/webkit/WebSettings;->setCacheMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    .end local v1    # "lDays":J
    .end local v3    # "lNowDate":J
    .end local v5    # "lPreferDate":J
    .end local v7    # "nowDate":Ljava/util/Date;
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x2

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 42
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 44
    iput-object p0, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mActivity:Landroid/app/Activity;

    .line 46
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->initMoreGames()V

    .line 47
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 201
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 202
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->getIsFirstInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    invoke-static {p0}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->onStop(Landroid/app/Activity;)V

    .line 205
    :cond_0
    return-void
.end method
