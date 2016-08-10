.class public Lbaidurqiye/NotificationAds;
.super Ljava/lang/Object;
.source "NotificationAds.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "NotificationAds"


# instance fields
.field private notificationAD:Lcom/mbj/ads/notification/NotificationAD;

.field private notificationADListener:Lcom/mbj/ads/notification/NotificationADListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lbaidurqiye/NotificationAds$1;

    invoke-direct {v0, p0}, Lbaidurqiye/NotificationAds$1;-><init>(Lbaidurqiye/NotificationAds;)V

    iput-object v0, p0, Lbaidurqiye/NotificationAds;->notificationADListener:Lcom/mbj/ads/notification/NotificationADListener;

    .line 10
    return-void
.end method

.method static synthetic access$0(Lbaidurqiye/NotificationAds;)Lcom/mbj/ads/notification/NotificationAD;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lbaidurqiye/NotificationAds;->notificationAD:Lcom/mbj/ads/notification/NotificationAD;

    return-object v0
.end method


# virtual methods
.method public onClickNotificationAD(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pid"    # I

    .prologue
    .line 15
    iget-object v0, p0, Lbaidurqiye/NotificationAds;->notificationAD:Lcom/mbj/ads/notification/NotificationAD;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/mbj/ads/notification/NotificationAD;

    invoke-direct {v0, p1, p2}, Lcom/mbj/ads/notification/NotificationAD;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lbaidurqiye/NotificationAds;->notificationAD:Lcom/mbj/ads/notification/NotificationAD;

    .line 17
    iget-object v0, p0, Lbaidurqiye/NotificationAds;->notificationAD:Lcom/mbj/ads/notification/NotificationAD;

    iget-object v1, p0, Lbaidurqiye/NotificationAds;->notificationADListener:Lcom/mbj/ads/notification/NotificationADListener;

    invoke-virtual {v0, v1}, Lcom/mbj/ads/notification/NotificationAD;->setADListener(Lcom/mbj/ads/notification/NotificationADListener;)V

    .line 20
    :cond_0
    const-string v0, "NotificationAds"

    const-string v1, "==loadAD=="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object v0, p0, Lbaidurqiye/NotificationAds;->notificationAD:Lcom/mbj/ads/notification/NotificationAD;

    invoke-virtual {v0}, Lcom/mbj/ads/notification/NotificationAD;->loadAD()V

    .line 22
    return-void
.end method
