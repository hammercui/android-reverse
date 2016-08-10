.class public Lcom/mbj/ads/banner/BannerAd;
.super Ljava/lang/Object;


# instance fields
.field private bannerInterface:Lcom/mbj/ads/adsinterface/BannerInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lw/a;->a(Landroid/content/Context;)Lw/a;

    move-result-object v0

    invoke-virtual {v0}, Lw/a;->f()Lcom/mbj/ads/adsinterface/BannerInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/mbj/ads/banner/BannerAd;->bannerInterface:Lcom/mbj/ads/adsinterface/BannerInterface;

    iget-object v0, p0, Lcom/mbj/ads/banner/BannerAd;->bannerInterface:Lcom/mbj/ads/adsinterface/BannerInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/banner/BannerAd;->bannerInterface:Lcom/mbj/ads/adsinterface/BannerInterface;

    invoke-interface {v0, p1, p2}, Lcom/mbj/ads/adsinterface/BannerInterface;->initBanner(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/mbj/ads/banner/BannerAd;->bannerInterface:Lcom/mbj/ads/adsinterface/BannerInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/banner/BannerAd;->bannerInterface:Lcom/mbj/ads/adsinterface/BannerInterface;

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/BannerInterface;->close()V

    :cond_0
    return-void
.end method

.method public getBannerView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/mbj/ads/banner/BannerAd;->bannerInterface:Lcom/mbj/ads/adsinterface/BannerInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/banner/BannerAd;->bannerInterface:Lcom/mbj/ads/adsinterface/BannerInterface;

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/BannerInterface;->getBannerView()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setADListener(Lcom/mbj/ads/banner/BannerADListener;)V
    .locals 1

    iget-object v0, p0, Lcom/mbj/ads/banner/BannerAd;->bannerInterface:Lcom/mbj/ads/adsinterface/BannerInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/banner/BannerAd;->bannerInterface:Lcom/mbj/ads/adsinterface/BannerInterface;

    invoke-interface {v0, p1}, Lcom/mbj/ads/adsinterface/BannerInterface;->setADListener(Lcom/mbj/ads/banner/BannerADListener;)V

    :cond_0
    return-void
.end method
