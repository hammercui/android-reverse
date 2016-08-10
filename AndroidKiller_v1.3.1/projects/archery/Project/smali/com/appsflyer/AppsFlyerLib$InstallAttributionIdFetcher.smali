.class Lcom/appsflyer/AppsFlyerLib$InstallAttributionIdFetcher;
.super Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;
.source "AppsFlyerLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AppsFlyerLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstallAttributionIdFetcher"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appsFlyerDevKey"    # Ljava/lang/String;
    .param p3, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    .line 1565
    invoke-direct {p0, p1, p2, p3}, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 1566
    return-void
.end method


# virtual methods
.method protected attributionCallback(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "conversionData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1574
    # getter for: Lcom/appsflyer/AppsFlyerLib;->conversionDataListener:Lcom/appsflyer/AppsFlyerConversionListener;
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->access$800()Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/appsflyer/AppsFlyerConversionListener;->onInstallConversionDataLoaded(Ljava/util/Map;)V

    .line 1575
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$InstallAttributionIdFetcher;->ctxReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v2, "appsflyer-data"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1576
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$InstallAttributionIdFetcher;->ctxReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-string v2, "appsflyerConversionDataRequestRetries"

    # invokes: Lcom/appsflyer/AppsFlyerLib;->saveIntegerToSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/appsflyer/AppsFlyerLib;->access$1000(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1577
    return-void
.end method

.method protected attributionCallbackFailure(Ljava/lang/String;I)V
    .locals 5
    .param p1, "error"    # Ljava/lang/String;
    .param p2, "responseCode"    # I

    .prologue
    const/4 v4, 0x0

    .line 1580
    # getter for: Lcom/appsflyer/AppsFlyerLib;->conversionDataListener:Lcom/appsflyer/AppsFlyerConversionListener;
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->access$800()Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/appsflyer/AppsFlyerConversionListener;->onInstallConversionFailure(Ljava/lang/String;)V

    .line 1582
    const/16 v2, 0x190

    if-lt p2, v2, :cond_0

    const/16 v2, 0x1f4

    if-ge p2, v2, :cond_0

    .line 1583
    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLib$InstallAttributionIdFetcher;->ctxReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-string v3, "appsflyer-data"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1584
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "appsflyerConversionDataRequestRetries"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1585
    .local v0, "retries":I
    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLib$InstallAttributionIdFetcher;->ctxReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-string v3, "appsflyerConversionDataRequestRetries"

    add-int/lit8 v0, v0, 0x1

    # invokes: Lcom/appsflyer/AppsFlyerLib;->saveIntegerToSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V
    invoke-static {v2, v3, v0}, Lcom/appsflyer/AppsFlyerLib;->access$1000(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1588
    .end local v0    # "retries":I
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1570
    const-string v0, "https://api.appsflyer.com/install_data/v3/"

    return-object v0
.end method
