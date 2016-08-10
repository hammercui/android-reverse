.class public final Lcom/google/archery/mediation/customevent/CustomEventAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/archery/mediation/MediationBannerAdapter;
.implements Lcom/google/archery/mediation/MediationInterstitialAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/archery/mediation/customevent/CustomEventAdapter$b;,
        Lcom/google/archery/mediation/customevent/CustomEventAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/archery/mediation/MediationBannerAdapter",
        "<",
        "Lcom/google/android/gms/monkey/mediation/customevent/CustomEventExtras;",
        "Lcom/google/archery/mediation/customevent/CustomEventServerParameters;",
        ">;",
        "Lcom/google/archery/mediation/MediationInterstitialAdapter",
        "<",
        "Lcom/google/android/gms/monkey/mediation/customevent/CustomEventExtras;",
        "Lcom/google/archery/mediation/customevent/CustomEventServerParameters;",
        ">;"
    }
.end annotation


# instance fields
.field private m:Landroid/view/View;

.field private n:Lcom/google/archery/mediation/customevent/CustomEventBanner;

.field private o:Lcom/google/archery/mediation/customevent/CustomEventInterstitial;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not instantiate custom event adapter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/google/archery/mediation/customevent/CustomEventAdapter;->m:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lcom/google/archery/mediation/customevent/CustomEventAdapter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/archery/mediation/customevent/CustomEventAdapter;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/google/archery/mediation/customevent/CustomEventAdapter;->n:Lcom/google/archery/mediation/customevent/CustomEventBanner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/archery/mediation/customevent/CustomEventAdapter;->n:Lcom/google/archery/mediation/customevent/CustomEventBanner;

    invoke-interface {v0}, Lcom/google/archery/mediation/customevent/CustomEventBanner;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/google/archery/mediation/customevent/CustomEventAdapter;->o:Lcom/google/archery/mediation/customevent/CustomEventInterstitial;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/archery/mediation/customevent/CustomEventAdapter;->o:Lcom/google/archery/mediation/customevent/CustomEventInterstitial;

    invoke-interface {v0}, Lcom/google/archery/mediation/customevent/CustomEventInterstitial;->destroy()V

    :cond_1
    return-void
.end method

.method public getAdditionalParametersType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/google/android/gms/monkey/mediation/customevent/CustomEventExtras;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/monkey/mediation/customevent/CustomEventExtras;

    return-object v0
.end method

.method public getBannerView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/archery/mediation/customevent/CustomEventAdapter;->m:Landroid/view/View;

    return-object v0
.end method

.method public getServerParametersType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/google/archery/mediation/customevent/CustomEventServerParameters;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/google/archery/mediation/customevent/CustomEventServerParameters;

    return-object v0
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

    check-cast v3, Lcom/google/archery/mediation/customevent/CustomEventServerParameters;

    move-object v6, p6

    check-cast v6, Lcom/google/android/gms/monkey/mediation/customevent/CustomEventExtras;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/archery/mediation/customevent/CustomEventAdapter;->requestBannerAd(Lcom/google/archery/mediation/MediationBannerListener;Landroid/app/Activity;Lcom/google/archery/mediation/customevent/CustomEventServerParameters;Lcom/google/archery/AdSize;Lcom/google/archery/mediation/MediationAdRequest;Lcom/google/android/gms/monkey/mediation/customevent/CustomEventExtras;)V

    return-void
.end method

.method public requestBannerAd(Lcom/google/archery/mediation/MediationBannerListener;Landroid/app/Activity;Lcom/google/archery/mediation/customevent/CustomEventServerParameters;Lcom/google/archery/AdSize;Lcom/google/archery/mediation/MediationAdRequest;Lcom/google/android/gms/monkey/mediation/customevent/CustomEventExtras;)V
    .locals 8
    .param p1, "listener"    # Lcom/google/archery/mediation/MediationBannerListener;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "serverParameters"    # Lcom/google/archery/mediation/customevent/CustomEventServerParameters;
    .param p4, "adSize"    # Lcom/google/archery/AdSize;
    .param p5, "mediationAdRequest"    # Lcom/google/archery/mediation/MediationAdRequest;
    .param p6, "customEventExtras"    # Lcom/google/android/gms/monkey/mediation/customevent/CustomEventExtras;

    .prologue
    iget-object v0, p3, Lcom/google/archery/mediation/customevent/CustomEventServerParameters;->className:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/archery/mediation/customevent/CustomEventAdapter;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/archery/mediation/customevent/CustomEventBanner;

    iput-object v0, p0, Lcom/google/archery/mediation/customevent/CustomEventAdapter;->n:Lcom/google/archery/mediation/customevent/CustomEventBanner;

    iget-object v0, p0, Lcom/google/archery/mediation/customevent/CustomEventAdapter;->n:Lcom/google/archery/mediation/customevent/CustomEventBanner;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/archery/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/archery/AdRequest$ErrorCode;

    invoke-interface {p1, p0, v0}, Lcom/google/archery/mediation/MediationBannerListener;->onFailedToReceiveAd(Lcom/google/archery/mediation/MediationBannerAdapter;Lcom/google/archery/AdRequest$ErrorCode;)V

    :goto_0
    return-void

    :cond_0
    if-nez p6, :cond_1

    const/4 v7, 0x0

    :goto_1
    iget-object v0, p0, Lcom/google/archery/mediation/customevent/CustomEventAdapter;->n:Lcom/google/archery/mediation/customevent/CustomEventBanner;

    new-instance v1, Lcom/google/archery/mediation/customevent/CustomEventAdapter$a;

    invoke-direct {v1, p0, p1}, Lcom/google/archery/mediation/customevent/CustomEventAdapter$a;-><init>(Lcom/google/archery/mediation/customevent/CustomEventAdapter;Lcom/google/archery/mediation/MediationBannerListener;)V

    iget-object v3, p3, Lcom/google/archery/mediation/customevent/CustomEventServerParameters;->label:Ljava/lang/String;

    iget-object v4, p3, Lcom/google/archery/mediation/customevent/CustomEventServerParameters;->parameter:Ljava/lang/String;

    move-object v2, p2

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v7}, Lcom/google/archery/mediation/customevent/CustomEventBanner;->requestBannerAd(Lcom/google/archery/mediation/customevent/CustomEventBannerListener;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/google/archery/AdSize;Lcom/google/archery/mediation/MediationAdRequest;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p3, Lcom/google/archery/mediation/customevent/CustomEventServerParameters;->label:Ljava/lang/String;

    invoke-virtual {p6, v0}, Lcom/google/android/gms/monkey/mediation/customevent/CustomEventExtras;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_1
.end method

.method public bridge synthetic requestInterstitialAd(Lcom/google/archery/mediation/MediationInterstitialListener;Landroid/app/Activity;Lcom/google/archery/mediation/MediationServerParameters;Lcom/google/archery/mediation/MediationAdRequest;Lcom/google/archery/mediation/NetworkExtras;)V
    .locals 6
    .param p1, "x0"    # Lcom/google/archery/mediation/MediationInterstitialListener;
    .param p2, "x1"    # Landroid/app/Activity;
    .param p3, "x2"    # Lcom/google/archery/mediation/MediationServerParameters;
    .param p4, "x3"    # Lcom/google/archery/mediation/MediationAdRequest;
    .param p5, "x4"    # Lcom/google/archery/mediation/NetworkExtras;

    .prologue
    move-object v3, p3

    check-cast v3, Lcom/google/archery/mediation/customevent/CustomEventServerParameters;

    move-object v5, p5

    check-cast v5, Lcom/google/android/gms/monkey/mediation/customevent/CustomEventExtras;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/archery/mediation/customevent/CustomEventAdapter;->requestInterstitialAd(Lcom/google/archery/mediation/MediationInterstitialListener;Landroid/app/Activity;Lcom/google/archery/mediation/customevent/CustomEventServerParameters;Lcom/google/archery/mediation/MediationAdRequest;Lcom/google/android/gms/monkey/mediation/customevent/CustomEventExtras;)V

    return-void
.end method

.method public requestInterstitialAd(Lcom/google/archery/mediation/MediationInterstitialListener;Landroid/app/Activity;Lcom/google/archery/mediation/customevent/CustomEventServerParameters;Lcom/google/archery/mediation/MediationAdRequest;Lcom/google/android/gms/monkey/mediation/customevent/CustomEventExtras;)V
    .locals 7
    .param p1, "listener"    # Lcom/google/archery/mediation/MediationInterstitialListener;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "serverParameters"    # Lcom/google/archery/mediation/customevent/CustomEventServerParameters;
    .param p4, "mediationAdRequest"    # Lcom/google/archery/mediation/MediationAdRequest;
    .param p5, "customEventExtras"    # Lcom/google/android/gms/monkey/mediation/customevent/CustomEventExtras;

    .prologue
    iget-object v0, p3, Lcom/google/archery/mediation/customevent/CustomEventServerParameters;->className:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/archery/mediation/customevent/CustomEventAdapter;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/archery/mediation/customevent/CustomEventInterstitial;

    iput-object v0, p0, Lcom/google/archery/mediation/customevent/CustomEventAdapter;->o:Lcom/google/archery/mediation/customevent/CustomEventInterstitial;

    iget-object v0, p0, Lcom/google/archery/mediation/customevent/CustomEventAdapter;->o:Lcom/google/archery/mediation/customevent/CustomEventInterstitial;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/archery/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/archery/AdRequest$ErrorCode;

    invoke-interface {p1, p0, v0}, Lcom/google/archery/mediation/MediationInterstitialListener;->onFailedToReceiveAd(Lcom/google/archery/mediation/MediationInterstitialAdapter;Lcom/google/archery/AdRequest$ErrorCode;)V

    :goto_0
    return-void

    :cond_0
    if-nez p5, :cond_1

    const/4 v6, 0x0

    :goto_1
    iget-object v0, p0, Lcom/google/archery/mediation/customevent/CustomEventAdapter;->o:Lcom/google/archery/mediation/customevent/CustomEventInterstitial;

    new-instance v1, Lcom/google/archery/mediation/customevent/CustomEventAdapter$b;

    invoke-direct {v1, p0, p0, p1}, Lcom/google/archery/mediation/customevent/CustomEventAdapter$b;-><init>(Lcom/google/archery/mediation/customevent/CustomEventAdapter;Lcom/google/archery/mediation/customevent/CustomEventAdapter;Lcom/google/archery/mediation/MediationInterstitialListener;)V

    iget-object v3, p3, Lcom/google/archery/mediation/customevent/CustomEventServerParameters;->label:Ljava/lang/String;

    iget-object v4, p3, Lcom/google/archery/mediation/customevent/CustomEventServerParameters;->parameter:Ljava/lang/String;

    move-object v2, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/google/archery/mediation/customevent/CustomEventInterstitial;->requestInterstitialAd(Lcom/google/archery/mediation/customevent/CustomEventInterstitialListener;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/google/archery/mediation/MediationAdRequest;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p3, Lcom/google/archery/mediation/customevent/CustomEventServerParameters;->label:Ljava/lang/String;

    invoke-virtual {p5, v0}, Lcom/google/android/gms/monkey/mediation/customevent/CustomEventExtras;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1
.end method

.method public showInterstitial()V
    .locals 1

    iget-object v0, p0, Lcom/google/archery/mediation/customevent/CustomEventAdapter;->o:Lcom/google/archery/mediation/customevent/CustomEventInterstitial;

    invoke-interface {v0}, Lcom/google/archery/mediation/customevent/CustomEventInterstitial;->showInterstitial()V

    return-void
.end method
