.class final Lcom/threatmetrix/TrustDefenderMobile/HttpGet$1;
.super Ljava/lang/Object;
.source "HttpGet.java"

# interfaces
.implements Lcom/turbomanage/httpclient/RequestLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/threatmetrix/TrustDefenderMobile/HttpGet;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/threatmetrix/TrustDefenderMobile/HttpGet;


# direct methods
.method constructor <init>(Lcom/threatmetrix/TrustDefenderMobile/HttpGet;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/HttpGet$1;->this$0:Lcom/threatmetrix/TrustDefenderMobile/HttpGet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isLoggingEnabled()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public final log(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 64
    return-void
.end method

.method public final logRequest(Ljava/net/HttpURLConnection;Ljava/lang/Object;)V
    .locals 0
    .param p1, "urlConnection"    # Ljava/net/HttpURLConnection;
    .param p2, "content"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    return-void
.end method

.method public final logResponse(Lcom/turbomanage/httpclient/HttpResponse;)V
    .locals 0
    .param p1, "httpResponse"    # Lcom/turbomanage/httpclient/HttpResponse;

    .prologue
    .line 73
    return-void
.end method
