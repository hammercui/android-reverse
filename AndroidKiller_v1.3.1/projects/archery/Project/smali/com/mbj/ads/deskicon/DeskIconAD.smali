.class public Lcom/mbj/ads/deskicon/DeskIconAD;
.super Ljava/lang/Object;


# instance fields
.field private deskIconInterface:Lcom/mbj/ads/adsinterface/DeskIconInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lw/a;->a(Landroid/content/Context;)Lw/a;

    move-result-object v0

    invoke-virtual {v0}, Lw/a;->h()Lcom/mbj/ads/adsinterface/DeskIconInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/mbj/ads/deskicon/DeskIconAD;->deskIconInterface:Lcom/mbj/ads/adsinterface/DeskIconInterface;

    iget-object v0, p0, Lcom/mbj/ads/deskicon/DeskIconAD;->deskIconInterface:Lcom/mbj/ads/adsinterface/DeskIconInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/deskicon/DeskIconAD;->deskIconInterface:Lcom/mbj/ads/adsinterface/DeskIconInterface;

    invoke-interface {v0, p1, p2}, Lcom/mbj/ads/adsinterface/DeskIconInterface;->deskIconInit(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/mbj/ads/deskicon/DeskIconAD;->deskIconInterface:Lcom/mbj/ads/adsinterface/DeskIconInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/deskicon/DeskIconAD;->deskIconInterface:Lcom/mbj/ads/adsinterface/DeskIconInterface;

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/DeskIconInterface;->close()V

    :cond_0
    return-void
.end method

.method public loadAD()V
    .locals 1

    iget-object v0, p0, Lcom/mbj/ads/deskicon/DeskIconAD;->deskIconInterface:Lcom/mbj/ads/adsinterface/DeskIconInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/deskicon/DeskIconAD;->deskIconInterface:Lcom/mbj/ads/adsinterface/DeskIconInterface;

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/DeskIconInterface;->loadAD()V

    :cond_0
    return-void
.end method

.method public setADListener(Lcom/mbj/ads/deskicon/DeskIconADListener;)V
    .locals 1

    iget-object v0, p0, Lcom/mbj/ads/deskicon/DeskIconAD;->deskIconInterface:Lcom/mbj/ads/adsinterface/DeskIconInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/deskicon/DeskIconAD;->deskIconInterface:Lcom/mbj/ads/adsinterface/DeskIconInterface;

    invoke-interface {v0, p1}, Lcom/mbj/ads/adsinterface/DeskIconInterface;->setADListener(Lcom/mbj/ads/deskicon/DeskIconADListener;)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/mbj/ads/deskicon/DeskIconAD;->deskIconInterface:Lcom/mbj/ads/adsinterface/DeskIconInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/deskicon/DeskIconAD;->deskIconInterface:Lcom/mbj/ads/adsinterface/DeskIconInterface;

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/DeskIconInterface;->show()V

    :cond_0
    return-void
.end method
