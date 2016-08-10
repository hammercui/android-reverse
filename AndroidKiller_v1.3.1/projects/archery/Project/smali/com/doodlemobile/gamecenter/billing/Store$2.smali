.class Lcom/doodlemobile/gamecenter/billing/Store$2;
.super Ljava/lang/Object;
.source "Store.java"

# interfaces
.implements Lcom/doodlemobile/gamecenter/billing/util/IabHelper$OnIabPurchaseFinishedListener;


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
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/billing/Store$2;->this$0:Lcom/doodlemobile/gamecenter/billing/Store;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/doodlemobile/gamecenter/billing/util/IabResult;Lcom/doodlemobile/gamecenter/billing/util/Purchase;)V
    .locals 9
    .param p1, "result"    # Lcom/doodlemobile/gamecenter/billing/util/IabResult;
    .param p2, "purchase"    # Lcom/doodlemobile/gamecenter/billing/util/Purchase;

    .prologue
    const/4 v3, 0x0

    .line 228
    const-string v4, "DoodleStore"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Purchase finished: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", purchase: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v4, p0, Lcom/doodlemobile/gamecenter/billing/Store$2;->this$0:Lcom/doodlemobile/gamecenter/billing/Store;

    iget-object v4, v4, Lcom/doodlemobile/gamecenter/billing/Store;->mHelper:Lcom/doodlemobile/gamecenter/billing/util/IabHelper;

    if-nez v4, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    invoke-virtual {p1}, Lcom/doodlemobile/gamecenter/billing/util/IabResult;->isFailure()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 234
    const-string v3, "DoodleStore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error purchasing: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 237
    :cond_2
    iget-object v4, p0, Lcom/doodlemobile/gamecenter/billing/Store$2;->this$0:Lcom/doodlemobile/gamecenter/billing/Store;

    invoke-virtual {v4, p2}, Lcom/doodlemobile/gamecenter/billing/Store;->verifyDeveloperPayload(Lcom/doodlemobile/gamecenter/billing/util/Purchase;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 238
    const-string v3, "DoodleStore"

    const-string v4, "Error purchasing. Authenticity verification failed."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 242
    :cond_3
    const-string v4, "DoodleStore"

    const-string v5, "Purchase successful."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v4, p0, Lcom/doodlemobile/gamecenter/billing/Store$2;->this$0:Lcom/doodlemobile/gamecenter/billing/Store;

    const-string v5, "Thank you!"

    invoke-virtual {v4, v5}, Lcom/doodlemobile/gamecenter/billing/Store;->alert(Ljava/lang/String;)V

    .line 246
    iget-object v4, p0, Lcom/doodlemobile/gamecenter/billing/Store$2;->this$0:Lcom/doodlemobile/gamecenter/billing/Store;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/doodlemobile/gamecenter/billing/Store;->access$1(Lcom/doodlemobile/gamecenter/billing/Store;Z)V

    .line 247
    iget-object v4, p0, Lcom/doodlemobile/gamecenter/billing/Store$2;->this$0:Lcom/doodlemobile/gamecenter/billing/Store;

    iget-object v4, v4, Lcom/doodlemobile/gamecenter/billing/Store;->mainActivity:Landroid/app/Activity;

    const-string v5, "store"

    invoke-virtual {v4, v5, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 248
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "has-purchased"

    iget-object v6, p0, Lcom/doodlemobile/gamecenter/billing/Store$2;->this$0:Lcom/doodlemobile/gamecenter/billing/Store;

    # getter for: Lcom/doodlemobile/gamecenter/billing/Store;->purchased:Z
    invoke-static {v6}, Lcom/doodlemobile/gamecenter/billing/Store;->access$2(Lcom/doodlemobile/gamecenter/billing/Store;)Z

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 250
    iget-object v4, p0, Lcom/doodlemobile/gamecenter/billing/Store$2;->this$0:Lcom/doodlemobile/gamecenter/billing/Store;

    # getter for: Lcom/doodlemobile/gamecenter/billing/Store;->goodsArray:[Lcom/doodlemobile/gamecenter/billing/Goods;
    invoke-static {v4}, Lcom/doodlemobile/gamecenter/billing/Store;->access$0(Lcom/doodlemobile/gamecenter/billing/Store;)[Lcom/doodlemobile/gamecenter/billing/Goods;

    move-result-object v4

    array-length v5, v4

    :goto_1
    if-ge v3, v5, :cond_0

    aget-object v1, v4, v3

    .local v1, "goods":Lcom/doodlemobile/gamecenter/billing/Goods;
    invoke-virtual {p2}, Lcom/doodlemobile/gamecenter/billing/util/Purchase;->getSku()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/doodlemobile/gamecenter/billing/Goods;->getSku()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 252
    const-string v6, "DoodleStore"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Purchase is "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/doodlemobile/gamecenter/billing/Goods;->getSku()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". Starting consumption."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :try_start_0
    iget-object v6, p0, Lcom/doodlemobile/gamecenter/billing/Store$2;->this$0:Lcom/doodlemobile/gamecenter/billing/Store;

    iget-object v6, v6, Lcom/doodlemobile/gamecenter/billing/Store;->mHelper:Lcom/doodlemobile/gamecenter/billing/util/IabHelper;

    iget-object v7, p0, Lcom/doodlemobile/gamecenter/billing/Store$2;->this$0:Lcom/doodlemobile/gamecenter/billing/Store;

    iget-object v7, v7, Lcom/doodlemobile/gamecenter/billing/Store;->mConsumeFinishedListener:Lcom/doodlemobile/gamecenter/billing/util/IabHelper$OnConsumeFinishedListener;

    invoke-virtual {v6, p2, v7}, Lcom/doodlemobile/gamecenter/billing/util/IabHelper;->consumeAsync(Lcom/doodlemobile/gamecenter/billing/util/Purchase;Lcom/doodlemobile/gamecenter/billing/util/IabHelper$OnConsumeFinishedListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 255
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2
.end method
