.class public Lcom/threatmetrix/TrustDefenderMobile/CompleteProfile;
.super Ljava/lang/Object;
.source "CompleteProfile.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field latch:Ljava/util/concurrent/CountDownLatch;

.field profile:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;


# direct methods
.method public constructor <init>(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;Ljava/util/concurrent/CountDownLatch;)V
    .locals 1
    .param p1, "profile"    # Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;
    .param p2, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/CompleteProfile;->profile:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    .line 12
    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/CompleteProfile;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 17
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/CompleteProfile;->profile:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    .line 18
    iput-object p2, p0, Lcom/threatmetrix/TrustDefenderMobile/CompleteProfile;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 19
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/CompleteProfile;->profile:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->completeProfileRequest()V

    .line 24
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/CompleteProfile;->latch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/CompleteProfile;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 25
    :cond_0
    return-void
.end method
