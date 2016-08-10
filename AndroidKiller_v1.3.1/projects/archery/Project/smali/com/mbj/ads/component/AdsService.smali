.class public Lcom/mbj/ads/component/AdsService;
.super Landroid/app/Service;


# static fields
.field private static final TAG:Ljava/lang/String; = "AdsService"


# instance fields
.field private mRemoteService:Lcom/mbj/ads/adsinterface/AdsServiceInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "AdsService"

    const-string v1, "AdsService onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/mbj/ads/component/AdsService;->mRemoteService:Lcom/mbj/ads/adsinterface/AdsServiceInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/component/AdsService;->mRemoteService:Lcom/mbj/ads/adsinterface/AdsServiceInterface;

    invoke-interface {v0, p1}, Lcom/mbj/ads/adsinterface/AdsServiceInterface;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "AdsService"

    const-string v1, "AdsService onBind null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/mbj/ads/component/AdsService;->mRemoteService:Lcom/mbj/ads/adsinterface/AdsServiceInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/component/AdsService;->mRemoteService:Lcom/mbj/ads/adsinterface/AdsServiceInterface;

    invoke-interface {v0, p1}, Lcom/mbj/ads/adsinterface/AdsServiceInterface;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "AdsService"

    const-string v1, "AdsService onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate()V
    .locals 2

    invoke-virtual {p0}, Lcom/mbj/ads/component/AdsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw/a;->a(Landroid/content/Context;)Lw/a;

    move-result-object v0

    invoke-virtual {v0}, Lw/a;->a()V

    invoke-virtual {p0}, Lcom/mbj/ads/component/AdsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lw/a;->a(Landroid/content/Context;)Lw/a;

    move-result-object v0

    invoke-virtual {v0}, Lw/a;->l()Lcom/mbj/ads/adsinterface/AdsServiceInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/mbj/ads/component/AdsService;->mRemoteService:Lcom/mbj/ads/adsinterface/AdsServiceInterface;

    iget-object v0, p0, Lcom/mbj/ads/component/AdsService;->mRemoteService:Lcom/mbj/ads/adsinterface/AdsServiceInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/component/AdsService;->mRemoteService:Lcom/mbj/ads/adsinterface/AdsServiceInterface;

    invoke-interface {v0, p0}, Lcom/mbj/ads/adsinterface/AdsServiceInterface;->onCreate(Landroid/app/Service;)V

    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "AdsService"

    const-string v1, "AdsService onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "AdsService"

    const-string v1, "AdsService onCreate null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/mbj/ads/component/AdsService;->mRemoteService:Lcom/mbj/ads/adsinterface/AdsServiceInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/component/AdsService;->mRemoteService:Lcom/mbj/ads/adsinterface/AdsServiceInterface;

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/AdsServiceInterface;->onDestroy()V

    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "AdsService"

    const-string v1, "AdsService onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "AdsService"

    const-string v1, "AdsService onDestroy null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 2

    iget-object v0, p0, Lcom/mbj/ads/component/AdsService;->mRemoteService:Lcom/mbj/ads/adsinterface/AdsServiceInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/component/AdsService;->mRemoteService:Lcom/mbj/ads/adsinterface/AdsServiceInterface;

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/AdsServiceInterface;->onLowMemory()V

    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    const-string v0, "AdsService"

    const-string v1, "AdsService onLowMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/mbj/ads/component/AdsService;->mRemoteService:Lcom/mbj/ads/adsinterface/AdsServiceInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/component/AdsService;->mRemoteService:Lcom/mbj/ads/adsinterface/AdsServiceInterface;

    invoke-interface {v0, p1}, Lcom/mbj/ads/adsinterface/AdsServiceInterface;->onRebind(Landroid/content/Intent;)V

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    const-string v0, "AdsService"

    const-string v1, "AdsService onRebind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "AdsService"

    const-string v1, "AdsService onRebind null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    const-string v0, "AdsService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AdsService onStartCommand "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    iget-object v0, p0, Lcom/mbj/ads/component/AdsService;->mRemoteService:Lcom/mbj/ads/adsinterface/AdsServiceInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/component/AdsService;->mRemoteService:Lcom/mbj/ads/adsinterface/AdsServiceInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/mbj/ads/adsinterface/AdsServiceInterface;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "AdsService"

    const-string v1, "AdsService onStartCommand null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/mbj/ads/component/AdsService;->mRemoteService:Lcom/mbj/ads/adsinterface/AdsServiceInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/component/AdsService;->mRemoteService:Lcom/mbj/ads/adsinterface/AdsServiceInterface;

    invoke-interface {v0, p1}, Lcom/mbj/ads/adsinterface/AdsServiceInterface;->onTaskRemoved(Landroid/content/Intent;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    const-string v0, "AdsService"

    const-string v1, "AdsService onTaskRemoved"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2

    iget-object v0, p0, Lcom/mbj/ads/component/AdsService;->mRemoteService:Lcom/mbj/ads/adsinterface/AdsServiceInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/component/AdsService;->mRemoteService:Lcom/mbj/ads/adsinterface/AdsServiceInterface;

    invoke-interface {v0, p1}, Lcom/mbj/ads/adsinterface/AdsServiceInterface;->onTrimMemory(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onTrimMemory(I)V

    const-string v0, "AdsService"

    const-string v1, "AdsService onTrimMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "AdsService"

    const-string v1, "AdsService onUnbind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    iget-object v0, p0, Lcom/mbj/ads/component/AdsService;->mRemoteService:Lcom/mbj/ads/adsinterface/AdsServiceInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbj/ads/component/AdsService;->mRemoteService:Lcom/mbj/ads/adsinterface/AdsServiceInterface;

    invoke-interface {v0, p1}, Lcom/mbj/ads/adsinterface/AdsServiceInterface;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "AdsService"

    const-string v1, "AdsService onUnbind null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method
