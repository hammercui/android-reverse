.class public Lcom/threatmetrix/TrustDefenderMobile/RequestHandlerError;
.super Lcom/turbomanage/httpclient/BasicRequestHandler;
.source "RequestHandlerError.java"


# instance fields
.field public m_verification_error:Z

.field public statusCode:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

.field v:Lcom/threatmetrix/TrustDefenderMobile/HostnameVerifierVerbose;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/turbomanage/httpclient/BasicRequestHandler;-><init>()V

    .line 21
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_OK:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/RequestHandlerError;->statusCode:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threatmetrix/TrustDefenderMobile/RequestHandlerError;->m_verification_error:Z

    .line 23
    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/HostnameVerifierVerbose;

    invoke-direct {v0, p0}, Lcom/threatmetrix/TrustDefenderMobile/HostnameVerifierVerbose;-><init>(Lcom/threatmetrix/TrustDefenderMobile/RequestHandlerError;)V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/RequestHandlerError;->v:Lcom/threatmetrix/TrustDefenderMobile/HostnameVerifierVerbose;

    .line 28
    return-void
.end method


# virtual methods
.method public onError(Lcom/turbomanage/httpclient/HttpRequestException;)Z
    .locals 3
    .param p1, "e"    # Lcom/turbomanage/httpclient/HttpRequestException;

    .prologue
    .line 48
    invoke-virtual {p1}, Lcom/turbomanage/httpclient/HttpRequestException;->getHttpResponse()Lcom/turbomanage/httpclient/HttpResponse;

    move-result-object v0

    .line 49
    .local v0, "res":Lcom/turbomanage/httpclient/HttpResponse;
    invoke-virtual {p1}, Lcom/turbomanage/httpclient/HttpRequestException;->printStackTrace()V

    .line 50
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Lcom/turbomanage/httpclient/HttpResponse;->getStatus()I

    move-result v1

    .line 52
    .local v1, "status":I
    if-lez v1, :cond_0

    .line 54
    const/4 v2, 0x1

    .line 74
    .end local v1    # "status":I
    :goto_0
    return v2

    .line 58
    :cond_0
    iget-boolean v2, p0, Lcom/threatmetrix/TrustDefenderMobile/RequestHandlerError;->m_verification_error:Z

    if-eqz v2, :cond_1

    .line 60
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_HostVerification_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    iput-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/RequestHandlerError;->statusCode:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    .line 74
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p1}, Lcom/turbomanage/httpclient/HttpRequestException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/net/UnknownHostException;

    if-eqz v2, :cond_2

    .line 64
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_HostNotFound_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    iput-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/RequestHandlerError;->statusCode:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    goto :goto_1

    .line 66
    :cond_2
    invoke-virtual {p1}, Lcom/turbomanage/httpclient/HttpRequestException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/net/SocketTimeoutException;

    if-eqz v2, :cond_3

    .line 68
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_NetworkTimeout_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    iput-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/RequestHandlerError;->statusCode:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    goto :goto_1

    .line 72
    :cond_3
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_Connection_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    iput-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/RequestHandlerError;->statusCode:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    goto :goto_1
.end method

.method public openConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 4
    .param p1, "urlString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 34
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 36
    .local v1, "uc":Ljava/net/HttpURLConnection;
    instance-of v3, v1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 38
    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 40
    .local v0, "suc":Ljavax/net/ssl/HttpsURLConnection;
    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/RequestHandlerError;->v:Lcom/threatmetrix/TrustDefenderMobile/HostnameVerifierVerbose;

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 43
    .end local v0    # "suc":Ljavax/net/ssl/HttpsURLConnection;
    :cond_0
    return-object v1
.end method
