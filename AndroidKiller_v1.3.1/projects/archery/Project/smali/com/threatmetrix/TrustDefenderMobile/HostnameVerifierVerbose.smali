.class public Lcom/threatmetrix/TrustDefenderMobile/HostnameVerifierVerbose;
.super Ljava/lang/Object;
.source "HostnameVerifierVerbose.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field private requestHandler:Lcom/threatmetrix/TrustDefenderMobile/RequestHandlerError;


# direct methods
.method public constructor <init>(Lcom/threatmetrix/TrustDefenderMobile/RequestHandlerError;)V
    .locals 0
    .param p1, "requestHandlerError"    # Lcom/threatmetrix/TrustDefenderMobile/RequestHandlerError;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/HostnameVerifierVerbose;->requestHandler:Lcom/threatmetrix/TrustDefenderMobile/RequestHandlerError;

    .line 17
    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 2
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "session"    # Ljavax/net/ssl/SSLSession;

    .prologue
    const/4 v0, 0x1

    .line 22
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 24
    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/HostnameVerifierVerbose;->requestHandler:Lcom/threatmetrix/TrustDefenderMobile/RequestHandlerError;

    iput-boolean v0, v1, Lcom/threatmetrix/TrustDefenderMobile/RequestHandlerError;->m_verification_error:Z

    .line 25
    const/4 v0, 0x0

    .line 28
    :cond_0
    return v0
.end method
