.class Lcom/junerking/archery/PurchaseHelper$3;
.super Ljava/lang/Object;
.source "PurchaseHelper.java"

# interfaces
.implements Lcom/doodlemobile/gamecenter/billing/util/IabHelper$OnConsumeFinishedListener;


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
    .line 103
    iput-object p1, p0, Lcom/junerking/archery/PurchaseHelper$3;->this$0:Lcom/junerking/archery/PurchaseHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeFinished(Lcom/doodlemobile/gamecenter/billing/util/Purchase;Lcom/doodlemobile/gamecenter/billing/util/IabResult;)V
    .locals 6
    .param p1, "purchase"    # Lcom/doodlemobile/gamecenter/billing/util/Purchase;
    .param p2, "result"    # Lcom/doodlemobile/gamecenter/billing/util/IabResult;

    .prologue
    const/4 v5, 0x1

    .line 105
    const-string v3, "=== on consume finished!"

    invoke-static {v3}, Lcom/junerking/archery/LogUtils;->out(Ljava/lang/String;)V

    .line 106
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/doodlemobile/gamecenter/billing/util/IabResult;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 107
    iget-object v3, p0, Lcom/junerking/archery/PurchaseHelper$3;->this$0:Lcom/junerking/archery/PurchaseHelper;

    # getter for: Lcom/junerking/archery/PurchaseHelper;->activity:Lcom/junerking/archery/MainActivity;
    invoke-static {v3}, Lcom/junerking/archery/PurchaseHelper;->access$300(Lcom/junerking/archery/PurchaseHelper;)Lcom/junerking/archery/MainActivity;

    move-result-object v3

    const-string v4, "Purchase successful. Good Luck!"

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 110
    :try_start_0
    invoke-virtual {p1}, Lcom/doodlemobile/gamecenter/billing/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "purchaseSku":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 112
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/junerking/archery/PurchaseHelper;->coin_ids:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 113
    sget-object v3, Lcom/junerking/archery/PurchaseHelper;->coin_ids:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 114
    if-eqz v1, :cond_0

    const/4 v3, 0x6

    if-eq v1, v3, :cond_0

    .line 115
    iget-object v3, p0, Lcom/junerking/archery/PurchaseHelper$3;->this$0:Lcom/junerking/archery/PurchaseHelper;

    # getter for: Lcom/junerking/archery/PurchaseHelper;->activity:Lcom/junerking/archery/MainActivity;
    invoke-static {v3}, Lcom/junerking/archery/PurchaseHelper;->access$300(Lcom/junerking/archery/PurchaseHelper;)Lcom/junerking/archery/MainActivity;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/junerking/archery/PurchaseHelper$3;->this$0:Lcom/junerking/archery/PurchaseHelper;

    # getter for: Lcom/junerking/archery/PurchaseHelper;->activity:Lcom/junerking/archery/MainActivity;
    invoke-static {v3}, Lcom/junerking/archery/PurchaseHelper;->access$300(Lcom/junerking/archery/PurchaseHelper;)Lcom/junerking/archery/MainActivity;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/junerking/archery/MainActivity;->setAdsFree(Z)V

    .line 117
    :cond_0
    const-string v3, "_Platform"

    const-string v4, "OnPurchaseSuccess"

    invoke-static {v3, v4, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v1    # "i":I
    .end local v2    # "purchaseSku":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 112
    .restart local v1    # "i":I
    .restart local v2    # "purchaseSku":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    .end local v1    # "i":I
    .end local v2    # "purchaseSku":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 127
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v3, p0, Lcom/junerking/archery/PurchaseHelper$3;->this$0:Lcom/junerking/archery/PurchaseHelper;

    # getter for: Lcom/junerking/archery/PurchaseHelper;->activity:Lcom/junerking/archery/MainActivity;
    invoke-static {v3}, Lcom/junerking/archery/PurchaseHelper;->access$300(Lcom/junerking/archery/PurchaseHelper;)Lcom/junerking/archery/MainActivity;

    move-result-object v3

    const-string v4, "Error Purchasing. If money charged, reopen the game."

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
