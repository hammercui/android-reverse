.class public Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;
.super Ljava/lang/Object;
.source "JSExecutor.java"


# static fields
.field private static final m_evaluateJavascript:Ljava/lang/reflect/Method;

.field private static final m_getDefaultUserAgent:Ljava/lang/reflect/Method;

.field private static final m_setPluginState:Ljava/lang/reflect/Method;

.field private static final webkitVersions:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private javascriptInterfaceBroken:Z

.field private final jsInterfaceName:Ljava/lang/String;

.field private m_inited:Z

.field private m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

.field private m_webSettings:Landroid/webkit/WebSettings;

.field private m_webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 44
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/Class;

    .line 45
    .local v0, "cArg":[Ljava/lang/Class;
    const-class v4, Ljava/lang/String;

    aput-object v4, v0, v6

    .line 46
    const-class v4, Landroid/webkit/ValueCallback;

    aput-object v4, v0, v7

    .line 47
    const/4 v3, 0x0

    .line 50
    .local v3, "temp":Ljava/lang/reflect/Method;
    :try_start_0
    const-class v4, Landroid/webkit/WebView;

    const-string v5, "evaluateJavascript"

    invoke-virtual {v4, v5, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 56
    :goto_0
    sput-object v3, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_evaluateJavascript:Ljava/lang/reflect/Method;

    .line 59
    new-array v1, v7, [Ljava/lang/Class;

    .line 60
    .local v1, "cArg2":[Ljava/lang/Class;
    const-class v4, Landroid/content/Context;

    aput-object v4, v0, v6

    .line 62
    const/4 v3, 0x0

    .line 65
    :try_start_1
    const-class v4, Landroid/webkit/WebSettings;

    const-string v5, "getDefaultUserAgent"

    invoke-virtual {v4, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 71
    :goto_1
    sput-object v3, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_getDefaultUserAgent:Ljava/lang/reflect/Method;

    .line 74
    new-array v2, v7, [Ljava/lang/Class;

    .line 75
    .local v2, "cArg3":[Ljava/lang/Class;
    const-class v4, Landroid/webkit/WebSettings$RenderPriority;

    aput-object v4, v0, v6

    .line 77
    const/4 v3, 0x0

    .line 80
    :try_start_2
    const-class v4, Landroid/webkit/WebSettings;

    const-string v5, "setPluginState"

    invoke-virtual {v4, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    .line 86
    :goto_2
    sput-object v3, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_setPluginState:Ljava/lang/reflect/Method;

    .line 88
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 90
    sput-object v4, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->webkitVersions:Ljava/util/TreeMap;

    const/16 v5, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "533.1"

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->webkitVersions:Ljava/util/TreeMap;

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "533.1"

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->webkitVersions:Ljava/util/TreeMap;

    const/16 v5, 0xb

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "533.1"

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->webkitVersions:Ljava/util/TreeMap;

    const/16 v5, 0xc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "533.1"

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->webkitVersions:Ljava/util/TreeMap;

    const/16 v5, 0xd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "534.13"

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->webkitVersions:Ljava/util/TreeMap;

    const/16 v5, 0xe

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "534.30"

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->webkitVersions:Ljava/util/TreeMap;

    const/16 v5, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "534.30"

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->webkitVersions:Ljava/util/TreeMap;

    const/16 v5, 0x10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "534.30"

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->webkitVersions:Ljava/util/TreeMap;

    const/16 v5, 0x11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "534.30"

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->webkitVersions:Ljava/util/TreeMap;

    const/16 v5, 0x12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "534.30"

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-void

    :catch_0
    move-exception v4

    goto/16 :goto_2

    .end local v2    # "cArg3":[Ljava/lang/Class;
    :catch_1
    move-exception v4

    goto/16 :goto_1

    .end local v1    # "cArg2":[Ljava/lang/Class;
    :catch_2
    move-exception v4

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "jsInterface"    # Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;
    .param p3, "needWebView"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_webView:Landroid/webkit/WebView;

    .line 27
    iput-boolean v3, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_inited:Z

    .line 28
    iput-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    .line 33
    const-string v2, "androidJSInterface"

    iput-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->jsInterfaceName:Ljava/lang/String;

    .line 34
    const-class v2, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    .line 35
    iput-boolean v3, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->javascriptInterfaceBroken:Z

    .line 196
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JSExecutor() Build: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-static {}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->isBrokenJSInterface()Z

    move-result v2

    iput-boolean v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->javascriptInterfaceBroken:Z

    .line 200
    iput-object p2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    .line 202
    if-eqz p3, :cond_3

    .line 204
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_webView:Landroid/webkit/WebView;

    .line 205
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    if-nez v2, :cond_0

    .line 206
    new-instance v2, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    invoke-direct {v2, v4}, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    iput-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    .line 207
    :cond_0
    new-instance v1, Landroid/webkit/WebViewClient;

    invoke-direct {v1}, Landroid/webkit/WebViewClient;-><init>()V

    .line 209
    .local v1, "m_webViewClient":Landroid/webkit/WebViewClient;
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    iput-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_webSettings:Landroid/webkit/WebSettings;

    .line 211
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 214
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_setPluginState:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    .line 218
    :try_start_0
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_setPluginState:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_webSettings:Landroid/webkit/WebSettings;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 234
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_webView:Landroid/webkit/WebView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 235
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 238
    invoke-static {}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->hasAsyncInterface()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 241
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    iget-object v2, v2, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->latch:Ljava/util/concurrent/CountDownLatch;

    if-nez v2, :cond_2

    .line 242
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    const-string v3, "alternate JS interface but no global latch"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_2
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    .line 257
    .end local v1    # "m_webViewClient":Landroid/webkit/WebViewClient;
    :cond_3
    :goto_1
    return-void

    .line 220
    .restart local v1    # "m_webViewClient":Landroid/webkit/WebViewClient;
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/IllegalAccessException;
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    const-string v3, "m_setPluginState invoke failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 224
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    const-string v3, "m_setPluginState invoke failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 228
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    const-string v3, "m_setPluginState invoke failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 245
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_4
    iget-boolean v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->javascriptInterfaceBroken:Z

    if-nez v2, :cond_5

    .line 247
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_webView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    const-string v4, "androidJSInterface"

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 251
    :cond_5
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    iget-object v2, v2, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->latch:Ljava/util/concurrent/CountDownLatch;

    if-nez v2, :cond_6

    .line 252
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    const-string v3, "broken JS interface but no global latch"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_6
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    .line 254
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/threatmetrix/TrustDefenderMobile/WebChromeWrapper;

    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    invoke-direct {v3, v4}, Lcom/threatmetrix/TrustDefenderMobile/WebChromeWrapper;-><init>(Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    goto :goto_1
.end method

.method public static hasAsyncInterface()Z
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_evaluateJavascript:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBrokenJSInterface()Z
    .locals 2

    .prologue
    .line 111
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "2.3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 117
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getJSResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "js"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 325
    iget-boolean v5, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_inited:Z

    if-nez v5, :cond_1

    .line 414
    :cond_0
    :goto_0
    return-object v4

    .line 327
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v4, ""

    goto :goto_0

    .line 329
    :cond_2
    const/4 v3, 0x0

    .line 330
    .local v3, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-boolean v5, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->javascriptInterfaceBroken:Z

    if-nez v5, :cond_3

    invoke-static {}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->hasAsyncInterface()Z

    move-result v5

    if-nez v5, :cond_3

    .line 336
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    .end local v3    # "latch":Ljava/util/concurrent/CountDownLatch;
    invoke-direct {v3, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 337
    .restart local v3    # "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    invoke-virtual {v5, v3}, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->setLatch(Ljava/util/concurrent/CountDownLatch;)V

    .line 340
    :cond_3
    invoke-static {}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->hasAsyncInterface()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 341
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "javascript:(function(){try{return "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " + \"\";}catch(js_eval_err){return \'\';}})();"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 347
    .local v1, "fullJS":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getJSResult() attempting to execute: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    iput-object v4, v5, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->returnedValue:Ljava/lang/String;

    .line 351
    invoke-static {}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->hasAsyncInterface()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 353
    const/4 v2, 0x0

    .line 356
    .local v2, "invokationFailed":Z
    :try_start_0
    sget-object v5, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_evaluateJavascript:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_webView:Landroid/webkit/WebView;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 374
    :goto_2
    if-eqz v2, :cond_4

    .line 377
    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    iget-object v5, v5, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v5, :cond_4

    .line 379
    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    iget-object v5, v5, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 387
    .end local v2    # "invokationFailed":Z
    :cond_4
    :goto_3
    iget-boolean v5, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->javascriptInterfaceBroken:Z

    if-nez v5, :cond_0

    invoke-static {}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->hasAsyncInterface()Z

    move-result v5

    if-nez v5, :cond_0

    .line 390
    if-eqz v3, :cond_9

    .line 392
    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 394
    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    .line 396
    :cond_5
    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getJSResult() count = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 403
    :goto_4
    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    iget-object v4, v4, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->returnedValue:Ljava/lang/String;

    if-nez v4, :cond_a

    .line 405
    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    .line 412
    :goto_5
    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    iget-object v4, v4, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->returnedValue:Ljava/lang/String;

    goto/16 :goto_0

    .line 342
    .end local v1    # "fullJS":Ljava/lang/String;
    :cond_6
    iget-boolean v5, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->javascriptInterfaceBroken:Z

    if-nez v5, :cond_7

    .line 343
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "javascript:window.androidJSInterface.getString((function(){try{return "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " + \"\";}catch(js_eval_err){return \'\';}})());"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "fullJS":Ljava/lang/String;
    goto/16 :goto_1

    .line 345
    .end local v1    # "fullJS":Ljava/lang/String;
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "javascript:alert((function(){try{return "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " + \"\";}catch(js_eval_err){return \'\';}})());"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "fullJS":Ljava/lang/String;
    goto/16 :goto_1

    .line 358
    .restart local v2    # "invokationFailed":Z
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Ljava/lang/IllegalAccessException;
    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    const-string v6, "getJSResult() invoke failed: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 361
    const/4 v2, 0x1

    .line 372
    goto :goto_2

    .line 363
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 365
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    const-string v6, "getJSResult() invoke failed: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    const/4 v2, 0x1

    .line 372
    goto/16 :goto_2

    .line 368
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 370
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    const-string v6, "getJSResult() invoke failed: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 371
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 385
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v2    # "invokationFailed":Z
    :cond_8
    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_webView:Landroid/webkit/WebView;

    invoke-virtual {v5, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 400
    :cond_9
    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    const-string v5, "latch == null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 409
    :cond_a
    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getJSResult() After latch: got "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    iget-object v5, v5, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->returnedValue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5
.end method

.method public getUserAgentString(ZLandroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p1, "useWebView"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    const-string v4, ""

    .line 124
    .local v4, "userAgent":Ljava/lang/String;
    sget-object v7, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_getDefaultUserAgent:Ljava/lang/reflect/Method;

    if-eqz v7, :cond_0

    .line 127
    :try_start_0
    sget-object v7, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_getDefaultUserAgent:Ljava/lang/reflect/Method;

    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p2, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 145
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    move-object v5, v4

    .line 186
    .end local v4    # "userAgent":Ljava/lang/String;
    .local v5, "userAgent":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 132
    .end local v5    # "userAgent":Ljava/lang/String;
    .restart local v4    # "userAgent":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 134
    .local v2, "e":Ljava/lang/IllegalAccessException;
    iget-object v7, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    const-string v8, "getJSResult() invoke failed: "

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 137
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    .line 139
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    iget-object v7, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    const-string v8, "getJSResult() invoke failed: "

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 142
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    .line 144
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    iget-object v7, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    const-string v8, "getJSResult() invoke failed: "

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 152
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_1
    if-eqz p1, :cond_2

    iget-object v7, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_webSettings:Landroid/webkit/WebSettings;

    if-eqz v7, :cond_2

    .line 154
    iget-object v7, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_webSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v7}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v4

    .line 157
    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    move-object v5, v4

    .line 158
    .end local v4    # "userAgent":Ljava/lang/String;
    .restart local v5    # "userAgent":Ljava/lang/String;
    goto :goto_1

    .line 161
    .end local v5    # "userAgent":Ljava/lang/String;
    .restart local v4    # "userAgent":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    .line 165
    sget-object v7, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->webkitVersions:Ljava/util/TreeMap;

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 167
    sget-object v7, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->webkitVersions:Ljava/util/TreeMap;

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 174
    .local v6, "webkitVersion":Ljava/lang/String;
    :goto_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 175
    .local v3, "lang":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "country":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 177
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 179
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Mozilla/5.0 (Linux; U; Android "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Build/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") AppleWebKit/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (KHTML, like Gecko) Version/4.0 Mobile Safari/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->version:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .line 186
    .end local v4    # "userAgent":Ljava/lang/String;
    .restart local v5    # "userAgent":Ljava/lang/String;
    goto/16 :goto_1

    .line 171
    .end local v1    # "country":Ljava/lang/String;
    .end local v3    # "lang":Ljava/lang/String;
    .end local v5    # "userAgent":Ljava/lang/String;
    .end local v6    # "webkitVersion":Ljava/lang/String;
    .restart local v4    # "userAgent":Ljava/lang/String;
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->webkitVersions:Ljava/util/TreeMap;

    invoke-virtual {v7}, Ljava/util/TreeMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "webkitVersion":Ljava/lang/String;
    goto/16 :goto_2
.end method

.method public init()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 263
    iget-boolean v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_inited:Z

    if-nez v2, :cond_0

    .line 265
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_webView:Landroid/webkit/WebView;

    if-nez v2, :cond_1

    .line 268
    iput-boolean v5, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_inited:Z

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    .line 274
    const/4 v1, 0x0

    .line 278
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-boolean v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->javascriptInterfaceBroken:Z

    if-nez v2, :cond_2

    invoke-static {}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->hasAsyncInterface()Z

    move-result v2

    if-nez v2, :cond_2

    .line 280
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    .end local v1    # "latch":Ljava/util/concurrent/CountDownLatch;
    invoke-direct {v1, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 281
    .restart local v1    # "latch":Ljava/util/concurrent/CountDownLatch;
    const-string v0, "<html><head></head><body onLoad=\'javascript:window.androidJSInterface.getString(1)\'></body></html>"

    .line 282
    .local v0, "html":Ljava/lang/String;
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    invoke-virtual {v2, v1}, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->setLatch(Ljava/util/concurrent/CountDownLatch;)V

    .line 283
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    iput-object v4, v2, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->returnedValue:Ljava/lang/String;

    .line 289
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 291
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_webView:Landroid/webkit/WebView;

    const-string v3, "text/html"

    invoke-virtual {v2, v0, v3, v4}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-boolean v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->javascriptInterfaceBroken:Z

    if-nez v2, :cond_5

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->hasAsyncInterface()Z

    move-result v2

    if-nez v2, :cond_5

    .line 296
    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 298
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    const-string v3, "timed out waiting for javascript"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 286
    .end local v0    # "html":Ljava/lang/String;
    :cond_2
    const-string v0, "<html><head></head><body></body></html>"

    .restart local v0    # "html":Ljava/lang/String;
    goto :goto_1

    .line 302
    :cond_3
    iput-boolean v5, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_inited:Z

    .line 303
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "in init() count = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 305
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    iget-object v2, v2, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->returnedValue:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 307
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    goto :goto_0

    .line 311
    :cond_4
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "init() After latch: got "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    iget-object v3, v3, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->returnedValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 317
    :cond_5
    iput-boolean v5, p0, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->m_inited:Z

    goto :goto_0
.end method
