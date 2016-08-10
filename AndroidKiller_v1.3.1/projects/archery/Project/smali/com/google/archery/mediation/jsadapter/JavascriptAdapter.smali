.class public final Lcom/google/archery/mediation/jsadapter/JavascriptAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/archery/mediation/MediationBannerAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/archery/mediation/MediationBannerAdapter",
        "<",
        "Lcom/google/archery/mediation/EmptyNetworkExtras;",
        "Lcom/google/archery/mediation/jsadapter/JavascriptServerParameters;",
        ">;"
    }
.end annotation


# instance fields
.field private C:Landroid/webkit/WebView;

.field private D:Landroid/widget/FrameLayout;

.field private E:Z

.field private k:Lcom/google/archery/mediation/MediationBannerListener;

.field private v:I

.field private w:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/archery/mediation/jsadapter/JavascriptAdapter;->E:Z

    return-void
.end method

.method public getAdditionalParametersType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/google/archery/mediation/EmptyNetworkExtras;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/google/archery/mediation/EmptyNetworkExtras;

    return-object v0
.end method

.method public getBannerView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/archery/mediation/jsadapter/JavascriptAdapter;->D:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getServerParametersType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/google/archery/mediation/jsadapter/JavascriptServerParameters;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/google/archery/mediation/jsadapter/JavascriptServerParameters;

    return-object v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/google/archery/mediation/jsadapter/JavascriptAdapter;->C:Landroid/webkit/WebView;

    return-object v0
.end method

.method public getWebViewHeight()I
    .locals 1

    iget v0, p0, Lcom/google/archery/mediation/jsadapter/JavascriptAdapter;->v:I

    return v0
.end method

.method public getWebViewWidth()I
    .locals 1

    iget v0, p0, Lcom/google/archery/mediation/jsadapter/JavascriptAdapter;->w:I

    return v0
.end method

.method public passbackReceived()V
    .locals 1

    const-string v0, "Passback received"

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->s(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/archery/mediation/jsadapter/JavascriptAdapter;->sendAdNotReceivedUpdate()V

    return-void
.end method

.method public bridge synthetic requestBannerAd(Lcom/google/archery/mediation/MediationBannerListener;Landroid/app/Activity;Lcom/google/archery/mediation/MediationServerParameters;Lcom/google/archery/AdSize;Lcom/google/archery/mediation/MediationAdRequest;Lcom/google/archery/mediation/NetworkExtras;)V
    .locals 7
    .param p1, "x0"    # Lcom/google/archery/mediation/MediationBannerListener;
    .param p2, "x1"    # Landroid/app/Activity;
    .param p3, "x2"    # Lcom/google/archery/mediation/MediationServerParameters;
    .param p4, "x3"    # Lcom/google/archery/AdSize;
    .param p5, "x4"    # Lcom/google/archery/mediation/MediationAdRequest;
    .param p6, "x5"    # Lcom/google/archery/mediation/NetworkExtras;

    .prologue
    move-object v3, p3

    check-cast v3, Lcom/google/archery/mediation/jsadapter/JavascriptServerParameters;

    move-object v6, p6

    check-cast v6, Lcom/google/archery/mediation/EmptyNetworkExtras;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/archery/mediation/jsadapter/JavascriptAdapter;->requestBannerAd(Lcom/google/archery/mediation/MediationBannerListener;Landroid/app/Activity;Lcom/google/archery/mediation/jsadapter/JavascriptServerParameters;Lcom/google/archery/AdSize;Lcom/google/archery/mediation/MediationAdRequest;Lcom/google/archery/mediation/EmptyNetworkExtras;)V

    return-void
.end method

.method public requestBannerAd(Lcom/google/archery/mediation/MediationBannerListener;Landroid/app/Activity;Lcom/google/archery/mediation/jsadapter/JavascriptServerParameters;Lcom/google/archery/AdSize;Lcom/google/archery/mediation/MediationAdRequest;Lcom/google/archery/mediation/EmptyNetworkExtras;)V
    .locals 6
    .param p1, "listener"    # Lcom/google/archery/mediation/MediationBannerListener;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "serverParameters"    # Lcom/google/archery/mediation/jsadapter/JavascriptServerParameters;
    .param p4, "adSize"    # Lcom/google/archery/AdSize;
    .param p5, "mediationAdRequest"    # Lcom/google/archery/mediation/MediationAdRequest;
    .param p6, "extras"    # Lcom/google/archery/mediation/EmptyNetworkExtras;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/google/archery/mediation/jsadapter/JavascriptAdapter;->k:Lcom/google/archery/mediation/MediationBannerListener;

    iget-object v0, p3, Lcom/google/archery/mediation/jsadapter/JavascriptServerParameters;->height:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/google/archery/mediation/jsadapter/JavascriptServerParameters;->height:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/google/archery/mediation/jsadapter/JavascriptAdapter;->v:I

    iget-object v0, p3, Lcom/google/archery/mediation/jsadapter/JavascriptServerParameters;->width:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p3, Lcom/google/archery/mediation/jsadapter/JavascriptServerParameters;->width:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/google/archery/mediation/jsadapter/JavascriptAdapter;->w:I

    iput-boolean v4, p0, Lcom/google/archery/mediation/jsadapter/JavascriptAdapter;->E:Z

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/archery/mediation/jsadapter/JavascriptAdapter;->C:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/google/archery/mediation/jsadapter/JavascriptAdapter;->C:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/google/archery/mediation/jsadapter/JavascriptAdapter;->C:Landroid/webkit/WebView;

    new-instance v2, Lcom/google/archery/mediation/jsadapter/BannerWebViewClient;

    iget-object v3, p3, Lcom/google/archery/mediation/jsadapter/JavascriptServerParameters;->passBackUrl:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/google/archery/mediation/jsadapter/BannerWebViewClient;-><init>(Lcom/google/archery/mediation/jsadapter/JavascriptAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/google/archery/mediation/jsadapter/JavascriptAdapter;->C:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/archery/mediation/jsadapter/JavascriptAdapter;->D:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/google/archery/mediation/jsadapter/JavascriptAdapter;->w:I

    iget v3, p0, Lcom/google/archery/mediation/jsadapter/JavascriptAdapter;->v:I

    const/16 v4, 0x11

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v2, p0, Lcom/google/archery/mediation/jsadapter/JavascriptAdapter;->D:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/archery/mediation/jsadapter/JavascriptAdapter;->C:Landroid/webkit/WebView;

    invoke-virtual {v2, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/archery/mediation/jsadapter/JavascriptAdapter;->C:Landroid/webkit/WebView;

    iget-object v2, p3, Lcom/google/archery/mediation/jsadapter/JavascriptServerParameters;->htmlScript:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p4, p2}, Lcom/google/archery/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p4, p2}, Lcom/google/archery/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result v0

    goto :goto_1
.end method

.method public sendAdNotReceivedUpdate()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/archery/mediation/jsadapter/JavascriptAdapter;->E:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/archery/mediation/jsadapter/JavascriptAdapter;->E:Z

    iget-object v0, p0, Lcom/google/archery/mediation/jsadapter/JavascriptAdapter;->k:Lcom/google/archery/mediation/MediationBannerListener;

    sget-object v1, Lcom/google/archery/AdRequest$ErrorCode;->NO_FILL:Lcom/google/archery/AdRequest$ErrorCode;

    invoke-interface {v0, p0, v1}, Lcom/google/archery/mediation/MediationBannerListener;->onFailedToReceiveAd(Lcom/google/archery/mediation/MediationBannerAdapter;Lcom/google/archery/AdRequest$ErrorCode;)V

    :cond_0
    return-void
.end method

.method public sendAdReceivedUpdate()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/archery/mediation/jsadapter/JavascriptAdapter;->E:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/archery/mediation/jsadapter/JavascriptAdapter;->E:Z

    iget-object v0, p0, Lcom/google/archery/mediation/jsadapter/JavascriptAdapter;->k:Lcom/google/archery/mediation/MediationBannerListener;

    invoke-interface {v0, p0}, Lcom/google/archery/mediation/MediationBannerListener;->onReceivedAd(Lcom/google/archery/mediation/MediationBannerAdapter;)V

    :cond_0
    return-void
.end method

.method public shouldStopAdCheck()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/archery/mediation/jsadapter/JavascriptAdapter;->E:Z

    return v0
.end method

.method public startCheckingForAd()V
    .locals 6

    new-instance v0, Lcom/google/archery/mediation/jsadapter/AdViewCheckTask;

    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0x64

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/archery/mediation/jsadapter/AdViewCheckTask;-><init>(Lcom/google/archery/mediation/jsadapter/JavascriptAdapter;JJ)V

    invoke-virtual {v0}, Lcom/google/archery/mediation/jsadapter/AdViewCheckTask;->start()V

    return-void
.end method
