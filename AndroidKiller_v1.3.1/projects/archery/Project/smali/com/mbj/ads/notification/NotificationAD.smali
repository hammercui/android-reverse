.class public Lcom/mbj/ads/notification/NotificationAD;
.super Ljava/lang/Object;


# instance fields
.field private notificationInterface:Lcom/mbj/ads/adsinterface/NotificationInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lw/a;->a(Landroid/content/Context;)Lw/a;

    move-result-object v0

    invoke-virtual {v0}, Lw/a;->g()Lcom/mbj/ads/adsinterface/NotificationInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/mbj/ads/notification/NotificationAD;->notificationInterface:Lcom/mbj/ads/adsinterface/NotificationInterface;

    iget-object v0, p0, Lcom/mbj/ads/notification/NotificationAD;->notificationInterface:Lcom/mbj/ads/adsinterface/NotificationInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/notification/NotificationAD;->notificationInterface:Lcom/mbj/ads/adsinterface/NotificationInterface;

    invoke-interface {v0, p1, p2}, Lcom/mbj/ads/adsinterface/NotificationInterface;->notificationInit(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/mbj/ads/notification/NotificationAD;->notificationInterface:Lcom/mbj/ads/adsinterface/NotificationInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/notification/NotificationAD;->notificationInterface:Lcom/mbj/ads/adsinterface/NotificationInterface;

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/NotificationInterface;->close()V

    :cond_0
    return-void
.end method

.method public loadAD()V
    .locals 1

    iget-object v0, p0, Lcom/mbj/ads/notification/NotificationAD;->notificationInterface:Lcom/mbj/ads/adsinterface/NotificationInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/notification/NotificationAD;->notificationInterface:Lcom/mbj/ads/adsinterface/NotificationInterface;

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/NotificationInterface;->loadAD()V

    :cond_0
    return-void
.end method

.method public setADListener(Lcom/mbj/ads/notification/NotificationADListener;)V
    .locals 1

    iget-object v0, p0, Lcom/mbj/ads/notification/NotificationAD;->notificationInterface:Lcom/mbj/ads/adsinterface/NotificationInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/notification/NotificationAD;->notificationInterface:Lcom/mbj/ads/adsinterface/NotificationInterface;

    invoke-interface {v0, p1}, Lcom/mbj/ads/adsinterface/NotificationInterface;->setADListener(Lcom/mbj/ads/notification/NotificationADListener;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized show()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mbj/ads/notification/NotificationAD;->notificationInterface:Lcom/mbj/ads/adsinterface/NotificationInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/notification/NotificationAD;->notificationInterface:Lcom/mbj/ads/adsinterface/NotificationInterface;

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/NotificationInterface;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
