.class public Lcom/turbomanage/httpclient/BasicHttpClient;
.super Lcom/turbomanage/httpclient/AbstractHttpClient;
.source "BasicHttpClient.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/turbomanage/httpclient/BasicHttpClient;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 35
    new-instance v0, Lcom/turbomanage/httpclient/BasicHttpClient$1;

    invoke-direct {v0}, Lcom/turbomanage/httpclient/BasicHttpClient$1;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/turbomanage/httpclient/BasicHttpClient;-><init>(Ljava/lang/String;Lcom/turbomanage/httpclient/RequestHandler;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/turbomanage/httpclient/RequestHandler;)V
    .locals 0
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "requestHandler"    # Lcom/turbomanage/httpclient/RequestHandler;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/turbomanage/httpclient/AbstractHttpClient;-><init>(Ljava/lang/String;Lcom/turbomanage/httpclient/RequestHandler;)V

    .line 47
    return-void
.end method
