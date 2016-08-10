.class public Lcom/threatmetrix/TrustDefenderMobile/WebChromeWrapper;
.super Landroid/webkit/WebChromeClient;
.source "WebChromeWrapper.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;


# direct methods
.method public constructor <init>(Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;)V
    .locals 1
    .param p1, "m_jsInterface"    # Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 14
    const-class v0, Lcom/threatmetrix/TrustDefenderMobile/WebChromeWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/WebChromeWrapper;->TAG:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/WebChromeWrapper;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    .line 19
    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/WebChromeWrapper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onJsAlert() -"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/WebChromeWrapper;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    invoke-virtual {v0, p3}, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->getString(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    .line 27
    const/4 v0, 0x1

    return v0
.end method
