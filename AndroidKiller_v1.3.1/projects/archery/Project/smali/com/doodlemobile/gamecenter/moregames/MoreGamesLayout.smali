.class public Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;
.super Landroid/widget/RelativeLayout;
.source "MoreGamesLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout$MyWebViewClient;
    }
.end annotation


# static fields
.field private static final CACHE_HOURS:I = 0x18

.field private static final TAG:Ljava/lang/String; = "MoreGamesLayout"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object v0, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->mWebView:Landroid/webkit/WebView;

    .line 33
    iput-object v0, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 39
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->mActivity:Landroid/app/Activity;

    .line 41
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->initMoreGames()V

    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->setFocusableInTouchMode(Z)V

    .line 44
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->requestFocus()Z

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method private initMoreGames()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 58
    iget-object v7, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->mActivity:Landroid/app/Activity;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 59
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget-object v7, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 62
    .local v5, "pkgName":Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "dm_moregames_layout"

    const-string v9, "layout"

    invoke-virtual {v7, v8, v9, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 63
    .local v2, "layoutId":I
    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 64
    .local v3, "moregamesLayout":Landroid/widget/RelativeLayout;
    iget-object v7, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "dm_moregames_webview"

    const-string v9, "id"

    invoke-virtual {v7, v8, v9, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/webkit/WebView;

    iput-object v7, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->mWebView:Landroid/webkit/WebView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v2    # "layoutId":I
    .end local v3    # "moregamesLayout":Landroid/widget/RelativeLayout;
    :goto_0
    iget-object v7, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->mWebView:Landroid/webkit/WebView;

    if-eqz v7, :cond_2

    .line 70
    iget-object v7, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->requestFocus()Z

    .line 71
    iget-object v7, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->mWebView:Landroid/webkit/WebView;

    const/high16 v8, 0x2000000

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 72
    iget-object v7, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v6

    .line 73
    .local v6, "webSettings":Landroid/webkit/WebSettings;
    if-eqz v6, :cond_0

    .line 74
    const-string v7, "utf-8"

    invoke-virtual {v6, v7}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v6, v10}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 76
    invoke-direct {p0, v6}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->setWebSettingsCache(Landroid/webkit/WebSettings;)V

    .line 79
    :cond_0
    new-instance v4, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout$MyWebViewClient;

    invoke-direct {v4, p0}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout$MyWebViewClient;-><init>(Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;)V

    .line 80
    .local v4, "myWebViewClient":Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout$MyWebViewClient;
    iget-object v7, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v7, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 83
    new-instance v7, Landroid/app/ProgressDialog;

    iget-object v8, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->mActivity:Landroid/app/Activity;

    invoke-direct {v7, v8}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 84
    iget-object v7, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v7, :cond_1

    .line 85
    iget-object v7, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 86
    iget-object v7, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v8, "Loading..."

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v7, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->mProgressDialog:Landroid/app/ProgressDialog;

    const/16 v8, 0x64

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 88
    iget-object v7, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7, v10}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 89
    iget-object v7, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->show()V

    .line 91
    iget-object v7, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->mWebView:Landroid/webkit/WebView;

    new-instance v8, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout$1;

    invoke-direct {v8, p0}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout$1;-><init>(Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;)V

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 103
    :cond_1
    iget-object v7, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->mWebView:Landroid/webkit/WebView;

    new-instance v8, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout$2;

    invoke-direct {v8, p0}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout$2;-><init>(Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;)V

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 115
    iget-object v7, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->mWebView:Landroid/webkit/WebView;

    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->jsInsertObj()Ljava/lang/Object;

    move-result-object v8

    const-string v9, "doodle"

    invoke-virtual {v7, v8, v9}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    sget v7, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->gAppType:I

    if-ne v7, v10, :cond_3

    .line 117
    iget-object v7, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->mWebView:Landroid/webkit/WebView;

    const-string v8, "http://featured.perfectionholic.com:8080/moregames/index_app.html"

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 122
    .end local v4    # "myWebViewClient":Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout$MyWebViewClient;
    .end local v6    # "webSettings":Landroid/webkit/WebSettings;
    :cond_2
    :goto_1
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 119
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "myWebViewClient":Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout$MyWebViewClient;
    .restart local v6    # "webSettings":Landroid/webkit/WebSettings;
    :cond_3
    iget-object v7, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->mWebView:Landroid/webkit/WebView;

    const-string v8, "http://myworldzoo.apps.cn/"

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private jsInsertObj()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout$3;

    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout$3;-><init>(Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;)V

    .line 140
    .local v0, "insertJSObj":Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout$3;
    return-object v0
.end method

.method private setWebSettingsCache(Landroid/webkit/WebSettings;)V
    .locals 12
    .param p1, "webSettings"    # Landroid/webkit/WebSettings;

    .prologue
    .line 144
    invoke-static {}, Lcom/doodlemobile/gamecenter/cache/DGlobalPrefences;->isFirstOpen()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 146
    :try_start_0
    new-instance v8, Lcom/doodlemobile/gamecenter/cache/DGlobalPrefences;

    iget-object v9, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->mActivity:Landroid/app/Activity;

    invoke-direct {v8, v9}, Lcom/doodlemobile/gamecenter/cache/DGlobalPrefences;-><init>(Landroid/content/Context;)V

    .line 147
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/doodlemobile/gamecenter/cache/DGlobalPrefences;->setIsFirstOpen(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :cond_0
    :goto_0
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 155
    .local v7, "nowDate":Ljava/util/Date;
    const-wide v1, 0x7fffffffffffffffL

    .line 157
    .local v1, "lDays":J
    :try_start_1
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 158
    .local v3, "lNowDate":J
    invoke-static {}, Lcom/doodlemobile/gamecenter/cache/DGlobalPrefences;->getMoreGamesCacheTime()J

    move-result-wide v5

    .line 159
    .local v5, "lPreferDate":J
    sub-long v8, v3, v5

    const-wide/32 v10, 0x36ee80

    div-long v1, v8, v10

    .line 161
    iget-object v8, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->mActivity:Landroid/app/Activity;

    invoke-static {v8}, Lcom/doodlemobile/gamecenter/net/DNetworkStatus;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-wide/16 v8, 0x18

    cmp-long v8, v1, v8

    if-ltz v8, :cond_1

    .line 162
    iget-object v8, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->mWebView:Landroid/webkit/WebView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 163
    iget-object v8, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/webkit/WebView;->clearHistory()V

    .line 164
    invoke-static {v3, v4}, Lcom/doodlemobile/gamecenter/cache/DGlobalPrefences;->setMoreGamesCacheTime(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 171
    .end local v3    # "lNowDate":J
    .end local v5    # "lPreferDate":J
    :goto_1
    return-void

    .line 148
    .end local v1    # "lDays":J
    .end local v7    # "nowDate":Ljava/util/Date;
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 150
    const/4 v8, -0x1

    invoke-virtual {p1, v8}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto :goto_0

    .line 166
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "lDays":J
    .restart local v3    # "lNowDate":J
    .restart local v5    # "lPreferDate":J
    .restart local v7    # "nowDate":Ljava/util/Date;
    :cond_1
    const/4 v8, 0x1

    :try_start_2
    invoke-virtual {p1, v8}, Landroid/webkit/WebSettings;->setCacheMode(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 168
    .end local v3    # "lNowDate":J
    .end local v5    # "lPreferDate":J
    :catch_1
    move-exception v0

    .line 169
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v8, "MoreGamesLayout"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "setWebSettingsCache() error, "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 49
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 50
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->setVisibility(I)V

    .line 51
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewManager;

    invoke-interface {v0, p0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 52
    const/4 v0, 0x1

    .line 54
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
