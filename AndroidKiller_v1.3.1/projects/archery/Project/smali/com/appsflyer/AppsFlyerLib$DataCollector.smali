.class Lcom/appsflyer/AppsFlyerLib$DataCollector;
.super Ljava/lang/Object;
.source "AppsFlyerLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AppsFlyerLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataCollector"
.end annotation


# instance fields
.field private appsFlyerKey:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private eventName:Ljava/lang/String;

.field private eventValue:Ljava/lang/String;

.field private executor:Ljava/util/concurrent/ExecutorService;

.field private isNewAPI:Z

.field private referrer:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appsFlyerKey"    # Ljava/lang/String;
    .param p3, "eventName"    # Ljava/lang/String;
    .param p4, "eventValue"    # Ljava/lang/String;
    .param p5, "referrer"    # Ljava/lang/String;
    .param p6, "useNewAPI"    # Z
    .param p7, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 1468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1469
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->context:Landroid/content/Context;

    .line 1470
    iput-object p2, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->appsFlyerKey:Ljava/lang/String;

    .line 1471
    iput-object p3, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->eventName:Ljava/lang/String;

    .line 1472
    iput-object p4, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->eventValue:Ljava/lang/String;

    .line 1473
    iput-object p5, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->referrer:Ljava/lang/String;

    .line 1474
    iput-boolean p6, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->isNewAPI:Z

    .line 1475
    iput-object p7, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->executor:Ljava/util/concurrent/ExecutorService;

    .line 1476
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/concurrent/ExecutorService;Lcom/appsflyer/AppsFlyerLib$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Z
    .param p7, "x6"    # Ljava/util/concurrent/ExecutorService;
    .param p8, "x7"    # Lcom/appsflyer/AppsFlyerLib$1;

    .prologue
    .line 1452
    invoke-direct/range {p0 .. p7}, Lcom/appsflyer/AppsFlyerLib$DataCollector;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/concurrent/ExecutorService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1479
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->appsFlyerKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->eventName:Ljava/lang/String;

    iget-object v3, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->eventValue:Ljava/lang/String;

    iget-object v4, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->referrer:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->isNewAPI:Z

    # invokes: Lcom/appsflyer/AppsFlyerLib;->sendTrackingWithEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static/range {v0 .. v5}, Lcom/appsflyer/AppsFlyerLib;->access$400(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1480
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$DataCollector;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1481
    return-void
.end method
