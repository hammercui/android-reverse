.class public final Lcom/google/android/gms/monkey/donkey/PublisherAdView;
.super Landroid/view/ViewGroup;


# instance fields
.field private final kD:Lcom/google/android/gms/internal/ak;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/ak;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ak;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/google/android/gms/monkey/donkey/PublisherAdView;->kD:Lcom/google/android/gms/internal/ak;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/google/android/gms/internal/ak;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1}, Lcom/google/android/gms/internal/ak;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V

    iput-object v0, p0, Lcom/google/android/gms/monkey/donkey/PublisherAdView;->kD:Lcom/google/android/gms/internal/ak;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/google/android/gms/internal/ak;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1}, Lcom/google/android/gms/internal/ak;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V

    iput-object v0, p0, Lcom/google/android/gms/monkey/donkey/PublisherAdView;->kD:Lcom/google/android/gms/internal/ak;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/monkey/donkey/PublisherAdView;->kD:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ak;->destroy()V

    return-void
.end method

.method public getAdListener()Lcom/google/android/gms/monkey/AdListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/monkey/donkey/PublisherAdView;->kD:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ak;->getAdListener()Lcom/google/android/gms/monkey/AdListener;

    move-result-object v0

    return-object v0
.end method

.method public getAdSize()Lcom/google/android/gms/monkey/AdSize;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/monkey/donkey/PublisherAdView;->kD:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ak;->getAdSize()Lcom/google/android/gms/monkey/AdSize;

    move-result-object v0

    return-object v0
.end method

.method public getAdSizes()[Lcom/google/android/gms/monkey/AdSize;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/monkey/donkey/PublisherAdView;->kD:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ak;->getAdSizes()[Lcom/google/android/gms/monkey/AdSize;

    move-result-object v0

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/monkey/donkey/PublisherAdView;->kD:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ak;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppEventListener()Lcom/google/android/gms/monkey/donkey/AppEventListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/monkey/donkey/PublisherAdView;->kD:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ak;->getAppEventListener()Lcom/google/android/gms/monkey/donkey/AppEventListener;

    move-result-object v0

    return-object v0
.end method

.method public loadAd(Lcom/google/android/gms/monkey/donkey/PublisherAdRequest;)V
    .locals 2
    .param p1, "publisherAdRequest"    # Lcom/google/android/gms/monkey/donkey/PublisherAdRequest;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/monkey/donkey/PublisherAdView;->kD:Lcom/google/android/gms/internal/ak;

    invoke-virtual {p1}, Lcom/google/android/gms/monkey/donkey/PublisherAdRequest;->N()Lcom/google/android/gms/internal/aj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ak;->a(Lcom/google/android/gms/internal/aj;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/monkey/donkey/PublisherAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v3, p4, p2

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    sub-int v4, p5, p3

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v3

    add-int/2addr v2, v4

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/monkey/donkey/PublisherAdView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/monkey/donkey/PublisherAdView;->getAdSize()Lcom/google/android/gms/monkey/AdSize;

    move-result-object v3

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v4, 0x8

    if-eq v1, v4, :cond_0

    invoke-virtual {p0, v2, p1, p2}, Lcom/google/android/gms/monkey/donkey/PublisherAdView;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/monkey/donkey/PublisherAdView;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/monkey/donkey/PublisherAdView;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, p1}, Landroid/view/View;->resolveSize(II)I

    move-result v1

    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/monkey/donkey/PublisherAdView;->setMeasuredDimension(II)V

    return-void

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/monkey/donkey/PublisherAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/monkey/AdSize;->getWidthInPixels(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v3, v0}, Lcom/google/android/gms/monkey/AdSize;->getHeightInPixels(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/monkey/donkey/PublisherAdView;->kD:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ak;->pause()V

    return-void
.end method

.method public recordManualImpression()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/monkey/donkey/PublisherAdView;->kD:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ak;->recordManualImpression()V

    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/monkey/donkey/PublisherAdView;->kD:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ak;->resume()V

    return-void
.end method

.method public setAdListener(Lcom/google/android/gms/monkey/AdListener;)V
    .locals 1
    .param p1, "adListener"    # Lcom/google/android/gms/monkey/AdListener;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/monkey/donkey/PublisherAdView;->kD:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ak;->setAdListener(Lcom/google/android/gms/monkey/AdListener;)V

    return-void
.end method

.method public varargs setAdSizes([Lcom/google/android/gms/monkey/AdSize;)V
    .locals 2
    .param p1, "adSizes"    # [Lcom/google/android/gms/monkey/AdSize;

    .prologue
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The supported ad sizes must contain at least one valid ad size."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/monkey/donkey/PublisherAdView;->kD:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ak;->a([Lcom/google/android/gms/monkey/AdSize;)V

    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 1
    .param p1, "adUnitId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/monkey/donkey/PublisherAdView;->kD:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ak;->setAdUnitId(Ljava/lang/String;)V

    return-void
.end method

.method public setAppEventListener(Lcom/google/android/gms/monkey/donkey/AppEventListener;)V
    .locals 1
    .param p1, "appEventListener"    # Lcom/google/android/gms/monkey/donkey/AppEventListener;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/monkey/donkey/PublisherAdView;->kD:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ak;->setAppEventListener(Lcom/google/android/gms/monkey/donkey/AppEventListener;)V

    return-void
.end method
