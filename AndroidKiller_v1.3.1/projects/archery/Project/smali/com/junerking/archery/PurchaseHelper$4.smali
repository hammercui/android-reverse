.class Lcom/junerking/archery/PurchaseHelper$4;
.super Ljava/lang/Object;
.source "PurchaseHelper.java"

# interfaces
.implements Lcom/doodlemobile/gamecenter/billing/util/IabHelper$QueryInventoryFinishedListener;


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
    .line 135
    iput-object p1, p0, Lcom/junerking/archery/PurchaseHelper$4;->this$0:Lcom/junerking/archery/PurchaseHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/doodlemobile/gamecenter/billing/util/IabResult;Lcom/doodlemobile/gamecenter/billing/util/Inventory;)V
    .locals 4
    .param p1, "result"    # Lcom/doodlemobile/gamecenter/billing/util/IabResult;
    .param p2, "inventory"    # Lcom/doodlemobile/gamecenter/billing/util/Inventory;

    .prologue
    .line 137
    const-string v1, "=== on query inventory finished!"

    invoke-static {v1}, Lcom/junerking/archery/LogUtils;->out(Ljava/lang/String;)V

    .line 138
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/doodlemobile/gamecenter/billing/util/IabResult;->isFailure()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/junerking/archery/PurchaseHelper;->coin_ids:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 140
    sget-object v1, Lcom/junerking/archery/PurchaseHelper;->coin_ids:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Lcom/doodlemobile/gamecenter/billing/util/Inventory;->hasPurchase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 143
    iget-object v1, p0, Lcom/junerking/archery/PurchaseHelper$4;->this$0:Lcom/junerking/archery/PurchaseHelper;

    # getter for: Lcom/junerking/archery/PurchaseHelper;->mIabHelper:Lcom/doodlemobile/gamecenter/billing/util/IabHelper;
    invoke-static {v1}, Lcom/junerking/archery/PurchaseHelper;->access$100(Lcom/junerking/archery/PurchaseHelper;)Lcom/doodlemobile/gamecenter/billing/util/IabHelper;

    move-result-object v1

    sget-object v2, Lcom/junerking/archery/PurchaseHelper;->coin_ids:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p2, v2}, Lcom/doodlemobile/gamecenter/billing/util/Inventory;->getPurchase(Ljava/lang/String;)Lcom/doodlemobile/gamecenter/billing/util/Purchase;

    move-result-object v2

    iget-object v3, p0, Lcom/junerking/archery/PurchaseHelper$4;->this$0:Lcom/junerking/archery/PurchaseHelper;

    # getter for: Lcom/junerking/archery/PurchaseHelper;->mConsumeFinishedListener:Lcom/doodlemobile/gamecenter/billing/util/IabHelper$OnConsumeFinishedListener;
    invoke-static {v3}, Lcom/junerking/archery/PurchaseHelper;->access$200(Lcom/junerking/archery/PurchaseHelper;)Lcom/doodlemobile/gamecenter/billing/util/IabHelper$OnConsumeFinishedListener;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/doodlemobile/gamecenter/billing/util/IabHelper;->consumeAsync(Lcom/doodlemobile/gamecenter/billing/util/Purchase;Lcom/doodlemobile/gamecenter/billing/util/IabHelper$OnConsumeFinishedListener;)V

    goto :goto_0

    .line 139
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
