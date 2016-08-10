.class Lcom/doodlemobile/gamecenter/billing/Store$1;
.super Ljava/lang/Object;
.source "Store.java"

# interfaces
.implements Lcom/doodlemobile/gamecenter/billing/util/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/billing/Store;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/billing/Store;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/billing/Store;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/billing/Store$1;->this$0:Lcom/doodlemobile/gamecenter/billing/Store;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/doodlemobile/gamecenter/billing/util/IabResult;Lcom/doodlemobile/gamecenter/billing/util/Inventory;)V
    .locals 7
    .param p1, "result"    # Lcom/doodlemobile/gamecenter/billing/util/IabResult;
    .param p2, "inventory"    # Lcom/doodlemobile/gamecenter/billing/util/Inventory;

    .prologue
    .line 107
    const-string v3, "DoodleStore"

    const-string v4, "Query inventory finished."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v3, p0, Lcom/doodlemobile/gamecenter/billing/Store$1;->this$0:Lcom/doodlemobile/gamecenter/billing/Store;

    iget-object v3, v3, Lcom/doodlemobile/gamecenter/billing/Store;->mHelper:Lcom/doodlemobile/gamecenter/billing/util/IabHelper;

    if-nez v3, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    invoke-virtual {p1}, Lcom/doodlemobile/gamecenter/billing/util/IabResult;->isFailure()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 114
    const-string v3, "DoodleStore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to query inventory: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 118
    :cond_2
    const-string v3, "DoodleStore"

    const-string v4, "Query inventory was successful."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v3, p0, Lcom/doodlemobile/gamecenter/billing/Store$1;->this$0:Lcom/doodlemobile/gamecenter/billing/Store;

    # getter for: Lcom/doodlemobile/gamecenter/billing/Store;->goodsArray:[Lcom/doodlemobile/gamecenter/billing/Goods;
    invoke-static {v3}, Lcom/doodlemobile/gamecenter/billing/Store;->access$0(Lcom/doodlemobile/gamecenter/billing/Store;)[Lcom/doodlemobile/gamecenter/billing/Goods;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_0

    aget-object v1, v4, v3

    .line 129
    .local v1, "goods":Lcom/doodlemobile/gamecenter/billing/Goods;
    invoke-virtual {v1}, Lcom/doodlemobile/gamecenter/billing/Goods;->getSku()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/doodlemobile/gamecenter/billing/util/Inventory;->getPurchase(Ljava/lang/String;)Lcom/doodlemobile/gamecenter/billing/util/Purchase;

    move-result-object v2

    .line 130
    .local v2, "purchase":Lcom/doodlemobile/gamecenter/billing/util/Purchase;
    if-eqz v2, :cond_3

    iget-object v6, p0, Lcom/doodlemobile/gamecenter/billing/Store$1;->this$0:Lcom/doodlemobile/gamecenter/billing/Store;

    invoke-virtual {v6, v2}, Lcom/doodlemobile/gamecenter/billing/Store;->verifyDeveloperPayload(Lcom/doodlemobile/gamecenter/billing/util/Purchase;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 131
    const-string v3, "DoodleStore"

    const-string v4, "We have gas. Consuming it."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :try_start_0
    iget-object v3, p0, Lcom/doodlemobile/gamecenter/billing/Store$1;->this$0:Lcom/doodlemobile/gamecenter/billing/Store;

    iget-object v3, v3, Lcom/doodlemobile/gamecenter/billing/Store;->mHelper:Lcom/doodlemobile/gamecenter/billing/util/IabHelper;

    iget-object v4, p0, Lcom/doodlemobile/gamecenter/billing/Store$1;->this$0:Lcom/doodlemobile/gamecenter/billing/Store;

    iget-object v4, v4, Lcom/doodlemobile/gamecenter/billing/Store;->mConsumeFinishedListener:Lcom/doodlemobile/gamecenter/billing/util/IabHelper$OnConsumeFinishedListener;

    invoke-virtual {v3, v2, v4}, Lcom/doodlemobile/gamecenter/billing/util/IabHelper;->consumeAsync(Lcom/doodlemobile/gamecenter/billing/util/Purchase;Lcom/doodlemobile/gamecenter/billing/util/IabHelper$OnConsumeFinishedListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 128
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
