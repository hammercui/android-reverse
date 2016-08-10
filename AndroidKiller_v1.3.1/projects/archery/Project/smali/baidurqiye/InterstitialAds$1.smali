.class Lbaidurqiye/InterstitialAds$1;
.super Ljava/lang/Object;
.source "InterstitialAds.java"

# interfaces
.implements Lcom/mbj/ads/interstitial/InterstitialADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbaidurqiye/InterstitialAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbaidurqiye/InterstitialAds;


# direct methods
.method constructor <init>(Lbaidurqiye/InterstitialAds;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbaidurqiye/InterstitialAds$1;->this$0:Lbaidurqiye/InterstitialAds;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onADClicked()V
    .locals 2

    .prologue
    .line 45
    const-string v0, "InterstitialAds"

    const-string v1, "==onADClicked=="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method

.method public onADClosed()V
    .locals 2

    .prologue
    .line 51
    const-string v0, "InterstitialAds"

    const-string v1, "==onADClosed=="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method

.method public onADExposure()V
    .locals 2

    .prologue
    .line 40
    const-string v0, "InterstitialAds"

    const-string v1, "==onADExposure=="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method

.method public onADReceive()V
    .locals 2

    .prologue
    .line 28
    const-string v0, "InterstitialAds"

    const-string v1, "==onADReceive=="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v0, p0, Lbaidurqiye/InterstitialAds$1;->this$0:Lbaidurqiye/InterstitialAds;

    # getter for: Lbaidurqiye/InterstitialAds;->interstitialAD:Lcom/mbj/ads/interstitial/InterstitialAD;
    invoke-static {v0}, Lbaidurqiye/InterstitialAds;->access$0(Lbaidurqiye/InterstitialAds;)Lcom/mbj/ads/interstitial/InterstitialAD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbj/ads/interstitial/InterstitialAD;->show()V

    .line 30
    return-void
.end method

.method public onNoAD(I)V
    .locals 2
    .param p1, "errCode"    # I

    .prologue
    .line 34
    const-string v0, "InterstitialAds"

    const-string v1, "==onNoAD=="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method
