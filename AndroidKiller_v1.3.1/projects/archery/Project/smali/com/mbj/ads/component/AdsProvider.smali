.class public Lcom/mbj/ads/component/AdsProvider;
.super Landroid/content/ContentProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Lcom/mbj/ads/component/AdsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw/a;->a(Landroid/content/Context;)Lw/a;

    move-result-object v0

    invoke-virtual {v0}, Lw/a;->b()Lcom/mbj/ads/adsinterface/AdsProviderInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mbj/ads/component/AdsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw/a;->a(Landroid/content/Context;)Lw/a;

    move-result-object v0

    invoke-virtual {v0}, Lw/a;->b()Lcom/mbj/ads/adsinterface/AdsProviderInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/mbj/ads/adsinterface/AdsProviderInterface;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/mbj/ads/component/AdsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw/a;->a(Landroid/content/Context;)Lw/a;

    move-result-object v0

    invoke-virtual {v0}, Lw/a;->b()Lcom/mbj/ads/adsinterface/AdsProviderInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mbj/ads/component/AdsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw/a;->a(Landroid/content/Context;)Lw/a;

    move-result-object v0

    invoke-virtual {v0}, Lw/a;->b()Lcom/mbj/ads/adsinterface/AdsProviderInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mbj/ads/adsinterface/AdsProviderInterface;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    invoke-virtual {p0}, Lcom/mbj/ads/component/AdsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw/a;->a(Landroid/content/Context;)Lw/a;

    move-result-object v0

    invoke-virtual {v0}, Lw/a;->b()Lcom/mbj/ads/adsinterface/AdsProviderInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mbj/ads/component/AdsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw/a;->a(Landroid/content/Context;)Lw/a;

    move-result-object v0

    invoke-virtual {v0}, Lw/a;->b()Lcom/mbj/ads/adsinterface/AdsProviderInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/mbj/ads/adsinterface/AdsProviderInterface;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 1

    invoke-virtual {p0}, Lcom/mbj/ads/component/AdsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw/a;->a(Landroid/content/Context;)Lw/a;

    move-result-object v0

    invoke-virtual {v0}, Lw/a;->a()V

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    invoke-virtual {p0}, Lcom/mbj/ads/component/AdsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw/a;->a(Landroid/content/Context;)Lw/a;

    move-result-object v0

    invoke-virtual {v0}, Lw/a;->b()Lcom/mbj/ads/adsinterface/AdsProviderInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mbj/ads/component/AdsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw/a;->a(Landroid/content/Context;)Lw/a;

    move-result-object v0

    invoke-virtual {v0}, Lw/a;->b()Lcom/mbj/ads/adsinterface/AdsProviderInterface;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/mbj/ads/adsinterface/AdsProviderInterface;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Lcom/mbj/ads/component/AdsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw/a;->a(Landroid/content/Context;)Lw/a;

    move-result-object v0

    invoke-virtual {v0}, Lw/a;->b()Lcom/mbj/ads/adsinterface/AdsProviderInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mbj/ads/component/AdsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw/a;->a(Landroid/content/Context;)Lw/a;

    move-result-object v0

    invoke-virtual {v0}, Lw/a;->b()Lcom/mbj/ads/adsinterface/AdsProviderInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mbj/ads/adsinterface/AdsProviderInterface;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
