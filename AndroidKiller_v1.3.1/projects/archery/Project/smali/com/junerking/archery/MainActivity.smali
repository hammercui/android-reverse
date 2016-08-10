.class public Lcom/junerking/archery/MainActivity;
.super Lcom/unity3d/player/UnityPlayerActivity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/junerking/archery/MainActivity$MyHandler;
    }
.end annotation


# static fields
.field private static final FEATURE_VIEW_RECT_BOTTOM:Landroid/graphics/Rect;


# instance fields
.field private FLURRY_ID:Ljava/lang/String;

.field private final HANDLER_BILLING_CREATE:I

.field private final HANDLER_BILLING_DESTORY:I

.field private final HANDLER_FAKE_LOADING_HIDE:I

.field private final HANDLER_FEATRUE_VIEW_HIDE:I

.field private final HANDLER_FEATURE_VIEW_SHOW:I

.field private final HANDLER_FULL_SCREEN_SMALLEXIT_SHOW:I

.field private final HANDLER_FULL_SCREEN_SMALL_HIDE:I

.field private final HANDLER_FULL_SCREEN_SMALL_SHOW:I

.field private final HANDLER_MOREGAMES:I

.field private final HANDLER_RATING:I

.field private doodleHelper:Lcom/junerking/archery/DoodleHelper;

.field private endLoadingTime:J

.field private fakeLoading:Landroid/widget/RelativeLayout;

.field private isUsingServerTime:Z

.field private myHandler:Lcom/junerking/archery/MainActivity$MyHandler;

.field private purchaseHelper:Lcom/junerking/archery/PurchaseHelper;

.field private serverTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 204
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/16 v2, 0x2c1

    const/16 v3, 0x1e0

    const/16 v4, 0x320

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/junerking/archery/MainActivity;->FEATURE_VIEW_RECT_BOTTOM:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 31
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayerActivity;-><init>()V

    .line 32
    const-string v0, "5B5C82CMZMD2YRBXTG3B"

    iput-object v0, p0, Lcom/junerking/archery/MainActivity;->FLURRY_ID:Ljava/lang/String;

    .line 38
    iput-boolean v2, p0, Lcom/junerking/archery/MainActivity;->isUsingServerTime:Z

    .line 39
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/junerking/archery/MainActivity;->serverTime:J

    .line 206
    const/4 v0, 0x0

    iput v0, p0, Lcom/junerking/archery/MainActivity;->HANDLER_RATING:I

    .line 207
    iput v2, p0, Lcom/junerking/archery/MainActivity;->HANDLER_FEATURE_VIEW_SHOW:I

    .line 208
    const/4 v0, 0x2

    iput v0, p0, Lcom/junerking/archery/MainActivity;->HANDLER_FEATRUE_VIEW_HIDE:I

    .line 209
    const/4 v0, 0x3

    iput v0, p0, Lcom/junerking/archery/MainActivity;->HANDLER_FAKE_LOADING_HIDE:I

    .line 210
    const/4 v0, 0x4

    iput v0, p0, Lcom/junerking/archery/MainActivity;->HANDLER_MOREGAMES:I

    .line 212
    const/4 v0, 0x5

    iput v0, p0, Lcom/junerking/archery/MainActivity;->HANDLER_FULL_SCREEN_SMALL_SHOW:I

    .line 213
    const/4 v0, 0x6

    iput v0, p0, Lcom/junerking/archery/MainActivity;->HANDLER_FULL_SCREEN_SMALLEXIT_SHOW:I

    .line 214
    const/4 v0, 0x7

    iput v0, p0, Lcom/junerking/archery/MainActivity;->HANDLER_FULL_SCREEN_SMALL_HIDE:I

    .line 216
    const/16 v0, 0x8

    iput v0, p0, Lcom/junerking/archery/MainActivity;->HANDLER_BILLING_CREATE:I

    .line 217
    const/16 v0, 0x9

    iput v0, p0, Lcom/junerking/archery/MainActivity;->HANDLER_BILLING_DESTORY:I

    .line 219
    new-instance v0, Lcom/junerking/archery/MainActivity$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/junerking/archery/MainActivity$MyHandler;-><init>(Lcom/junerking/archery/MainActivity;Lcom/junerking/archery/MainActivity$1;)V

    iput-object v0, p0, Lcom/junerking/archery/MainActivity;->myHandler:Lcom/junerking/archery/MainActivity$MyHandler;

    .line 221
    return-void
.end method

.method static synthetic access$000(Lcom/junerking/archery/MainActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/junerking/archery/MainActivity;

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/junerking/archery/MainActivity;->serverTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/junerking/archery/MainActivity;J)J
    .locals 0
    .param p0, "x0"    # Lcom/junerking/archery/MainActivity;
    .param p1, "x1"    # J

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/junerking/archery/MainActivity;->serverTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/junerking/archery/MainActivity;)Lcom/junerking/archery/PurchaseHelper;
    .locals 1
    .param p0, "x0"    # Lcom/junerking/archery/MainActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/junerking/archery/MainActivity;->purchaseHelper:Lcom/junerking/archery/PurchaseHelper;

    return-object v0
.end method

.method static synthetic access$300()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/junerking/archery/MainActivity;->FEATURE_VIEW_RECT_BOTTOM:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$400(Lcom/junerking/archery/MainActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/junerking/archery/MainActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/junerking/archery/MainActivity;->fakeLoading:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private flurryLogEvent(I)V
    .locals 7
    .param p1, "type"    # I

    .prologue
    const/16 v6, 0x44c

    const/16 v5, 0x384

    const/16 v4, 0x2bc

    const/16 v3, 0x1f4

    const/16 v2, 0x12c

    .line 365
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 366
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-ltz p1, :cond_1

    const/16 v1, 0x1f

    if-ge p1, v1, :cond_1

    .line 367
    const-string v1, "day"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string v1, "dailylogin"

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    const/16 v1, 0xbb8

    if-lt p1, v1, :cond_2

    const/16 v1, 0xbc2

    if-ge p1, v1, :cond_2

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Purchase"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 375
    :cond_2
    const/16 v1, 0x29

    if-ne p1, v1, :cond_3

    .line 376
    const-string v1, "onsalebuy"

    goto :goto_0

    .line 379
    :cond_3
    const/16 v1, 0x32

    if-ne p1, v1, :cond_4

    .line 380
    const-string v1, "ButtonRateClick"

    goto :goto_0

    .line 383
    :cond_4
    const/16 v1, 0x33

    if-ne p1, v1, :cond_5

    .line 384
    const-string v1, "ButtonHelpClick"

    goto :goto_0

    .line 387
    :cond_5
    const/16 v1, 0x34

    if-ne p1, v1, :cond_6

    .line 388
    const-string v1, "ButtonMoreGameClick"

    goto :goto_0

    .line 391
    :cond_6
    const/16 v1, 0x64

    if-lt p1, v1, :cond_7

    if-ge p1, v2, :cond_7

    .line 392
    const-string v1, "level"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, -0x64

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    const-string v1, "LevelClick"

    goto :goto_0

    .line 396
    :cond_7
    if-lt p1, v2, :cond_8

    if-ge p1, v3, :cond_8

    .line 397
    const-string v1, "level"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit16 v3, p1, -0x12c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    const-string v1, "LevelComplete"

    goto/16 :goto_0

    .line 401
    :cond_8
    if-lt p1, v3, :cond_9

    if-ge p1, v4, :cond_9

    .line 402
    const-string v1, "level"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit16 v3, p1, -0x1f4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    const-string v1, "LevelStar1"

    goto/16 :goto_0

    .line 406
    :cond_9
    if-lt p1, v4, :cond_a

    if-ge p1, v5, :cond_a

    .line 407
    const-string v1, "level"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit16 v3, p1, -0x2bc

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    const-string v1, "LevelStar2"

    goto/16 :goto_0

    .line 411
    :cond_a
    if-lt p1, v5, :cond_b

    if-ge p1, v6, :cond_b

    .line 412
    const-string v1, "level"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit16 v3, p1, -0x384

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    const-string v1, "LevelStar3"

    goto/16 :goto_0

    .line 416
    :cond_b
    if-lt p1, v6, :cond_c

    const/16 v1, 0x514

    if-ge p1, v1, :cond_c

    .line 417
    const-string v1, "level"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit16 v3, p1, -0x44c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    const-string v1, "LevelFullScore"

    goto/16 :goto_0

    .line 421
    :cond_c
    const/16 v1, 0x1388

    if-lt p1, v1, :cond_d

    const/16 v1, 0x1450

    if-ge p1, v1, :cond_d

    .line 422
    const-string v1, "level"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit16 v3, p1, -0x1388

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    const-string v1, "LevelBuyOneMore"

    goto/16 :goto_0

    .line 426
    :cond_d
    const/16 v1, 0x7d0

    if-lt p1, v1, :cond_e

    const/16 v1, 0x7da

    if-ge p1, v1, :cond_e

    .line 427
    const-string v1, "challenge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit16 v3, p1, -0x7d0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    const-string v1, "ChallangeClick"

    goto/16 :goto_0

    .line 431
    :cond_e
    const/16 v1, 0x7da

    if-lt p1, v1, :cond_f

    const/16 v1, 0x7e4

    if-ge p1, v1, :cond_f

    .line 432
    const-string v1, "challenge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit16 v3, p1, -0x7da

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    const-string v1, "ChallangeComplete"

    goto/16 :goto_0

    .line 436
    :cond_f
    const/16 v1, 0x7e4

    if-lt p1, v1, :cond_10

    const/16 v1, 0x7ee

    if-ge p1, v1, :cond_10

    .line 437
    const-string v1, "challenge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit16 v3, p1, -0x7e4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    const-string v1, "ChallangeBuyOneMore"

    goto/16 :goto_0

    .line 441
    :cond_10
    const/16 v1, 0xbc2

    if-lt p1, v1, :cond_11

    const/16 v1, 0xbcc

    if-le p1, v1, :cond_11

    .line 442
    const-string v1, "index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit16 v3, p1, -0xbc2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    const-string v1, "ShopBow"

    goto/16 :goto_0

    .line 446
    :cond_11
    const/16 v1, 0xbcc

    if-lt p1, v1, :cond_12

    const/16 v1, 0xbd6

    if-le p1, v1, :cond_12

    .line 447
    const-string v1, "index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit16 v3, p1, -0xbcc

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    const-string v1, "ShopArrow"

    goto/16 :goto_0

    .line 451
    :cond_12
    const/16 v1, 0xbd6

    if-lt p1, v1, :cond_13

    const/16 v1, 0xbe0

    if-le p1, v1, :cond_13

    .line 452
    const-string v1, "index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit16 v3, p1, -0xbd6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    const-string v1, "ShopParts"

    goto/16 :goto_0

    .line 456
    :cond_13
    const/16 v1, 0xbe0

    if-lt p1, v1, :cond_14

    const/16 v1, 0xbea

    if-le p1, v1, :cond_14

    .line 457
    const-string v1, "index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit16 v3, p1, -0xbe0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    const-string v1, "ShopRole"

    goto/16 :goto_0

    .line 461
    :cond_14
    const/16 v1, 0xfa0

    if-ne p1, v1, :cond_15

    .line 462
    const-string v1, "BuyBowSight"

    goto/16 :goto_0

    .line 465
    :cond_15
    const/16 v1, 0xfa1

    if-ne p1, v1, :cond_0

    .line 466
    const-string v1, "BuyStablizer"

    goto/16 :goto_0
.end method


# virtual methods
.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public internalBilling(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 512
    iget-object v0, p0, Lcom/junerking/archery/MainActivity;->myHandler:Lcom/junerking/archery/MainActivity$MyHandler;

    const v1, 0x186a1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/junerking/archery/MainActivity$MyHandler;->sendEmptyMessage(I)Z

    .line 513
    return-void
.end method

.method public internalCreateBilling()V
    .locals 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/junerking/archery/MainActivity;->myHandler:Lcom/junerking/archery/MainActivity$MyHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/junerking/archery/MainActivity$MyHandler;->sendEmptyMessage(I)Z

    .line 509
    return-void
.end method

.method public internalEndBilling()V
    .locals 2

    .prologue
    .line 516
    iget-object v0, p0, Lcom/junerking/archery/MainActivity;->myHandler:Lcom/junerking/archery/MainActivity$MyHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/junerking/archery/MainActivity$MyHandler;->sendEmptyMessage(I)Z

    .line 517
    return-void
.end method

.method public internalGetServerTime()J
    .locals 4

    .prologue
    .line 486
    const-string v0, "tag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " get server time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/junerking/archery/MainActivity;->serverTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-wide v0, p0, Lcom/junerking/archery/MainActivity;->serverTime:J

    return-wide v0
.end method

.method public internalGetTimeLeft()J
    .locals 4

    .prologue
    .line 482
    iget-wide v0, p0, Lcom/junerking/archery/MainActivity;->endLoadingTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public internalHideFakeLoading()V
    .locals 2

    .prologue
    .line 477
    const-string v0, "tag"

    const-string v1, "internalHideFakeLoading"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v0, p0, Lcom/junerking/archery/MainActivity;->myHandler:Lcom/junerking/archery/MainActivity$MyHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/junerking/archery/MainActivity$MyHandler;->sendEmptyMessage(I)Z

    .line 479
    return-void
.end method

.method public internalHideFeatureView()V
    .locals 2

    .prologue
    .line 504
    iget-object v0, p0, Lcom/junerking/archery/MainActivity;->myHandler:Lcom/junerking/archery/MainActivity$MyHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/junerking/archery/MainActivity$MyHandler;->sendEmptyMessage(I)Z

    .line 505
    return-void
.end method

.method public internalHideFullScreenSmall()V
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/junerking/archery/MainActivity;->myHandler:Lcom/junerking/archery/MainActivity$MyHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/junerking/archery/MainActivity$MyHandler;->sendEmptyMessage(I)Z

    .line 535
    return-void
.end method

.method public internalIsAdsFree()Z
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/junerking/archery/MainActivity;->doodleHelper:Lcom/junerking/archery/DoodleHelper;

    invoke-virtual {v0}, Lcom/junerking/archery/DoodleHelper;->isAdsFree()Z

    move-result v0

    return v0
.end method

.method public internalIsFulScreenSmallReady()Z
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/junerking/archery/MainActivity;->doodleHelper:Lcom/junerking/archery/DoodleHelper;

    invoke-virtual {v0}, Lcom/junerking/archery/DoodleHelper;->isAdsFree()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 547
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/doodlemobile/gamecenter/Platform;->isFullScreenSmallIsReady()Z

    move-result v0

    goto :goto_0
.end method

.method public internalIsFullScreenSmallShowing()Z
    .locals 1

    .prologue
    .line 542
    invoke-static {}, Lcom/doodlemobile/gamecenter/Platform;->isFullScreenSmallShowing()Z

    move-result v0

    return v0
.end method

.method public internalMoreGames()V
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/junerking/archery/MainActivity;->myHandler:Lcom/junerking/archery/MainActivity$MyHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/junerking/archery/MainActivity$MyHandler;->sendEmptyMessage(I)Z

    .line 521
    return-void
.end method

.method public internalRating()V
    .locals 2

    .prologue
    .line 491
    const-string v0, "tag"

    const-string v1, " rating game"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v0, p0, Lcom/junerking/archery/MainActivity;->myHandler:Lcom/junerking/archery/MainActivity$MyHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/junerking/archery/MainActivity$MyHandler;->sendEmptyMessage(I)Z

    .line 493
    return-void
.end method

.method public internalShowFeatureView()V
    .locals 3

    .prologue
    .line 498
    const-string v0, "tag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " show FeatureView adsFree="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/junerking/archery/MainActivity;->doodleHelper:Lcom/junerking/archery/DoodleHelper;

    invoke-virtual {v2}, Lcom/junerking/archery/DoodleHelper;->isAdsFree()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v0, p0, Lcom/junerking/archery/MainActivity;->doodleHelper:Lcom/junerking/archery/DoodleHelper;

    invoke-virtual {v0}, Lcom/junerking/archery/DoodleHelper;->isAdsFree()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    :goto_0
    return-void

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/junerking/archery/MainActivity;->myHandler:Lcom/junerking/archery/MainActivity$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/junerking/archery/MainActivity$MyHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public internalShowFullScreenExitSmall()V
    .locals 2

    .prologue
    .line 529
    iget-object v0, p0, Lcom/junerking/archery/MainActivity;->doodleHelper:Lcom/junerking/archery/DoodleHelper;

    invoke-virtual {v0}, Lcom/junerking/archery/DoodleHelper;->isAdsFree()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    :goto_0
    return-void

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/junerking/archery/MainActivity;->myHandler:Lcom/junerking/archery/MainActivity$MyHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/junerking/archery/MainActivity$MyHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public internalShowFullScreenSmall()V
    .locals 2

    .prologue
    .line 524
    iget-object v0, p0, Lcom/junerking/archery/MainActivity;->doodleHelper:Lcom/junerking/archery/DoodleHelper;

    invoke-virtual {v0}, Lcom/junerking/archery/DoodleHelper;->isAdsFree()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    :goto_0
    return-void

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/junerking/archery/MainActivity;->myHandler:Lcom/junerking/archery/MainActivity$MyHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/junerking/archery/MainActivity$MyHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "responseCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/junerking/archery/MainActivity;->purchaseHelper:Lcom/junerking/archery/PurchaseHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/junerking/archery/PurchaseHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    invoke-super {p0, p1, p2, p3}, Lcom/unity3d/player/UnityPlayerActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 157
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 48
    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lbaidurqiye/myad;->baiduad(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/example/jifei/sp1;->mysp1(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/example/jifei/sp2;->mysp2(Landroid/app/Activity;)V

    .line 54
    :try_start_0
    invoke-virtual {p0}, Lcom/junerking/archery/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x80

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/view/Window;->setFlags(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 59
    :goto_0
    const/4 v4, 0x5

    .line 61
    .local v4, "version":I
    :try_start_1
    const-class v0, Landroid/os/Build$VERSION;

    .line 63
    .local v0, "build_version_class":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/os/Build$VERSION;>;"
    const-string v5, "SDK_INT"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 64
    .local v2, "field":Ljava/lang/reflect/Field;
    new-instance v5, Landroid/os/Build$VERSION;

    invoke-direct {v5}, Landroid/os/Build$VERSION;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    .line 68
    .end local v0    # "build_version_class":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/os/Build$VERSION;>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :goto_1
    const/16 v5, 0x9

    if-lt v4, v5, :cond_0

    .line 70
    const/4 v5, 0x7

    :try_start_2
    invoke-virtual {p0, v5}, Lcom/junerking/archery/MainActivity;->setRequestedOrientation(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 79
    :cond_0
    :goto_2
    new-instance v5, Lcom/junerking/archery/DoodleHelper;

    invoke-direct {v5, p0}, Lcom/junerking/archery/DoodleHelper;-><init>(Lcom/junerking/archery/MainActivity;)V

    iput-object v5, p0, Lcom/junerking/archery/MainActivity;->doodleHelper:Lcom/junerking/archery/DoodleHelper;

    .line 82
    const-string v5, "ca-app-pub-3403243588104548/3380176516"

    invoke-static {v5}, Lcom/doodlemobile/gamecenter/Platform;->setFull_Admob_ID(Ljava/lang/String;)V

    .line 83
    const-string v5, "UA-64401183-1"

    invoke-static {v5}, Lcom/doodlemobile/gamecenter/Platform;->setGoogleAnalyticsID(Ljava/lang/String;)V

    .line 86
    const/4 v5, 0x0

    invoke-static {p0, v5}, Lcom/doodlemobile/gamecenter/Platform;->onCreate(Landroid/app/Activity;Z)V

    .line 88
    iget-boolean v5, p0, Lcom/junerking/archery/MainActivity;->isUsingServerTime:Z

    if-eqz v5, :cond_1

    .line 89
    invoke-static {}, Lcom/doodlemobile/gamecenter/Platform;->getServerTime()V

    .line 90
    new-instance v5, Lcom/junerking/archery/MainActivity$1;

    invoke-direct {v5, p0}, Lcom/junerking/archery/MainActivity$1;-><init>(Lcom/junerking/archery/MainActivity;)V

    invoke-static {v5}, Lcom/doodlemobile/gamecenter/Platform;->setGetServerTimeListener(Lcom/doodlemobile/gamecenter/fullscreen/Resources$GetServerTimeListener;)V

    .line 122
    :goto_3
    new-instance v5, Lcom/junerking/archery/MainActivity$2;

    invoke-direct {v5, p0}, Lcom/junerking/archery/MainActivity$2;-><init>(Lcom/junerking/archery/MainActivity;)V

    invoke-static {v5}, Lcom/doodlemobile/gamecenter/Platform;->setFullScreenCloseListener(Lcom/doodlemobile/gamecenter/fullscreen/Resources$FullScreenCloseListener;)V

    .line 132
    invoke-virtual {p0}, Lcom/junerking/archery/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03000a

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 133
    .local v3, "mainLayout":Landroid/view/View;
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v5}, Lcom/junerking/archery/MainActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    const v5, 0x7f05001e

    invoke-virtual {p0, v5}, Lcom/junerking/archery/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/junerking/archery/MainActivity;->fakeLoading:Landroid/widget/RelativeLayout;

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x1518

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/junerking/archery/MainActivity;->endLoadingTime:J

    .line 140
    new-instance v5, Lcom/junerking/archery/PurchaseHelper;

    invoke-direct {v5, p0}, Lcom/junerking/archery/PurchaseHelper;-><init>(Lcom/junerking/archery/MainActivity;)V

    iput-object v5, p0, Lcom/junerking/archery/MainActivity;->purchaseHelper:Lcom/junerking/archery/PurchaseHelper;

    .line 145
    :try_start_3
    const-string v5, "11c46686-568e-4961-89f4-bd311d5dd44f"

    const-string v6, "ORPFx2VksT0qlnfGsWyU"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 150
    :goto_4
    return-void

    .line 65
    .end local v3    # "mainLayout":Landroid/view/View;
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 71
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 72
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 118
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    iput-wide v5, p0, Lcom/junerking/archery/MainActivity;->serverTime:J

    goto :goto_3

    .line 147
    .restart local v3    # "mainLayout":Landroid/view/View;
    :catch_2
    move-exception v1

    .line 148
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 56
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "mainLayout":Landroid/view/View;
    .end local v4    # "version":I
    :catch_3
    move-exception v5

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 189
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onDestroy()V

    .line 190
    invoke-static {}, Lcom/doodlemobile/gamecenter/Platform;->onDestroy()V

    .line 191
    iget-object v0, p0, Lcom/junerking/archery/MainActivity;->purchaseHelper:Lcom/junerking/archery/PurchaseHelper;

    invoke-virtual {v0}, Lcom/junerking/archery/PurchaseHelper;->onDestroy()V

    .line 192
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 196
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/junerking/archery/MainActivity;->internalIsFullScreenSmallShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/junerking/archery/MainActivity;->internalHideFullScreenSmall()V

    .line 198
    const-string v0, "PanelExitGame"

    const-string v1, "Hide"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const/4 v0, 0x1

    .line 201
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/unity3d/player/UnityPlayerActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 166
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onPause()V

    .line 167
    invoke-static {}, Lcom/doodlemobile/gamecenter/Platform;->onPause()V

    .line 168
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 171
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onResume()V

    .line 172
    invoke-static {}, Lcom/doodlemobile/gamecenter/Platform;->onResume()V

    .line 174
    :try_start_0
    const-string v1, "82970316393ed74233500a115f2a5b66"

    const/4 v2, 0x0

    const/4 v3, 0x0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 161
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onStart()V

    .line 162
    iget-object v0, p0, Lcom/junerking/archery/MainActivity;->FLURRY_ID:Ljava/lang/String;

    .line 163
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 182
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onStop()V

    .line 184
    invoke-static {}, Lcom/doodlemobile/gamecenter/Platform;->onStop()V

    .line 185
    return-void
.end method

.method public setAdsFree(Z)V
    .locals 1
    .param p1, "free"    # Z

    .prologue
    .line 472
    iget-object v0, p0, Lcom/junerking/archery/MainActivity;->doodleHelper:Lcom/junerking/archery/DoodleHelper;

    invoke-virtual {v0, p1}, Lcom/junerking/archery/DoodleHelper;->setAdsFree(Z)V

    .line 473
    return-void
.end method
