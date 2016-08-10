.class public final Lcom/google/android/gms/internal/ak;
.super Ljava/lang/Object;


# instance fields
.field private final lF:Lcom/google/android/gms/internal/be;

.field private lG:Lcom/google/android/gms/internal/ag;

.field private lH:Landroid/view/ViewGroup;

.field private lc:Lcom/google/android/gms/monkey/AdListener;

.field private lq:Lcom/google/android/gms/monkey/donkey/AppEventListener;

.field private lr:[Lcom/google/android/gms/monkey/AdSize;

.field private ls:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/be;

    invoke-direct {v0}, Lcom/google/android/gms/internal/be;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ak;->lF:Lcom/google/android/gms/internal/be;

    iput-object p1, p0, Lcom/google/android/gms/internal/ak;->lH:Landroid/view/ViewGroup;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;Z)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/be;

    invoke-direct {v0}, Lcom/google/android/gms/internal/be;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ak;->lF:Lcom/google/android/gms/internal/be;

    iput-object p1, p0, Lcom/google/android/gms/internal/ak;->lH:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ae;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/ae;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ae;->c(Z)[Lcom/google/android/gms/monkey/AdSize;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ak;->lr:[Lcom/google/android/gms/monkey/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ae;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ak;->ls:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ab;

    iget-object v2, p0, Lcom/google/android/gms/internal/ak;->lr:[Lcom/google/android/gms/monkey/AdSize;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ab;-><init>(Landroid/content/Context;Lcom/google/android/gms/monkey/AdSize;)V

    const-string v1, "Ads by Google"

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/cz;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ab;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Lcom/google/android/gms/internal/ab;

    sget-object v3, Lcom/google/android/gms/monkey/AdSize;->BANNER:Lcom/google/android/gms/monkey/AdSize;

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/ab;-><init>(Landroid/content/Context;Lcom/google/android/gms/monkey/AdSize;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v1, v0}, Lcom/google/android/gms/internal/cz;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ab;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private am()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lG:Lcom/google/android/gms/internal/ag;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ag;->P()Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ak;->lH:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/c;->b(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get an ad frame."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private an()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lr:[Lcom/google/android/gms/monkey/AdSize;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->ls:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lG:Lcom/google/android/gms/internal/ag;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad size and ad unit ID must be set before loadAd is called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lH:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ab;

    iget-object v2, p0, Lcom/google/android/gms/internal/ak;->lr:[Lcom/google/android/gms/monkey/AdSize;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ab;-><init>(Landroid/content/Context;[Lcom/google/android/gms/monkey/AdSize;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ak;->ls:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ak;->lF:Lcom/google/android/gms/internal/be;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/y;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ab;Ljava/lang/String;Lcom/google/android/gms/internal/be;)Lcom/google/android/gms/internal/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ak;->lG:Lcom/google/android/gms/internal/ag;

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lc:Lcom/google/android/gms/monkey/AdListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lG:Lcom/google/android/gms/internal/ag;

    new-instance v1, Lcom/google/android/gms/internal/x;

    iget-object v2, p0, Lcom/google/android/gms/internal/ak;->lc:Lcom/google/android/gms/monkey/AdListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/x;-><init>(Lcom/google/android/gms/monkey/AdListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ag;->a(Lcom/google/android/gms/internal/af;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lq:Lcom/google/android/gms/monkey/donkey/AppEventListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lG:Lcom/google/android/gms/internal/ag;

    new-instance v1, Lcom/google/android/gms/internal/ad;

    iget-object v2, p0, Lcom/google/android/gms/internal/ak;->lq:Lcom/google/android/gms/monkey/donkey/AppEventListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ad;-><init>(Lcom/google/android/gms/monkey/donkey/AppEventListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ag;->a(Lcom/google/android/gms/internal/ai;)V

    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ak;->am()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/aj;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lG:Lcom/google/android/gms/internal/ag;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ak;->an()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lG:Lcom/google/android/gms/internal/ag;

    new-instance v1, Lcom/google/android/gms/internal/z;

    iget-object v2, p0, Lcom/google/android/gms/internal/ak;->lH:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/z;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/aj;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ag;->a(Lcom/google/android/gms/internal/z;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lF:Lcom/google/android/gms/internal/be;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/aj;->ak()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/be;->c(Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to load ad."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public varargs a([Lcom/google/android/gms/monkey/AdSize;)V
    .locals 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ak;->lr:[Lcom/google/android/gms/monkey/AdSize;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lG:Lcom/google/android/gms/internal/ag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lG:Lcom/google/android/gms/internal/ag;

    new-instance v1, Lcom/google/android/gms/internal/ab;

    iget-object v2, p0, Lcom/google/android/gms/internal/ak;->lH:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ak;->lr:[Lcom/google/android/gms/monkey/AdSize;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ab;-><init>(Landroid/content/Context;[Lcom/google/android/gms/monkey/AdSize;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ag;->a(Lcom/google/android/gms/internal/ab;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lH:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the ad size."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lG:Lcom/google/android/gms/internal/ag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lG:Lcom/google/android/gms/internal/ag;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ag;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to destroy AdView."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getAdListener()Lcom/google/android/gms/monkey/AdListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lc:Lcom/google/android/gms/monkey/AdListener;

    return-object v0
.end method

.method public getAdSize()Lcom/google/android/gms/monkey/AdSize;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lG:Lcom/google/android/gms/internal/ag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lG:Lcom/google/android/gms/internal/ag;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ag;->Q()Lcom/google/android/gms/internal/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ab;->ai()Lcom/google/android/gms/monkey/AdSize;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get the current AdSize."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lr:[Lcom/google/android/gms/monkey/AdSize;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lr:[Lcom/google/android/gms/monkey/AdSize;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAdSizes()[Lcom/google/android/gms/monkey/AdSize;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lr:[Lcom/google/android/gms/monkey/AdSize;

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->ls:Ljava/lang/String;

    return-object v0
.end method

.method public getAppEventListener()Lcom/google/android/gms/monkey/donkey/AppEventListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lq:Lcom/google/android/gms/monkey/donkey/AppEventListener;

    return-object v0
.end method

.method public pause()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lG:Lcom/google/android/gms/internal/ag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lG:Lcom/google/android/gms/internal/ag;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ag;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to call pause."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public recordManualImpression()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lG:Lcom/google/android/gms/internal/ag;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ag;->Z()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to record impression."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lG:Lcom/google/android/gms/internal/ag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lG:Lcom/google/android/gms/internal/ag;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ag;->resume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to call resume."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setAdListener(Lcom/google/android/gms/monkey/AdListener;)V
    .locals 2
    .param p1, "adListener"    # Lcom/google/android/gms/monkey/AdListener;

    .prologue
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ak;->lc:Lcom/google/android/gms/monkey/AdListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lG:Lcom/google/android/gms/internal/ag;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ak;->lG:Lcom/google/android/gms/internal/ag;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/x;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/x;-><init>(Lcom/google/android/gms/monkey/AdListener;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ag;->a(Lcom/google/android/gms/internal/af;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the AdListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public varargs setAdSizes([Lcom/google/android/gms/monkey/AdSize;)V
    .locals 2
    .param p1, "adSizes"    # [Lcom/google/android/gms/monkey/AdSize;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lr:[Lcom/google/android/gms/monkey/AdSize;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad size can only be set once on AdView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ak;->a([Lcom/google/android/gms/monkey/AdSize;)V

    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 2
    .param p1, "adUnitId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->ls:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The ad unit ID can only be set once on AdView."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ak;->ls:Ljava/lang/String;

    return-void
.end method

.method public setAppEventListener(Lcom/google/android/gms/monkey/donkey/AppEventListener;)V
    .locals 2
    .param p1, "appEventListener"    # Lcom/google/android/gms/monkey/donkey/AppEventListener;

    .prologue
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ak;->lq:Lcom/google/android/gms/monkey/donkey/AppEventListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/ak;->lG:Lcom/google/android/gms/internal/ag;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ak;->lG:Lcom/google/android/gms/internal/ag;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/ad;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ad;-><init>(Lcom/google/android/gms/monkey/donkey/AppEventListener;)V

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ag;->a(Lcom/google/android/gms/internal/ai;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set the AppEventListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
