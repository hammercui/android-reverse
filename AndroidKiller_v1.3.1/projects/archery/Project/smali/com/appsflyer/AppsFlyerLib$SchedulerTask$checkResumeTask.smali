.class Lcom/appsflyer/AppsFlyerLib$SchedulerTask$checkResumeTask;
.super Ljava/util/TimerTask;
.source "AppsFlyerLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AppsFlyerLib$SchedulerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "checkResumeTask"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/appsflyer/AppsFlyerLib$SchedulerTask;


# direct methods
.method public constructor <init>(Lcom/appsflyer/AppsFlyerLib$SchedulerTask;Landroid/content/Context;)V
    .locals 0
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 398
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLib$SchedulerTask$checkResumeTask;->this$0:Lcom/appsflyer/AppsFlyerLib$SchedulerTask;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 399
    iput-object p2, p0, Lcom/appsflyer/AppsFlyerLib$SchedulerTask$checkResumeTask;->context:Landroid/content/Context;

    .line 400
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 404
    sget-boolean v0, Lcom/appsflyer/AppsFlyerProperties;->didGetResume:Z

    if-nez v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$SchedulerTask$checkResumeTask;->context:Landroid/content/Context;

    # invokes: Lcom/appsflyer/AppsFlyerLib;->shouldLog(Landroid/content/Context;)Z
    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLib;->access$000(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    const-string v0, "AppsFlyer_3.0"

    const-string v1, "checkResumeTask background"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$SchedulerTask$checkResumeTask;->context:Landroid/content/Context;

    # invokes: Lcom/appsflyer/AppsFlyerLib;->callStatsBackground(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLib;->access$100(Landroid/content/Context;)V

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$SchedulerTask$checkResumeTask;->this$0:Lcom/appsflyer/AppsFlyerLib$SchedulerTask;

    iget-object v0, v0, Lcom/appsflyer/AppsFlyerLib$SchedulerTask;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 411
    return-void
.end method
