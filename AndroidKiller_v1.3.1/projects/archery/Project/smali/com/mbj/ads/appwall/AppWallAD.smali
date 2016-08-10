.class public Lcom/mbj/ads/appwall/AppWallAD;
.super Ljava/lang/Object;


# instance fields
.field private appwallInterface:Lcom/mbj/ads/adsinterface/AppWallInterface;


# direct methods
.method public constructor <init>(Landroid/app/Activity;IIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lw/a;->a(Landroid/content/Context;)Lw/a;

    move-result-object v0

    invoke-virtual {v0}, Lw/a;->i()Lcom/mbj/ads/adsinterface/AppWallInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/mbj/ads/appwall/AppWallAD;->appwallInterface:Lcom/mbj/ads/adsinterface/AppWallInterface;

    iget-object v0, p0, Lcom/mbj/ads/appwall/AppWallAD;->appwallInterface:Lcom/mbj/ads/adsinterface/AppWallInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/appwall/AppWallAD;->appwallInterface:Lcom/mbj/ads/adsinterface/AppWallInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mbj/ads/adsinterface/AppWallInterface;->popupInit(Landroid/app/Activity;IIZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/mbj/ads/appwall/AppWallAD;->appwallInterface:Lcom/mbj/ads/adsinterface/AppWallInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/appwall/AppWallAD;->appwallInterface:Lcom/mbj/ads/adsinterface/AppWallInterface;

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/AppWallInterface;->close()V

    :cond_0
    return-void
.end method

.method public showAppWall()V
    .locals 1

    iget-object v0, p0, Lcom/mbj/ads/appwall/AppWallAD;->appwallInterface:Lcom/mbj/ads/adsinterface/AppWallInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/appwall/AppWallAD;->appwallInterface:Lcom/mbj/ads/adsinterface/AppWallInterface;

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/AppWallInterface;->showAppWall()V

    :cond_0
    return-void
.end method
