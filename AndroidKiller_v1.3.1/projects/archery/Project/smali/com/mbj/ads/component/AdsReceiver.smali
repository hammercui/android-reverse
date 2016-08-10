.class public Lcom/mbj/ads/component/AdsReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private adsReceiverInterface:Lcom/mbj/ads/adsinterface/AdsReceiverInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-static {p1}, Lw/a;->a(Landroid/content/Context;)Lw/a;

    move-result-object v0

    invoke-virtual {v0}, Lw/a;->a()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw/a;->a(Landroid/content/Context;)Lw/a;

    move-result-object v0

    invoke-virtual {v0}, Lw/a;->k()Lcom/mbj/ads/adsinterface/AdsReceiverInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/mbj/ads/component/AdsReceiver;->adsReceiverInterface:Lcom/mbj/ads/adsinterface/AdsReceiverInterface;

    iget-object v0, p0, Lcom/mbj/ads/component/AdsReceiver;->adsReceiverInterface:Lcom/mbj/ads/adsinterface/AdsReceiverInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/component/AdsReceiver;->adsReceiverInterface:Lcom/mbj/ads/adsinterface/AdsReceiverInterface;

    invoke-interface {v0, p1, p2, p0}, Lcom/mbj/ads/adsinterface/AdsReceiverInterface;->onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
