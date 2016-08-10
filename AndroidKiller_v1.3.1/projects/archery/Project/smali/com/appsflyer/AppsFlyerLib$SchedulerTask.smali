.class public Lcom/appsflyer/AppsFlyerLib$SchedulerTask;
.super Ljava/lang/Object;
.source "AppsFlyerLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AppsFlyerLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SchedulerTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/AppsFlyerLib$SchedulerTask$checkResumeTask;
    }
.end annotation


# instance fields
.field timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "seconds"    # I

    .prologue
    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    # invokes: Lcom/appsflyer/AppsFlyerLib;->shouldLog(Landroid/content/Context;)Z
    invoke-static {p1}, Lcom/appsflyer/AppsFlyerLib;->access$000(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    const-string v0, "AppsFlyer_3.0"

    const-string v1, "SchedulerTask called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/AppsFlyerLib$SchedulerTask;->timer:Ljava/util/Timer;

    .line 392
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$SchedulerTask;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/appsflyer/AppsFlyerLib$SchedulerTask$checkResumeTask;

    invoke-direct {v1, p0, p1}, Lcom/appsflyer/AppsFlyerLib$SchedulerTask$checkResumeTask;-><init>(Lcom/appsflyer/AppsFlyerLib$SchedulerTask;Landroid/content/Context;)V

    mul-int/lit16 v2, p2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 393
    return-void
.end method
