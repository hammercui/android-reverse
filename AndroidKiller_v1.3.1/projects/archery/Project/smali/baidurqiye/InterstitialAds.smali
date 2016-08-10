.class public Lbaidurqiye/InterstitialAds;
.super Ljava/lang/Object;
.source "InterstitialAds.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "InterstitialAds"


# instance fields
.field private interstitialAD:Lcom/mbj/ads/interstitial/InterstitialAD;

.field private interstitialADListener:Lcom/mbj/ads/interstitial/InterstitialADListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lbaidurqiye/InterstitialAds$1;

    invoke-direct {v0, p0}, Lbaidurqiye/InterstitialAds$1;-><init>(Lbaidurqiye/InterstitialAds;)V

    iput-object v0, p0, Lbaidurqiye/InterstitialAds;->interstitialADListener:Lcom/mbj/ads/interstitial/InterstitialADListener;

    .line 10
    return-void
.end method

.method static synthetic access$0(Lbaidurqiye/InterstitialAds;)Lcom/mbj/ads/interstitial/InterstitialAD;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lbaidurqiye/InterstitialAds;->interstitialAD:Lcom/mbj/ads/interstitial/InterstitialAD;

    return-object v0
.end method


# virtual methods
.method public onClickInterstitial(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pid"    # I

    .prologue
    .line 16
    iget-object v0, p0, Lbaidurqiye/InterstitialAds;->interstitialAD:Lcom/mbj/ads/interstitial/InterstitialAD;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/mbj/ads/interstitial/InterstitialAD;

    invoke-direct {v0, p1, p2}, Lcom/mbj/ads/interstitial/InterstitialAD;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lbaidurqiye/InterstitialAds;->interstitialAD:Lcom/mbj/ads/interstitial/InterstitialAD;

    .line 18
    iget-object v0, p0, Lbaidurqiye/InterstitialAds;->interstitialAD:Lcom/mbj/ads/interstitial/InterstitialAD;

    iget-object v1, p0, Lbaidurqiye/InterstitialAds;->interstitialADListener:Lcom/mbj/ads/interstitial/InterstitialADListener;

    invoke-virtual {v0, v1}, Lcom/mbj/ads/interstitial/InterstitialAD;->setADListener(Lcom/mbj/ads/interstitial/InterstitialADListener;)V

    .line 20
    :cond_0
    const-string v0, "InterstitialAds"

    const-string v1, "==loadAD=="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object v0, p0, Lbaidurqiye/InterstitialAds;->interstitialAD:Lcom/mbj/ads/interstitial/InterstitialAD;

    invoke-virtual {v0}, Lcom/mbj/ads/interstitial/InterstitialAD;->loadAD()V

    .line 23
    return-void
.end method
