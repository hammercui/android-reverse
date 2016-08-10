.class Lcom/junerking/archery/PurchaseHelper$2;
.super Ljava/lang/Object;
.source "PurchaseHelper.java"

# interfaces
.implements Lcom/doodlemobile/gamecenter/billing/util/IabHelper$OnIabPurchaseFinishedListener;


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
    .line 93
    iput-object p1, p0, Lcom/junerking/archery/PurchaseHelper$2;->this$0:Lcom/junerking/archery/PurchaseHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/doodlemobile/gamecenter/billing/util/IabResult;Lcom/doodlemobile/gamecenter/billing/util/Purchase;)V
    .locals 2
    .param p1, "result"    # Lcom/doodlemobile/gamecenter/billing/util/IabResult;
    .param p2, "purchase"    # Lcom/doodlemobile/gamecenter/billing/util/Purchase;

    .prologue
    .line 95
    const-string v0, "=== on purchase finished!"

    invoke-static {v0}, Lcom/junerking/archery/LogUtils;->out(Ljava/lang/String;)V

    .line 96
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/doodlemobile/gamecenter/billing/util/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/junerking/archery/PurchaseHelper$2;->this$0:Lcom/junerking/archery/PurchaseHelper;

    # getter for: Lcom/junerking/archery/PurchaseHelper;->mIabHelper:Lcom/doodlemobile/gamecenter/billing/util/IabHelper;
    invoke-static {v0}, Lcom/junerking/archery/PurchaseHelper;->access$100(Lcom/junerking/archery/PurchaseHelper;)Lcom/doodlemobile/gamecenter/billing/util/IabHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/junerking/archery/PurchaseHelper$2;->this$0:Lcom/junerking/archery/PurchaseHelper;

    # getter for: Lcom/junerking/archery/PurchaseHelper;->mConsumeFinishedListener:Lcom/doodlemobile/gamecenter/billing/util/IabHelper$OnConsumeFinishedListener;
    invoke-static {v1}, Lcom/junerking/archery/PurchaseHelper;->access$200(Lcom/junerking/archery/PurchaseHelper;)Lcom/doodlemobile/gamecenter/billing/util/IabHelper$OnConsumeFinishedListener;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/doodlemobile/gamecenter/billing/util/IabHelper;->consumeAsync(Lcom/doodlemobile/gamecenter/billing/util/Purchase;Lcom/doodlemobile/gamecenter/billing/util/IabHelper$OnConsumeFinishedListener;)V

    goto :goto_0
.end method
