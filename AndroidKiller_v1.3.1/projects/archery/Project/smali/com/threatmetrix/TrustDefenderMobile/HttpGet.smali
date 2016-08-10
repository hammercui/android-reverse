.class Lcom/threatmetrix/TrustDefenderMobile/HttpGet;
.super Ljava/lang/Object;
.source "HttpGet.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private host:Ljava/lang/String;

.field private params:Lcom/turbomanage/httpclient/ParameterMap;

.field private path:Ljava/lang/String;

.field requestHandler:Lcom/threatmetrix/TrustDefenderMobile/RequestHandlerError;

.field private scheme:Ljava/lang/String;

.field private sdk:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

.field private statusCode:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

.field private timeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/threatmetrix/TrustDefenderMobile/HttpGet;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/HttpGet;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/turbomanage/httpclient/ParameterMap;ILjava/util/Map;Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;)V
    .locals 1
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "params"    # Lcom/turbomanage/httpclient/ParameterMap;
    .param p5, "timeout"    # I
    .param p7, "sdk"    # Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/turbomanage/httpclient/ParameterMap;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    .local p6, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpGet;->requestHandler:Lcom/threatmetrix/TrustDefenderMobile/RequestHandlerError;

    .line 37
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpGet;->scheme:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpGet;->host:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpGet;->path:Ljava/lang/String;

    .line 40
    iput p5, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpGet;->timeout:I

    .line 41
    iput-object p4, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpGet;->params:Lcom/turbomanage/httpclient/ParameterMap;

    .line 42
    iput-object p6, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpGet;->headers:Ljava/util/Map;

    .line 43
    iput-object p7, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpGet;->sdk:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    .line 44
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_OK:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpGet;->statusCode:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    .line 45
    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/RequestHandlerError;

    invoke-direct {v0}, Lcom/threatmetrix/TrustDefenderMobile/RequestHandlerError;-><init>()V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpGet;->requestHandler:Lcom/threatmetrix/TrustDefenderMobile/RequestHandlerError;

    .line 46
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 51
    new-instance v0, Lcom/turbomanage/httpclient/android/AndroidHttpClient;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpGet;->scheme:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpGet;->host:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpGet;->requestHandler:Lcom/threatmetrix/TrustDefenderMobile/RequestHandlerError;

    invoke-direct {v0, v4, v5}, Lcom/turbomanage/httpclient/android/AndroidHttpClient;-><init>(Ljava/lang/String;Lcom/turbomanage/httpclient/RequestHandler;)V

    .line 54
    .local v0, "get":Lcom/turbomanage/httpclient/android/AndroidHttpClient;
    iget v4, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpGet;->timeout:I

    invoke-virtual {v0, v4}, Lcom/turbomanage/httpclient/android/AndroidHttpClient;->setConnectionTimeout(I)V

    .line 55
    iget v4, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpGet;->timeout:I

    invoke-virtual {v0, v4}, Lcom/turbomanage/httpclient/android/AndroidHttpClient;->setReadTimeout(I)V

    .line 56
    new-instance v4, Lcom/threatmetrix/TrustDefenderMobile/HttpGet$1;

    invoke-direct {v4, p0}, Lcom/threatmetrix/TrustDefenderMobile/HttpGet$1;-><init>(Lcom/threatmetrix/TrustDefenderMobile/HttpGet;)V

    invoke-virtual {v0, v4}, Lcom/turbomanage/httpclient/android/AndroidHttpClient;->setRequestLogger(Lcom/turbomanage/httpclient/RequestLogger;)V

    .line 77
    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpGet;->headers:Ljava/util/Map;

    if-eqz v4, :cond_0

    .line 79
    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpGet;->headers:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 81
    .local v3, "pairs":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/turbomanage/httpclient/android/AndroidHttpClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/turbomanage/httpclient/AbstractHttpClient;

    goto :goto_0

    .line 85
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "pairs":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpGet;->path:Ljava/lang/String;

    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpGet;->params:Lcom/turbomanage/httpclient/ParameterMap;

    invoke-virtual {v0, v4, v5}, Lcom/turbomanage/httpclient/android/AndroidHttpClient;->get(Ljava/lang/String;Lcom/turbomanage/httpclient/ParameterMap;)Lcom/turbomanage/httpclient/HttpResponse;

    move-result-object v1

    .line 86
    .local v1, "httpResp":Lcom/turbomanage/httpclient/HttpResponse;
    if-nez v1, :cond_2

    .line 88
    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpGet;->requestHandler:Lcom/threatmetrix/TrustDefenderMobile/RequestHandlerError;

    iget-object v4, v4, Lcom/threatmetrix/TrustDefenderMobile/RequestHandlerError;->statusCode:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    iput-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpGet;->statusCode:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    .line 89
    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/HttpGet;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "failed to retrieve from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpGet;->host:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpGet;->sdk:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    if-eqz v4, :cond_1

    .line 92
    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpGet;->sdk:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpGet;->statusCode:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    invoke-virtual {v4, v5}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->setStatus(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;)V

    .line 93
    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpGet;->sdk:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->interruptThreads()V

    .line 108
    :cond_1
    :goto_1
    return-void

    .line 98
    :cond_2
    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/HttpGet;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "retrieved: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/turbomanage/httpclient/HttpResponse;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v1}, Lcom/turbomanage/httpclient/HttpResponse;->getStatus()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_1

    .line 104
    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/HttpGet;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "error ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/turbomanage/httpclient/HttpResponse;->getStatus()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") status on request to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpGet;->scheme:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpGet;->host:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
