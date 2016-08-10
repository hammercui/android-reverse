.class public Lbaidurqiye/myad;
.super Ljava/lang/Object;
.source "myad.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static baiduad(Landroid/app/Activity;)V
    .locals 4
    .param p0, "mactivity"    # Landroid/app/Activity;

    .prologue
    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mbj/ads/DuAdNetwork;->init(Landroid/content/Context;)V

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lbaidurqiye/myad$1;

    invoke-direct {v1, p0}, Lbaidurqiye/myad$1;-><init>(Landroid/app/Activity;)V

    .line 35
    const-wide/16 v2, 0xbb8

    .line 23
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 38
    return-void
.end method
