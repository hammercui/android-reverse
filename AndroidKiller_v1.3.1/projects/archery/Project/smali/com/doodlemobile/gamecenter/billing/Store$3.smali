.class Lcom/doodlemobile/gamecenter/billing/Store$3;
.super Ljava/lang/Object;
.source "Store.java"

# interfaces
.implements Lcom/doodlemobile/gamecenter/billing/util/IabHelper$OnConsumeFinishedListener;


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
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/billing/Store$3;->this$0:Lcom/doodlemobile/gamecenter/billing/Store;

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeFinished(Lcom/doodlemobile/gamecenter/billing/util/Purchase;Lcom/doodlemobile/gamecenter/billing/util/IabResult;)V
    .locals 6
    .param p1, "purchase"    # Lcom/doodlemobile/gamecenter/billing/util/Purchase;
    .param p2, "result"    # Lcom/doodlemobile/gamecenter/billing/util/IabResult;

    .prologue
    .line 266
    const-string v1, "DoodleStore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Consumption finished. Purchase: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/billing/Store$3;->this$0:Lcom/doodlemobile/gamecenter/billing/Store;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/billing/Store;->mHelper:Lcom/doodlemobile/gamecenter/billing/util/IabHelper;

    if-nez v1, :cond_0

    .line 284
    :goto_0
    return-void

    .line 274
    :cond_0
    invoke-virtual {p2}, Lcom/doodlemobile/gamecenter/billing/util/IabResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 277
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/billing/Store$3;->this$0:Lcom/doodlemobile/gamecenter/billing/Store;

    # getter for: Lcom/doodlemobile/gamecenter/billing/Store;->goodsArray:[Lcom/doodlemobile/gamecenter/billing/Goods;
    invoke-static {v1}, Lcom/doodlemobile/gamecenter/billing/Store;->access$0(Lcom/doodlemobile/gamecenter/billing/Store;)[Lcom/doodlemobile/gamecenter/billing/Goods;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v3, :cond_1

    .line 283
    :goto_2
    const-string v1, "DoodleStore"

    const-string v2, "End consumption flow."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 277
    :cond_1
    aget-object v0, v2, v1

    .local v0, "goods":Lcom/doodlemobile/gamecenter/billing/Goods;
    invoke-virtual {p1}, Lcom/doodlemobile/gamecenter/billing/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/billing/Goods;->getSku()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 278
    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/billing/Goods;->onPurchaseSuccess()V

    .line 277
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 281
    .end local v0    # "goods":Lcom/doodlemobile/gamecenter/billing/Goods;
    :cond_3
    const-string v1, "DoodleStore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error while consuming: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
