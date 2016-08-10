.class final Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1;
.super Lcom/threatmetrix/TrustDefenderMobile/CompleteProfile;
.source "TrustDefenderMobile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->completeProfileRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;


# direct methods
.method constructor <init>(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p2, "x0"    # Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;
    .param p3, "x1"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 1240
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1;->this$0:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    invoke-direct {p0, p2, p3}, Lcom/threatmetrix/TrustDefenderMobile/CompleteProfile;-><init>(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1;->profile:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    # getter for: Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cancel:Z
    invoke-static {v0}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->access$000(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1248
    :try_start_0
    # getter for: Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->access$100()Ljava/lang/String;

    .line 1249
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1;->profile:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1;->this$0:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    # getter for: Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_context:Landroid/content/Context;
    invoke-static {v1}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->access$200(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1;->profile:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    # getter for: Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;
    invoke-static {v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->access$300(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;)Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    move-result-object v2

    # invokes: Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->getBrowserInfo(Landroid/content/Context;Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;)V
    invoke-static {v0, v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->access$400(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;Landroid/content/Context;Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;)V

    .line 1250
    # getter for: Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->access$100()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "status = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1;->profile:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->getStatus()Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1257
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1;->latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_1

    .line 1259
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1261
    :cond_1
    return-void

    .line 1254
    :catch_0
    move-exception v0

    # getter for: Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->access$100()Ljava/lang/String;

    goto :goto_0
.end method
