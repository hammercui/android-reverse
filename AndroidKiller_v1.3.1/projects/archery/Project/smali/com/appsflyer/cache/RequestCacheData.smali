.class public Lcom/appsflyer/cache/RequestCacheData;
.super Ljava/lang/Object;
.source "RequestCacheData.java"


# instance fields
.field private cacheKey:Ljava/lang/String;

.field private postData:Ljava/lang/String;

.field private requestURL:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "postData"    # Ljava/lang/String;
    .param p3, "sdkBuildNumber"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/appsflyer/cache/RequestCacheData;->requestURL:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/appsflyer/cache/RequestCacheData;->postData:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/appsflyer/cache/RequestCacheData;->version:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>([C)V
    .locals 3
    .param p1, "chars"    # [C

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v1, Ljava/util/Scanner;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v1, v2}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 27
    .local v1, "scanner":Ljava/util/Scanner;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 28
    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "line":Ljava/lang/String;
    const-string v2, "url="

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    const-string v2, "url="

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/appsflyer/cache/RequestCacheData;->requestURL:Ljava/lang/String;

    goto :goto_0

    .line 31
    :cond_1
    const-string v2, "version="

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 32
    const-string v2, "version="

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/appsflyer/cache/RequestCacheData;->version:Ljava/lang/String;

    goto :goto_0

    .line 33
    :cond_2
    const-string v2, "data="

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    const-string v2, "data="

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/appsflyer/cache/RequestCacheData;->postData:Ljava/lang/String;

    goto :goto_0

    .line 37
    .end local v0    # "line":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    .line 38
    return-void
.end method


# virtual methods
.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/appsflyer/cache/RequestCacheData;->cacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPostData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/appsflyer/cache/RequestCacheData;->postData:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/appsflyer/cache/RequestCacheData;->requestURL:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/appsflyer/cache/RequestCacheData;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setCacheKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "cacheKey"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/appsflyer/cache/RequestCacheData;->cacheKey:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setPostData(Ljava/lang/String;)V
    .locals 0
    .param p1, "postData"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/appsflyer/cache/RequestCacheData;->postData:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setRequestURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestURL"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/appsflyer/cache/RequestCacheData;->requestURL:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/appsflyer/cache/RequestCacheData;->version:Ljava/lang/String;

    .line 46
    return-void
.end method
