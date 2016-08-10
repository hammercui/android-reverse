.class public interface abstract Lcom/mbj/ads/adsinterface/NativeInterface;
.super Ljava/lang/Object;


# virtual methods
.method public abstract clearCache()V
.end method

.method public abstract destory()V
.end method

.method public abstract fill()V
.end method

.method public abstract getAdChannelType()I
.end method

.method public abstract getCallToAction()Ljava/lang/String;
.end method

.method public abstract getIconUrl()Ljava/lang/String;
.end method

.method public abstract getImageUrl()Ljava/lang/String;
.end method

.method public abstract getRatings()F
.end method

.method public abstract getShortDesc()Ljava/lang/String;
.end method

.method public abstract getSource()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract isAdLoaded()Z
.end method

.method public abstract load()V
.end method

.method public abstract nativeInit(Landroid/content/Context;II)V
.end method

.method public abstract registerViewForInteraction(Landroid/view/View;)V
.end method

.method public abstract registerViewForInteraction(Landroid/view/View;Ljava/util/List;)V
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
.end method

.method public abstract setDuNativeAd(Lcom/mbj/ads/nativ/DuNativeAd;)V
.end method

.method public abstract setMobulaAdListener(Lcom/mbj/ads/nativ/DuAdListener;)V
.end method

.method public abstract setProcessClickCallback(Lcom/mbj/ads/nativ/DuClickCallback;)V
.end method

.method public abstract unregisterView()V
.end method
