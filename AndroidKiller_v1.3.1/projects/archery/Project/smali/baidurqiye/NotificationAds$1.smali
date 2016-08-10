.class Lbaidurqiye/NotificationAds$1;
.super Ljava/lang/Object;
.source "NotificationAds.java"

# interfaces
.implements Lcom/mbj/ads/notification/NotificationADListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbaidurqiye/NotificationAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbaidurqiye/NotificationAds;


# direct methods
.method constructor <init>(Lbaidurqiye/NotificationAds;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbaidurqiye/NotificationAds$1;->this$0:Lbaidurqiye/NotificationAds;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onADClicked()V
    .locals 2

    .prologue
    .line 44
    const-string v0, "NotificationAds"

    const-string v1, "==onADClicked=="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void
.end method

.method public onADExposure()V
    .locals 2

    .prologue
    .line 39
    const-string v0, "NotificationAds"

    const-string v1, "==onADExposure=="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method

.method public onADReceive()V
    .locals 2

    .prologue
    .line 28
    const-string v0, "NotificationAds"

    const-string v1, "==onADReceive=="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v0, p0, Lbaidurqiye/NotificationAds$1;->this$0:Lbaidurqiye/NotificationAds;

    # getter for: Lbaidurqiye/NotificationAds;->notificationAD:Lcom/mbj/ads/notification/NotificationAD;
    invoke-static {v0}, Lbaidurqiye/NotificationAds;->access$0(Lbaidurqiye/NotificationAds;)Lcom/mbj/ads/notification/NotificationAD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbj/ads/notification/NotificationAD;->show()V

    .line 30
    return-void
.end method

.method public onNoAD(I)V
    .locals 2
    .param p1, "errCode"    # I

    .prologue
    .line 34
    const-string v0, "NotificationAds"

    const-string v1, "==onNoAD=="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void
.end method
