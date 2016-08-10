.class public Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;
.super Ljava/lang/Object;
.source "JavaScriptInterface.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field latch:Ljava/util/concurrent/CountDownLatch;

.field public returnedValue:Ljava/lang/String;

.field public returnedValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 1
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->returnedValues:Ljava/util/ArrayList;

    .line 18
    const-class v0, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->TAG:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 24
    return-void
.end method

.method private callback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    .line 37
    .line 38
    move-object v2, p1

    .local v2, "log_message":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 40
    const-string v2, "null"

    .line 42
    :cond_0
    const-wide/16 v0, 0x0

    .line 43
    .local v0, "count":J
    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    .line 45
    :cond_1
    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "in "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 46
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->returnedValue:Ljava/lang/String;

    .line 48
    if-nez p1, :cond_2

    .line 49
    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->returnedValues:Ljava/util/ArrayList;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    :goto_0
    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v3, :cond_3

    .line 55
    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 56
    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "in "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "() count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 63
    :goto_1
    return-void

    .line 51
    :cond_2
    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->returnedValues:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    :cond_3
    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "in "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "() latch == null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public getString(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 68
    const-string v0, "getString"

    invoke-direct {p0, p1, v0}, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 13
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 76
    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "\"\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    const-string p1, ""

    .line 87
    :cond_0
    :goto_0
    const-string v0, "onReceiveValue"

    invoke-direct {p0, p1, v0}, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->callback(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void

    .line 82
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 84
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public setLatch(Ljava/util/concurrent/CountDownLatch;)V
    .locals 1
    .param p1, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->TAG:Ljava/lang/String;

    .line 32
    :cond_0
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 33
    return-void
.end method
