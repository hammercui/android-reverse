.class public Lcom/junerking/archery/PurchaseHelper;
.super Ljava/lang/Object;
.source "PurchaseHelper.java"


# static fields
.field public static final MSG_COIN_199:I = 0x186a1

.field public static final MSG_COIN_2499:I = 0x186a4

.field public static final MSG_COIN_499:I = 0x186a2

.field public static final MSG_COIN_4999:I = 0x186a5

.field public static final MSG_COIN_999:I = 0x186a3

.field public static final MSG_COIN_9999:I = 0x186a6

.field private static final REQUESTCODE:I = 0x65

.field public static buy_price:[F

.field public static coin_ids:[Ljava/lang/String;


# instance fields
.field private activity:Lcom/junerking/archery/MainActivity;

.field private base64EncodedPublicKey:Ljava/lang/String;

.field private mConsumeFinishedListener:Lcom/doodlemobile/gamecenter/billing/util/IabHelper$OnConsumeFinishedListener;

.field private mGotInventoryListener:Lcom/doodlemobile/gamecenter/billing/util/IabHelper$QueryInventoryFinishedListener;

.field private mIabHelper:Lcom/doodlemobile/gamecenter/billing/util/IabHelper;

.field private mPurchaseFinishedListener:Lcom/doodlemobile/gamecenter/billing/util/IabHelper$OnIabPurchaseFinishedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x6

    .line 18
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/junerking/archery/PurchaseHelper;->buy_price:[F

    .line 20
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "coin_199"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "coin_499"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "coin_999"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "coin_1999"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "coin_4999"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "coin_9999"

    aput-object v2, v0, v1

    sput-object v0, Lcom/junerking/archery/PurchaseHelper;->coin_ids:[Ljava/lang/String;

    return-void

    .line 18
    nop

    :array_0
    .array-data 4
        0x3ffeb852    # 1.99f
        0x409fae14    # 4.99f
        0x411fd70a    # 9.99f
        0x419feb85    # 19.99f
        0x4247f5c3    # 49.99f
        0x42c7fae1    # 99.99f
    .end array-data
.end method

.method public constructor <init>(Lcom/junerking/archery/MainActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/junerking/archery/MainActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA6BfdMNbr8pL6LycxqYvFl9W+5OatGXfisav0pQxO6z3gGq2x/t7odiPIhTnY3DWXuHZz9SdAMN34bxP7k1muF2RBSO/RK6/BAjD4hXZWGn8zX7O0jJH7Q6DK8CluFYJnVn9mOjxwj1hty+gMZU84s4nAH8vJ4SafmAq7ha/CZHFH10hknWy4CMI4/2EuiYWiUBDkl1yA2eHkKjeEgv6kbFcAg29eQFT+t1h6mbR2wF6V/7+B2v5oSNav8bfqzFo41aBiSrcNEz/CSQiYOVLYJ+8qOVRyz/5FA7h2lDZpUQqHTkv/ctcOofP8rVxpF6TcxDdHkhNkyzRCv3OqTdiGKwIDAQAB"

    iput-object v0, p0, Lcom/junerking/archery/PurchaseHelper;->base64EncodedPublicKey:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/junerking/archery/PurchaseHelper;->activity:Lcom/junerking/archery/MainActivity;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/junerking/archery/PurchaseHelper;)Lcom/doodlemobile/gamecenter/billing/util/IabHelper$QueryInventoryFinishedListener;
    .locals 1
    .param p0, "x0"    # Lcom/junerking/archery/PurchaseHelper;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/junerking/archery/PurchaseHelper;->mGotInventoryListener:Lcom/doodlemobile/gamecenter/billing/util/IabHelper$QueryInventoryFinishedListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/junerking/archery/PurchaseHelper;)Lcom/doodlemobile/gamecenter/billing/util/IabHelper;
    .locals 1
    .param p0, "x0"    # Lcom/junerking/archery/PurchaseHelper;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/junerking/archery/PurchaseHelper;->mIabHelper:Lcom/doodlemobile/gamecenter/billing/util/IabHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/junerking/archery/PurchaseHelper;)Lcom/doodlemobile/gamecenter/billing/util/IabHelper$OnConsumeFinishedListener;
    .locals 1
    .param p0, "x0"    # Lcom/junerking/archery/PurchaseHelper;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/junerking/archery/PurchaseHelper;->mConsumeFinishedListener:Lcom/doodlemobile/gamecenter/billing/util/IabHelper$OnConsumeFinishedListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/junerking/archery/PurchaseHelper;)Lcom/junerking/archery/MainActivity;
    .locals 1
    .param p0, "x0"    # Lcom/junerking/archery/PurchaseHelper;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/junerking/archery/PurchaseHelper;->activity:Lcom/junerking/archery/MainActivity;

    return-object v0
.end method


# virtual methods
.method public callBilling(Ljava/lang/String;)V
    .locals 7
    .param p1, "sku_id"    # Ljava/lang/String;

    .prologue
    .line 66
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=== call billing!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/junerking/archery/LogUtils;->out(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/junerking/archery/PurchaseHelper;->mIabHelper:Lcom/doodlemobile/gamecenter/billing/util/IabHelper;

    iget-object v1, p0, Lcom/junerking/archery/PurchaseHelper;->activity:Lcom/junerking/archery/MainActivity;

    const/16 v3, 0x65

    iget-object v4, p0, Lcom/junerking/archery/PurchaseHelper;->mPurchaseFinishedListener:Lcom/doodlemobile/gamecenter/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "geniusking"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/doodlemobile/gamecenter/billing/util/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/doodlemobile/gamecenter/billing/util/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v6

    .line 70
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public createBilling()V
    .locals 3

    .prologue
    .line 77
    :try_start_0
    new-instance v0, Lcom/doodlemobile/gamecenter/billing/util/IabHelper;

    iget-object v1, p0, Lcom/junerking/archery/PurchaseHelper;->activity:Lcom/junerking/archery/MainActivity;

    iget-object v2, p0, Lcom/junerking/archery/PurchaseHelper;->base64EncodedPublicKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/doodlemobile/gamecenter/billing/util/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/junerking/archery/PurchaseHelper;->mIabHelper:Lcom/doodlemobile/gamecenter/billing/util/IabHelper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    iget-object v0, p0, Lcom/junerking/archery/PurchaseHelper;->mIabHelper:Lcom/doodlemobile/gamecenter/billing/util/IabHelper;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/junerking/archery/PurchaseHelper;->mIabHelper:Lcom/doodlemobile/gamecenter/billing/util/IabHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/billing/util/IabHelper;->enableDebugLogging(Z)V

    .line 83
    iget-object v0, p0, Lcom/junerking/archery/PurchaseHelper;->mIabHelper:Lcom/doodlemobile/gamecenter/billing/util/IabHelper;

    new-instance v1, Lcom/junerking/archery/PurchaseHelper$1;

    invoke-direct {v1, p0}, Lcom/junerking/archery/PurchaseHelper$1;-><init>(Lcom/junerking/archery/PurchaseHelper;)V

    invoke-virtual {v0, v1}, Lcom/doodlemobile/gamecenter/billing/util/IabHelper;->startSetup(Lcom/doodlemobile/gamecenter/billing/util/IabHelper$OnIabSetupFinishedListener;)V

    .line 93
    :cond_0
    new-instance v0, Lcom/junerking/archery/PurchaseHelper$2;

    invoke-direct {v0, p0}, Lcom/junerking/archery/PurchaseHelper$2;-><init>(Lcom/junerking/archery/PurchaseHelper;)V

    iput-object v0, p0, Lcom/junerking/archery/PurchaseHelper;->mPurchaseFinishedListener:Lcom/doodlemobile/gamecenter/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 103
    new-instance v0, Lcom/junerking/archery/PurchaseHelper$3;

    invoke-direct {v0, p0}, Lcom/junerking/archery/PurchaseHelper$3;-><init>(Lcom/junerking/archery/PurchaseHelper;)V

    iput-object v0, p0, Lcom/junerking/archery/PurchaseHelper;->mConsumeFinishedListener:Lcom/doodlemobile/gamecenter/billing/util/IabHelper$OnConsumeFinishedListener;

    .line 135
    new-instance v0, Lcom/junerking/archery/PurchaseHelper$4;

    invoke-direct {v0, p0}, Lcom/junerking/archery/PurchaseHelper$4;-><init>(Lcom/junerking/archery/PurchaseHelper;)V

    iput-object v0, p0, Lcom/junerking/archery/PurchaseHelper;->mGotInventoryListener:Lcom/doodlemobile/gamecenter/billing/util/IabHelper$QueryInventoryFinishedListener;

    .line 150
    return-void

    .line 78
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "responseCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/junerking/archery/PurchaseHelper;->mIabHelper:Lcom/doodlemobile/gamecenter/billing/util/IabHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/junerking/archery/PurchaseHelper;->mIabHelper:Lcom/doodlemobile/gamecenter/billing/util/IabHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/doodlemobile/gamecenter/billing/util/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x1

    .line 60
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/junerking/archery/PurchaseHelper;->mIabHelper:Lcom/doodlemobile/gamecenter/billing/util/IabHelper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/junerking/archery/PurchaseHelper;->mIabHelper:Lcom/doodlemobile/gamecenter/billing/util/IabHelper;

    invoke-virtual {v1}, Lcom/doodlemobile/gamecenter/billing/util/IabHelper;->dispose()V

    .line 48
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/junerking/archery/PurchaseHelper;->mIabHelper:Lcom/doodlemobile/gamecenter/billing/util/IabHelper;

    .line 49
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/junerking/archery/PurchaseHelper;->mGotInventoryListener:Lcom/doodlemobile/gamecenter/billing/util/IabHelper$QueryInventoryFinishedListener;

    .line 50
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/junerking/archery/PurchaseHelper;->mPurchaseFinishedListener:Lcom/doodlemobile/gamecenter/billing/util/IabHelper$OnIabPurchaseFinishedListener;

    .line 51
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/junerking/archery/PurchaseHelper;->mConsumeFinishedListener:Lcom/doodlemobile/gamecenter/billing/util/IabHelper$OnConsumeFinishedListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
