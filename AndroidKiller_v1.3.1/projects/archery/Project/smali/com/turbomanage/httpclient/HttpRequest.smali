.class public abstract Lcom/turbomanage/httpclient/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# static fields
.field public static final MULTIPART:Ljava/lang/String; = "multipart/form-data"

.field public static final URLENCODED:Ljava/lang/String; = "application/x-www-form-urlencoded;charset=UTF-8"


# instance fields
.field protected content:[B

.field protected contentType:Ljava/lang/String;

.field protected httpMethod:Lcom/turbomanage/httpclient/HttpMethod;

.field protected path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/turbomanage/httpclient/ParameterMap;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/turbomanage/httpclient/ParameterMap;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v1, ""

    iput-object v1, p0, Lcom/turbomanage/httpclient/HttpRequest;->path:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    .line 27
    .local v0, "queryString":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 28
    iput-object p1, p0, Lcom/turbomanage/httpclient/HttpRequest;->path:Ljava/lang/String;

    .line 30
    :cond_0
    if-eqz p2, :cond_1

    .line 31
    invoke-virtual {p2}, Lcom/turbomanage/httpclient/ParameterMap;->urlEncode()Ljava/lang/String;

    move-result-object v0

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/turbomanage/httpclient/HttpRequest;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/turbomanage/httpclient/HttpRequest;->path:Ljava/lang/String;

    .line 34
    :cond_1
    return-void
.end method


# virtual methods
.method public getContent()[B
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/turbomanage/httpclient/HttpRequest;->content:[B

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/turbomanage/httpclient/HttpRequest;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpMethod()Lcom/turbomanage/httpclient/HttpMethod;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/turbomanage/httpclient/HttpRequest;->httpMethod:Lcom/turbomanage/httpclient/HttpMethod;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/turbomanage/httpclient/HttpRequest;->path:Ljava/lang/String;

    return-object v0
.end method
