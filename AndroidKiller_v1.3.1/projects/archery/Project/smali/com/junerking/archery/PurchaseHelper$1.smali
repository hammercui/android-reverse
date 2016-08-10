.class Lcom/junerking/archery/PurchaseHelper$1;
.super Ljava/lang/Object;
.source "PurchaseHelper.java"

# interfaces
.implements Lcom/doodlemobile/gamecenter/billing/util/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/junerking/archery/PurchaseHelper;->createBilling()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/junerking/archery/PurchaseHelper;


# direct methods
.method constructor <init>(Lcom/junerking/archery/PurchaseHelper;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/junerking/archery/PurchaseHelper$1;->this$0:Lcom/junerking/archery/PurchaseHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/doodlemobile/gamecenter/billing/util/IabResult;)V
    .locals 2
    .param p1, "result"    # Lcom/doodlemobile/gamecenter/billing/util/IabResult;

    .prologue
    .line 85
    const-string v0, "==== on iabsetup finished!"

    invoke-static {v0}, Lcom/junerking/archery/LogUtils;->out(Ljava/lang/String;)V

    .line 86
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/doodlemobile/gamecenter/billing/util/IabResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/junerking/archery/PurchaseHelper$1;->this$0:Lcom/junerking/archery/PurchaseHelper;

    # getter for: Lcom/junerking/archery/PurchaseHelper;->mIabHelper:Lcom/doodlemobile/gamecenter/billing/util/IabHelper;
    invoke-static {v0}, Lcom/junerking/archery/PurchaseHelper;->access$100(Lcom/junerking/archery/PurchaseHelper;)Lcom/doodlemobile/gamecenter/billing/util/IabHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/junerking/archery/PurchaseHelper$1;->this$0:Lcom/junerking/archery/PurchaseHelper;

    # getter for: Lcom/junerking/archery/PurchaseHelper;->mGotInventoryListener:Lcom/doodlemobile/gamecenter/billing/util/IabHelper$QueryInventoryFinishedListener;
    invoke-static {v1}, Lcom/junerking/archery/PurchaseHelper;->access$000(Lcom/junerking/archery/PurchaseHelper;)Lcom/doodlemobile/gamecenter/billing/util/IabHelper$QueryInventoryFinishedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/billing/util/IabHelper;->queryInventoryAsync(Lcom/doodlemobile/gamecenter/billing/util/IabHelper$QueryInventoryFinishedListener;)V

    goto :goto_0
.end method
