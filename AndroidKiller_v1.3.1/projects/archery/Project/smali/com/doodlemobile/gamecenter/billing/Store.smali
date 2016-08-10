.class public Lcom/doodlemobile/gamecenter/billing/Store;
.super Ljava/lang/Object;
.source "Store.java"


# static fields
.field private static final KEY_HAS_PURCHASED:Ljava/lang/String; = "has-purchased"

.field private static final Pref_Location:Ljava/lang/String; = "store"

.field private static final RC_REQUEST:I = 0x2711

.field private static final TAG:Ljava/lang/String; = "DoodleStore"


# instance fields
.field base64EncodedPublicKey:Ljava/lang/String;

.field private billingHandler:Landroid/os/Handler;

.field private debugLogging:Z

.field private goodsArray:[Lcom/doodlemobile/gamecenter/billing/Goods;

.field mConsumeFinishedListener:Lcom/doodlemobile/gamecenter/billing/util/IabHelper$OnConsumeFinishedListener;

.field mGotInventoryListener:Lcom/doodlemobile/gamecenter/billing/util/IabHelper$QueryInventoryFinishedListener;

.field mHelper:Lcom/doodlemobile/gamecenter/billing/util/IabHelper;

.field mPurchaseFinishedListener:Lcom/doodlemobile/gamecenter/billing/util/IabHelper$OnIabPurchaseFinishedListener;

.field mainActivity:Landroid/app/Activity;

.field private purchased:Z

.field private supportInAppBilling:Z


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Lcom/doodlemobile/gamecenter/billing/Goods;)V
    .locals 1
    .param p1, "base64EncodedPublicKey"    # Ljava/lang/String;
    .param p2, "items"    # [Lcom/doodlemobile/gamecenter/billing/Goods;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v0, p0, Lcom/doodlemobile/gamecenter/billing/Store;->supportInAppBilling:Z

    .line 32
    iput-boolean v0, p0, Lcom/doodlemobile/gamecenter/billing/Store;->debugLogging:Z

    .line 35
    iput-boolean v0, p0, Lcom/doodlemobile/gamecenter/billing/Store;->purchased:Z

    .line 105
    new-instance v0, Lcom/doodlemobile/gamecenter/billing/Store$1;

    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/billing/Store$1;-><init>(Lcom/doodlemobile/gamecenter/billing/Store;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/billing/Store;->mGotInventoryListener:Lcom/doodlemobile/gamecenter/billing/util/IabHelper$QueryInventoryFinishedListener;

    .line 226
    new-instance v0, Lcom/doodlemobile/gamecenter/billing/Store$2;

    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/billing/Store$2;-><init>(Lcom/doodlemobile/gamecenter/billing/Store;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/billing/Store;->mPurchaseFinishedListener:Lcom/doodlemobile/gamecenter/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 264
    new-instance v0, Lcom/doodlemobile/gamecenter/billing/Store$3;

    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/billing/Store$3;-><init>(Lcom/doodlemobile/gamecenter/billing/Store;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/billing/Store;->mConsumeFinishedListener:Lcom/doodlemobile/gamecenter/billing/util/IabHelper$OnConsumeFinishedListener;

    .line 41
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/billing/Store;->base64EncodedPublicKey:Ljava/lang/String;

    .line 42
    invoke-virtual {p2}, [Lcom/doodlemobile/gamecenter/billing/Goods;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/doodlemobile/gamecenter/billing/Goods;

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/billing/Store;->goodsArray:[Lcom/doodlemobile/gamecenter/billing/Goods;

    .line 43
    new-instance v0, Lcom/doodlemobile/gamecenter/billing/Store$4;

    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/billing/Store$4;-><init>(Lcom/doodlemobile/gamecenter/billing/Store;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/billing/Store;->billingHandler:Landroid/os/Handler;

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/doodlemobile/gamecenter/billing/Store;)[Lcom/doodlemobile/gamecenter/billing/Goods;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/billing/Store;->goodsArray:[Lcom/doodlemobile/gamecenter/billing/Goods;

    return-object v0
.end method

.method static synthetic access$1(Lcom/doodlemobile/gamecenter/billing/Store;Z)V
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/doodlemobile/gamecenter/billing/Store;->purchased:Z

    return-void
.end method

.method static synthetic access$2(Lcom/doodlemobile/gamecenter/billing/Store;)Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/doodlemobile/gamecenter/billing/Store;->purchased:Z

    return v0
.end method

.method static synthetic access$3(Lcom/doodlemobile/gamecenter/billing/Store;Z)V
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/doodlemobile/gamecenter/billing/Store;->supportInAppBilling:Z

    return-void
.end method


# virtual methods
.method alert(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/billing/Store;->mainActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 317
    return-void
.end method

.method public buy(Lcom/doodlemobile/gamecenter/billing/Goods;)V
    .locals 7
    .param p1, "goods"    # Lcom/doodlemobile/gamecenter/billing/Goods;

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/doodlemobile/gamecenter/billing/Store;->supportInAppBilling:Z

    if-nez v0, :cond_0

    .line 147
    const-string v0, "Not support, sorry!"

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/billing/Store;->complain(Ljava/lang/String;)V

    .line 162
    :goto_0
    return-void

    .line 150
    :cond_0
    const-string v0, "DoodleStore"

    const-string v1, "Buy start."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {p1}, Lcom/doodlemobile/gamecenter/billing/Goods;->getSku()Ljava/lang/String;

    move-result-object v5

    .line 156
    .local v5, "payload":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/billing/Store;->mHelper:Lcom/doodlemobile/gamecenter/billing/util/IabHelper;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/billing/Store;->mainActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/doodlemobile/gamecenter/billing/Goods;->getSku()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2711

    .line 157
    iget-object v4, p0, Lcom/doodlemobile/gamecenter/billing/Store;->mPurchaseFinishedListener:Lcom/doodlemobile/gamecenter/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 156
    invoke-virtual/range {v0 .. v5}, Lcom/doodlemobile/gamecenter/billing/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/doodlemobile/gamecenter/billing/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v6

    .line 160
    .local v6, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method complain(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 306
    const-string v0, "DoodleStore"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "**** TrivialDrive Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/billing/Store;->alert(Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method public getBillingHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/billing/Store;->billingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public hasPurchased()Z
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/doodlemobile/gamecenter/billing/Store;->purchased:Z

    return v0
.end method

.method public inAppBillingSupported()Z
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/doodlemobile/gamecenter/billing/Store;->supportInAppBilling:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v6, 0x2711

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 165
    const-string v3, "DoodleStore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onActivityResult("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    if-eq p1, v6, :cond_1

    .line 186
    :cond_0
    :goto_0
    return v1

    .line 167
    :cond_1
    iget-object v3, p0, Lcom/doodlemobile/gamecenter/billing/Store;->mHelper:Lcom/doodlemobile/gamecenter/billing/util/IabHelper;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 169
    :cond_2
    if-nez p3, :cond_3

    if-ne p1, v6, :cond_3

    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/billing/Store;->mHelper:Lcom/doodlemobile/gamecenter/billing/util/IabHelper;

    iget-object v3, p0, Lcom/doodlemobile/gamecenter/billing/Store;->mGotInventoryListener:Lcom/doodlemobile/gamecenter/billing/util/IabHelper$QueryInventoryFinishedListener;

    invoke-virtual {v1, v3}, Lcom/doodlemobile/gamecenter/billing/util/IabHelper;->queryInventoryAsync(Lcom/doodlemobile/gamecenter/billing/util/IabHelper$QueryInventoryFinishedListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v1, v2

    .line 176
    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 179
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_3
    iget-object v3, p0, Lcom/doodlemobile/gamecenter/billing/Store;->mHelper:Lcom/doodlemobile/gamecenter/billing/util/IabHelper;

    invoke-virtual {v3, p1, p2, p3}, Lcom/doodlemobile/gamecenter/billing/util/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 185
    const-string v1, "DoodleStore"

    const-string v3, "onActivityResult handled by IABUtil."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 186
    goto :goto_0
.end method

.method public onCreate(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 60
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/billing/Store;->mainActivity:Landroid/app/Activity;

    .line 61
    const-string v2, "store"

    invoke-virtual {p1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 62
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "has-purchased"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/doodlemobile/gamecenter/billing/Store;->purchased:Z

    .line 64
    const-string v2, "DoodleStore"

    const-string v3, "Creating IAB helper."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v2, Lcom/doodlemobile/gamecenter/billing/util/IabHelper;

    iget-object v3, p0, Lcom/doodlemobile/gamecenter/billing/Store;->base64EncodedPublicKey:Ljava/lang/String;

    invoke-direct {v2, p1, v3}, Lcom/doodlemobile/gamecenter/billing/util/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/doodlemobile/gamecenter/billing/Store;->mHelper:Lcom/doodlemobile/gamecenter/billing/util/IabHelper;

    .line 68
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/billing/Store;->mHelper:Lcom/doodlemobile/gamecenter/billing/util/IabHelper;

    iget-boolean v3, p0, Lcom/doodlemobile/gamecenter/billing/Store;->debugLogging:Z

    invoke-virtual {v2, v3}, Lcom/doodlemobile/gamecenter/billing/util/IabHelper;->enableDebugLogging(Z)V

    .line 72
    const-string v2, "DoodleStore"

    const-string v3, "Starting setup."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :try_start_0
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/billing/Store;->mHelper:Lcom/doodlemobile/gamecenter/billing/util/IabHelper;

    new-instance v3, Lcom/doodlemobile/gamecenter/billing/Store$5;

    invoke-direct {v3, p0}, Lcom/doodlemobile/gamecenter/billing/Store$5;-><init>(Lcom/doodlemobile/gamecenter/billing/Store;)V

    invoke-virtual {v2, v3}, Lcom/doodlemobile/gamecenter/billing/util/IabHelper;->startSetup(Lcom/doodlemobile/gamecenter/billing/util/IabHelper$OnIabSetupFinishedListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 290
    const-string v0, "DoodleStore"

    const-string v1, "Destroying helper."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/billing/Store;->mHelper:Lcom/doodlemobile/gamecenter/billing/util/IabHelper;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/billing/Store;->mHelper:Lcom/doodlemobile/gamecenter/billing/util/IabHelper;

    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/billing/util/IabHelper;->dispose()V

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/billing/Store;->mHelper:Lcom/doodlemobile/gamecenter/billing/util/IabHelper;

    .line 295
    :cond_0
    return-void
.end method

.method public setDebugLogging(Z)V
    .locals 0
    .param p1, "debugLogging"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/doodlemobile/gamecenter/billing/Store;->debugLogging:Z

    .line 57
    return-void
.end method

.method verifyDeveloperPayload(Lcom/doodlemobile/gamecenter/billing/util/Purchase;)Z
    .locals 7
    .param p1, "p"    # Lcom/doodlemobile/gamecenter/billing/util/Purchase;

    .prologue
    const/4 v2, 0x0

    .line 216
    iget-object v4, p0, Lcom/doodlemobile/gamecenter/billing/Store;->goodsArray:[Lcom/doodlemobile/gamecenter/billing/Goods;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-lt v3, v5, :cond_0

    .line 222
    :goto_1
    return v2

    .line 216
    :cond_0
    aget-object v0, v4, v3

    .line 217
    .local v0, "good":Lcom/doodlemobile/gamecenter/billing/Goods;
    invoke-virtual {v0}, Lcom/doodlemobile/gamecenter/billing/Goods;->getSku()Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "payload":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/doodlemobile/gamecenter/billing/util/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 219
    const/4 v2, 0x1

    goto :goto_1

    .line 216
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
