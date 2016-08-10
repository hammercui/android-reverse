.class public final Lcom/google/archery/mediation/admob/AdMobAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/archery/mediation/MediationBannerAdapter;
.implements Lcom/google/archery/mediation/MediationInterstitialAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/archery/mediation/admob/AdMobAdapter$b;,
        Lcom/google/archery/mediation/admob/AdMobAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/archery/mediation/MediationBannerAdapter",
        "<",
        "Lcom/google/android/gms/monkey/mediation/admob/AdMobExtras;",
        "Lcom/google/archery/mediation/admob/AdMobServerParameters;",
        ">;",
        "Lcom/google/archery/mediation/MediationInterstitialAdapter",
        "<",
        "Lcom/google/android/gms/monkey/mediation/admob/AdMobExtras;",
        "Lcom/google/archery/mediation/admob/AdMobServerParameters;",
        ">;"
    }
.end annotation


# instance fields
.field private h:Lcom/google/android/gms/monkey/AdView;

.field private i:Lcom/google/android/gms/monkey/InterstitialAd;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/google/archery/mediation/MediationAdRequest;Lcom/google/android/gms/monkey/mediation/admob/AdMobExtras;Lcom/google/archery/mediation/admob/AdMobServerParameters;)Lcom/google/android/gms/monkey/AdRequest;
    .locals 5

    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/gms/monkey/AdRequest$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/monkey/AdRequest$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/google/archery/mediation/MediationAdRequest;->getBirthday()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/monkey/AdRequest$Builder;->setBirthday(Ljava/util/Date;)Lcom/google/android/gms/monkey/AdRequest$Builder;

    :cond_0
    invoke-virtual {p1}, Lcom/google/archery/mediation/MediationAdRequest;->getGender()Lcom/google/archery/AdRequest$Gender;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/internal/bk;->a(Lcom/google/archery/AdRequest$Gender;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/monkey/AdRequest$Builder;->setGender(I)Lcom/google/android/gms/monkey/AdRequest$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/google/archery/mediation/MediationAdRequest;->getKeywords()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/monkey/AdRequest$Builder;->addKeyword(Ljava/lang/String;)Lcom/google/android/gms/monkey/AdRequest$Builder;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/archery/mediation/MediationAdRequest;->isTesting()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/google/android/gms/internal/cz;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/monkey/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/monkey/AdRequest$Builder;

    :cond_3
    iget v0, p3, Lcom/google/archery/mediation/admob/AdMobServerParameters;->tagForChildDirectedTreatment:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4

    iget v0, p3, Lcom/google/archery/mediation/admob/AdMobServerParameters;->tagForChildDirectedTreatment:I

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/google/android/gms/monkey/AdRequest$Builder;->tagForChildDirectedTreatment(Z)Lcom/google/android/gms/monkey/AdRequest$Builder;

    :cond_4
    if-eqz p2, :cond_7

    :goto_2
    invoke-virtual {p2}, Lcom/google/android/gms/monkey/mediation/admob/AdMobExtras;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "gw"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "mad_hac"

    iget-object v4, p3, Lcom/google/archery/mediation/admob/AdMobServerParameters;->allowHouseAds:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p3, Lcom/google/archery/mediation/admob/AdMobServerParameters;->adJson:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "_ad"

    iget-object v4, p3, Lcom/google/archery/mediation/admob/AdMobServerParameters;->adJson:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v3, "_noRefresh"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v2, p2}, Lcom/google/android/gms/monkey/AdRequest$Builder;->addNetworkExtras(Lcom/google/android/gms/monkey/mediation/NetworkExtras;)Lcom/google/android/gms/monkey/AdRequest$Builder;

    invoke-virtual {v2}, Lcom/google/android/gms/monkey/AdRequest$Builder;->build()Lcom/google/android/gms/monkey/AdRequest;

    move-result-object v0

    return-object v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    new-instance p2, Lcom/google/android/gms/monkey/mediation/admob/AdMobExtras;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p2, v0}, Lcom/google/android/gms/monkey/mediation/admob/AdMobExtras;-><init>(Landroid/os/Bundle;)V

    goto :goto_2
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/archery/mediation/admob/AdMobAdapter;->h:Lcom/google/android/gms/monkey/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/archery/mediation/admob/AdMobAdapter;->h:Lcom/google/android/gms/monkey/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/monkey/AdView;->destroy()V

    iput-object v1, p0, Lcom/google/archery/mediation/admob/AdMobAdapter;->h:Lcom/google/android/gms/monkey/AdView;

    :cond_0
    iget-object v0, p0, Lcom/google/archery/mediation/admob/AdMobAdapter;->i:Lcom/google/android/gms/monkey/InterstitialAd;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/google/archery/mediation/admob/AdMobAdapter;->i:Lcom/google/android/gms/monkey/InterstitialAd;

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
            "Lcom/google/android/gms/monkey/mediation/admob/AdMobExtras;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/monkey/mediation/admob/AdMobExtras;

    return-object v0
.end method

.method public getBannerView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/archery/mediation/admob/AdMobAdapter;->h:Lcom/google/android/gms/monkey/AdView;

    return-object v0
.end method

.method public getServerParametersType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/google/archery/mediation/admob/AdMobServerParameters;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/google/archery/mediation/admob/AdMobServerParameters;

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

    check-cast v3, Lcom/google/archery/mediation/admob/AdMobServerParameters;

    move-object v6, p6

    check-cast v6, Lcom/google/android/gms/monkey/mediation/admob/AdMobExtras;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/archery/mediation/admob/AdMobAdapter;->requestBannerAd(Lcom/google/archery/mediation/MediationBannerListener;Landroid/app/Activity;Lcom/google/archery/mediation/admob/AdMobServerParameters;Lcom/google/archery/AdSize;Lcom/google/archery/mediation/MediationAdRequest;Lcom/google/android/gms/monkey/mediation/admob/AdMobExtras;)V

    return-void
.end method

.method public requestBannerAd(Lcom/google/archery/mediation/MediationBannerListener;Landroid/app/Activity;Lcom/google/archery/mediation/admob/AdMobServerParameters;Lcom/google/archery/AdSize;Lcom/google/archery/mediation/MediationAdRequest;Lcom/google/android/gms/monkey/mediation/admob/AdMobExtras;)V
    .locals 4
    .param p1, "bannerListener"    # Lcom/google/archery/mediation/MediationBannerListener;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "serverParameters"    # Lcom/google/archery/mediation/admob/AdMobServerParameters;
    .param p4, "adSize"    # Lcom/google/archery/AdSize;
    .param p5, "mediationAdRequest"    # Lcom/google/archery/mediation/MediationAdRequest;
    .param p6, "extras"    # Lcom/google/android/gms/monkey/mediation/admob/AdMobExtras;

    .prologue
    new-instance v0, Lcom/google/android/gms/monkey/AdView;

    invoke-direct {v0, p2}, Lcom/google/android/gms/monkey/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/archery/mediation/admob/AdMobAdapter;->h:Lcom/google/android/gms/monkey/AdView;

    iget-object v0, p0, Lcom/google/archery/mediation/admob/AdMobAdapter;->h:Lcom/google/android/gms/monkey/AdView;

    new-instance v1, Lcom/google/android/gms/monkey/AdSize;

    invoke-virtual {p4}, Lcom/google/archery/AdSize;->getWidth()I

    move-result v2

    invoke-virtual {p4}, Lcom/google/archery/AdSize;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/monkey/AdSize;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/monkey/AdView;->setAdSize(Lcom/google/android/gms/monkey/AdSize;)V

    iget-object v0, p0, Lcom/google/archery/mediation/admob/AdMobAdapter;->h:Lcom/google/android/gms/monkey/AdView;

    iget-object v1, p3, Lcom/google/archery/mediation/admob/AdMobServerParameters;->adUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/monkey/AdView;->setAdUnitId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/archery/mediation/admob/AdMobAdapter;->h:Lcom/google/android/gms/monkey/AdView;

    new-instance v1, Lcom/google/archery/mediation/admob/AdMobAdapter$a;

    invoke-direct {v1, p0, p1}, Lcom/google/archery/mediation/admob/AdMobAdapter$a;-><init>(Lcom/google/archery/mediation/admob/AdMobAdapter;Lcom/google/archery/mediation/MediationBannerListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/monkey/AdView;->setAdListener(Lcom/google/android/gms/monkey/AdListener;)V

    iget-object v0, p0, Lcom/google/archery/mediation/admob/AdMobAdapter;->h:Lcom/google/android/gms/monkey/AdView;

    invoke-static {p2, p5, p6, p3}, Lcom/google/archery/mediation/admob/AdMobAdapter;->a(Landroid/content/Context;Lcom/google/archery/mediation/MediationAdRequest;Lcom/google/android/gms/monkey/mediation/admob/AdMobExtras;Lcom/google/archery/mediation/admob/AdMobServerParameters;)Lcom/google/android/gms/monkey/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/monkey/AdView;->loadAd(Lcom/google/android/gms/monkey/AdRequest;)V

    return-void
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

    check-cast v3, Lcom/google/archery/mediation/admob/AdMobServerParameters;

    move-object v5, p5

    check-cast v5, Lcom/google/android/gms/monkey/mediation/admob/AdMobExtras;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/archery/mediation/admob/AdMobAdapter;->requestInterstitialAd(Lcom/google/archery/mediation/MediationInterstitialListener;Landroid/app/Activity;Lcom/google/archery/mediation/admob/AdMobServerParameters;Lcom/google/archery/mediation/MediationAdRequest;Lcom/google/android/gms/monkey/mediation/admob/AdMobExtras;)V

    return-void
.end method

.method public requestInterstitialAd(Lcom/google/archery/mediation/MediationInterstitialListener;Landroid/app/Activity;Lcom/google/archery/mediation/admob/AdMobServerParameters;Lcom/google/archery/mediation/MediationAdRequest;Lcom/google/android/gms/monkey/mediation/admob/AdMobExtras;)V
    .locals 2
    .param p1, "interstitialListener"    # Lcom/google/archery/mediation/MediationInterstitialListener;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "serverParameters"    # Lcom/google/archery/mediation/admob/AdMobServerParameters;
    .param p4, "mediationAdRequest"    # Lcom/google/archery/mediation/MediationAdRequest;
    .param p5, "extras"    # Lcom/google/android/gms/monkey/mediation/admob/AdMobExtras;

    .prologue
    new-instance v0, Lcom/google/android/gms/monkey/InterstitialAd;

    invoke-direct {v0, p2}, Lcom/google/android/gms/monkey/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/archery/mediation/admob/AdMobAdapter;->i:Lcom/google/android/gms/monkey/InterstitialAd;

    iget-object v0, p0, Lcom/google/archery/mediation/admob/AdMobAdapter;->i:Lcom/google/android/gms/monkey/InterstitialAd;

    iget-object v1, p3, Lcom/google/archery/mediation/admob/AdMobServerParameters;->adUnitId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/monkey/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/archery/mediation/admob/AdMobAdapter;->i:Lcom/google/android/gms/monkey/InterstitialAd;

    new-instance v1, Lcom/google/archery/mediation/admob/AdMobAdapter$b;

    invoke-direct {v1, p0, p1}, Lcom/google/archery/mediation/admob/AdMobAdapter$b;-><init>(Lcom/google/archery/mediation/admob/AdMobAdapter;Lcom/google/archery/mediation/MediationInterstitialListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/monkey/InterstitialAd;->setAdListener(Lcom/google/android/gms/monkey/AdListener;)V

    iget-object v0, p0, Lcom/google/archery/mediation/admob/AdMobAdapter;->i:Lcom/google/android/gms/monkey/InterstitialAd;

    invoke-static {p2, p4, p5, p3}, Lcom/google/archery/mediation/admob/AdMobAdapter;->a(Landroid/content/Context;Lcom/google/archery/mediation/MediationAdRequest;Lcom/google/android/gms/monkey/mediation/admob/AdMobExtras;Lcom/google/archery/mediation/admob/AdMobServerParameters;)Lcom/google/android/gms/monkey/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/monkey/InterstitialAd;->loadAd(Lcom/google/android/gms/monkey/AdRequest;)V

    return-void
.end method

.method public showInterstitial()V
    .locals 1

    iget-object v0, p0, Lcom/google/archery/mediation/admob/AdMobAdapter;->i:Lcom/google/android/gms/monkey/InterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/monkey/InterstitialAd;->show()V

    return-void
.end method
