.class public Lcom/mbj/ads/nativ/DuNativeAd;
.super Ljava/lang/Object;


# instance fields
.field private mNativeInterface:Lcom/mbj/ads/adsinterface/NativeInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/mbj/ads/nativ/DuNativeAd;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lw/a;->a(Landroid/content/Context;)Lw/a;

    move-result-object v0

    invoke-virtual {v0}, Lw/a;->c()Lcom/mbj/ads/adsinterface/NativeInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/mbj/ads/nativ/DuNativeAd;->mNativeInterface:Lcom/mbj/ads/adsinterface/NativeInterface;

    iget-object v0, p0, Lcom/mbj/ads/nativ/DuNativeAd;->mNativeInterface:Lcom/mbj/ads/adsinterface/NativeInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/nativ/DuNativeAd;->mNativeInterface:Lcom/mbj/ads/adsinterface/NativeInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/mbj/ads/adsinterface/NativeInterface;->nativeInit(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/mbj/ads/nativ/DuNativeAd;->mNativeInterface:Lcom/mbj/ads/adsinterface/NativeInterface;

    invoke-interface {v0, p0}, Lcom/mbj/ads/adsinterface/NativeInterface;->setDuNativeAd(Lcom/mbj/ads/nativ/DuNativeAd;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    iget-object v0, p0, Lcom/mbj/ads/nativ/DuNativeAd;->mNativeInterface:Lcom/mbj/ads/adsinterface/NativeInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/nativ/DuNativeAd;->mNativeInterface:Lcom/mbj/ads/adsinterface/NativeInterface;

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/NativeInterface;->clearCache()V

    :cond_0
    return-void
.end method

.method public destory()V
    .locals 1

    iget-object v0, p0, Lcom/mbj/ads/nativ/DuNativeAd;->mNativeInterface:Lcom/mbj/ads/adsinterface/NativeInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/nativ/DuNativeAd;->mNativeInterface:Lcom/mbj/ads/adsinterface/NativeInterface;

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/NativeInterface;->destory()V

    :cond_0
    return-void
.end method

.method public fill()V
    .locals 1

    iget-object v0, p0, Lcom/mbj/ads/nativ/DuNativeAd;->mNativeInterface:Lcom/mbj/ads/adsinterface/NativeInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/nativ/DuNativeAd;->mNativeInterface:Lcom/mbj/ads/adsinterface/NativeInterface;

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/NativeInterface;->fill()V

    :cond_0
    return-void
.end method

.method public getAdChannelType()I
    .locals 1

    iget-object v0, p0, Lcom/mbj/ads/nativ/DuNativeAd;->mNativeInterface:Lcom/mbj/ads/adsinterface/NativeInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/nativ/DuNativeAd;->mNativeInterface:Lcom/mbj/ads/adsinterface/NativeInterface;

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/NativeInterface;->getAdChannelType()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCallToAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbj/ads/nativ/DuNativeAd;->mNativeInterface:Lcom/mbj/ads/adsinterface/NativeInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/nativ/DuNativeAd;->mNativeInterface:Lcom/mbj/ads/adsinterface/NativeInterface;

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/NativeInterface;->getCallToAction()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbj/ads/nativ/DuNativeAd;->mNativeInterface:Lcom/mbj/ads/adsinterface/NativeInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/nativ/DuNativeAd;->mNativeInterface:Lcom/mbj/ads/adsinterface/NativeInterface;

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/NativeInterface;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbj/ads/nativ/DuNativeAd;->mNativeInterface:Lcom/mbj/ads/adsinterface/NativeInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/nativ/DuNativeAd;->mNativeInterface:Lcom/mbj/ads/adsinterface/NativeInterface;

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/NativeInterface;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getRatings()F
    .locals 1

    iget-object v0, p0, Lcom/mbj/ads/nativ/DuNativeAd;->mNativeInterface:Lcom/mbj/ads/adsinterface/NativeInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/nativ/DuNativeAd;->mNativeInterface:Lcom/mbj/ads/adsinterface/NativeInterface;

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/NativeInterface;->getRatings()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x40900000    # 4.5f

    goto :goto_0
.end method

.method public getShortDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbj/ads/nativ/DuNativeAd;->mNativeInterface:Lcom/mbj/ads/adsinterface/NativeInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/nativ/DuNativeAd;->mNativeInterface:Lcom/mbj/ads/adsinterface/NativeInterface;

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/NativeInterface;->getShortDesc()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbj/ads/nativ/DuNativeAd;->mNativeInterface:Lcom/mbj/ads/adsinterface/NativeInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/nativ/DuNativeAd;->mNativeInterface:Lcom/mbj/ads/adsinterface/NativeInterface;

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/NativeInterface;->getSource()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbj/ads/nativ/DuNativeAd;->mNativeInterface:Lcom/mbj/ads/adsinterface/NativeInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/nativ/DuNativeAd;->mNativeInterface:Lcom/mbj/ads/adsinterface/NativeInterface;

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/NativeInterface;->getTitle()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public isAdLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/mbj/ads/nativ/DuNativeAd;->mNativeInterface:Lcom/mbj/ads/adsinterface/NativeInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/nativ/DuNativeAd;->mNativeInterface:Lcom/mbj/ads/adsinterface/NativeInterface;

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/NativeInterface;->isAdLoaded()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load()V
    .locals 1

    iget-object v0, p0, Lcom/mbj/ads/nativ/DuNativeAd;->mNativeInterface:Lcom/mbj/ads/adsinterface/NativeInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/nativ/DuNativeAd;->mNativeInterface:Lcom/mbj/ads/adsinterface/NativeInterface;

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/NativeInterface;->load()V

    :cond_0
    return-void
.end method

.method public registerViewForInteraction(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/mbj/ads/nativ/DuNativeAd;->mNativeInterface:Lcom/mbj/ads/adsinterface/NativeInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/nativ/DuNativeAd;->mNativeInterface:Lcom/mbj/ads/adsinterface/NativeInterface;

    invoke-interface {v0, p1}, Lcom/mbj/ads/adsinterface/NativeInterface;->registerViewForInteraction(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public registerViewForInteraction(Landroid/view/View;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/mbj/ads/nativ/DuNativeAd;->mNativeInterface:Lcom/mbj/ads/adsinterface/NativeInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/nativ/DuNativeAd;->mNativeInterface:Lcom/mbj/ads/adsinterface/NativeInterface;

    invoke-interface {v0, p1, p2}, Lcom/mbj/ads/adsinterface/NativeInterface;->registerViewForInteraction(Landroid/view/View;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setMobulaAdListener(Lcom/mbj/ads/nativ/DuAdListener;)V
    .locals 1

    iget-object v0, p0, Lcom/mbj/ads/nativ/DuNativeAd;->mNativeInterface:Lcom/mbj/ads/adsinterface/NativeInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/nativ/DuNativeAd;->mNativeInterface:Lcom/mbj/ads/adsinterface/NativeInterface;

    invoke-interface {v0, p1}, Lcom/mbj/ads/adsinterface/NativeInterface;->setMobulaAdListener(Lcom/mbj/ads/nativ/DuAdListener;)V

    :cond_0
    return-void
.end method

.method public setProcessClickCallback(Lcom/mbj/ads/nativ/DuClickCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/mbj/ads/nativ/DuNativeAd;->mNativeInterface:Lcom/mbj/ads/adsinterface/NativeInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/nativ/DuNativeAd;->mNativeInterface:Lcom/mbj/ads/adsinterface/NativeInterface;

    invoke-interface {v0, p1}, Lcom/mbj/ads/adsinterface/NativeInterface;->setProcessClickCallback(Lcom/mbj/ads/nativ/DuClickCallback;)V

    :cond_0
    return-void
.end method

.method public unregisterView()V
    .locals 1

    iget-object v0, p0, Lcom/mbj/ads/nativ/DuNativeAd;->mNativeInterface:Lcom/mbj/ads/adsinterface/NativeInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/nativ/DuNativeAd;->mNativeInterface:Lcom/mbj/ads/adsinterface/NativeInterface;

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/NativeInterface;->unregisterView()V

    :cond_0
    return-void
.end method
