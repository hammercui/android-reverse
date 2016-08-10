.class public Lcom/turbomanage/httpclient/android/AndroidHttpClient;
.super Lcom/turbomanage/httpclient/AsyncHttpClient;
.source "AndroidHttpClient.java"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/turbomanage/httpclient/android/AndroidHttpClient;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 62
    new-instance v0, Lcom/turbomanage/httpclient/android/AsyncTaskFactory;

    invoke-direct {v0}, Lcom/turbomanage/httpclient/android/AsyncTaskFactory;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/turbomanage/httpclient/AsyncHttpClient;-><init>(Lcom/turbomanage/httpclient/AsyncRequestExecutorFactory;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/turbomanage/httpclient/RequestHandler;)V
    .locals 1
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "requestHandler"    # Lcom/turbomanage/httpclient/RequestHandler;

    .prologue
    .line 72
    new-instance v0, Lcom/turbomanage/httpclient/android/AsyncTaskFactory;

    invoke-direct {v0}, Lcom/turbomanage/httpclient/android/AsyncTaskFactory;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lcom/turbomanage/httpclient/AsyncHttpClient;-><init>(Lcom/turbomanage/httpclient/AsyncRequestExecutorFactory;Ljava/lang/String;Lcom/turbomanage/httpclient/RequestHandler;)V

    .line 73
    return-void
.end method

.method private static disableConnectionReuseIfNecessary()V
    .locals 2

    .prologue
    .line 83
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 84
    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    :cond_0
    return-void
.end method
