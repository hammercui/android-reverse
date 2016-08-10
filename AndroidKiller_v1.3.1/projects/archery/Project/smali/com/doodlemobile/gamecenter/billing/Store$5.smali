.class Lcom/doodlemobile/gamecenter/billing/Store$5;
.super Ljava/lang/Object;
.source "Store.java"

# interfaces
.implements Lcom/doodlemobile/gamecenter/billing/util/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/billing/Store;->onCreate(Landroid/app/Activity;)V
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
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/billing/Store$5;->this$0:Lcom/doodlemobile/gamecenter/billing/Store;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/doodlemobile/gamecenter/billing/util/IabResult;)V
    .locals 3
    .param p1, "result"    # Lcom/doodlemobile/gamecenter/billing/util/IabResult;

    .prologue
    .line 76
    const-string v1, "DoodleStore"

    const-string v2, "Setup finished."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p1}, Lcom/doodlemobile/gamecenter/billing/util/IabResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/billing/Store$5;->this$0:Lcom/doodlemobile/gamecenter/billing/Store;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/billing/Store;->mHelper:Lcom/doodlemobile/gamecenter/billing/util/IabHelper;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/billing/Store$5;->this$0:Lcom/doodlemobile/gamecenter/billing/Store;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/doodlemobile/gamecenter/billing/Store;->access$3(Lcom/doodlemobile/gamecenter/billing/Store;Z)V

    .line 89
    const-string v1, "DoodleStore"

    const-string v2, "Setup successful. Querying inventory."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/billing/Store$5;->this$0:Lcom/doodlemobile/gamecenter/billing/Store;

    iget-object v1, v1, Lcom/doodlemobile/gamecenter/billing/Store;->mHelper:Lcom/doodlemobile/gamecenter/billing/util/IabHelper;

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/billing/Store$5;->this$0:Lcom/doodlemobile/gamecenter/billing/Store;

    iget-object v2, v2, Lcom/doodlemobile/gamecenter/billing/Store;->mGotInventoryListener:Lcom/doodlemobile/gamecenter/billing/util/IabHelper$QueryInventoryFinishedListener;

    invoke-virtual {v1, v2}, Lcom/doodlemobile/gamecenter/billing/util/IabHelper;->queryInventoryAsync(Lcom/doodlemobile/gamecenter/billing/util/IabHelper$QueryInventoryFinishedListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method
