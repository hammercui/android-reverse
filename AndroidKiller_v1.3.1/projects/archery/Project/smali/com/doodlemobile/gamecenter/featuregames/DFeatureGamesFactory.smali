.class public Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;
.super Ljava/lang/Object;
.source "DFeatureGamesFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory$DMHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DFeatureGamesFactory"

.field private static dmHandler:Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory$DMHandler;

.field public static gInstance:Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;


# instance fields
.field public mFeatureViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/doodlemobile/gamecenter/featuregames/FeatureView;",
            ">;"
        }
    .end annotation
.end field

.field private mainHandler:Landroid/os/Handler;

.field public uninstalledFeatureGames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;

    invoke-direct {v0}, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;-><init>()V

    sput-object v0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;->gInstance:Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;

    .line 146
    const/4 v0, 0x0

    sput-object v0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;->dmHandler:Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory$DMHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;->uninstalledFeatureGames:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;->mFeatureViewList:Ljava/util/ArrayList;

    .line 131
    new-instance v0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory$1;

    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory$1;-><init>(Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;->mainHandler:Landroid/os/Handler;

    .line 26
    return-void
.end method

.method static synthetic access$0(Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;->parse(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2()Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory$DMHandler;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;->dmHandler:Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory$DMHandler;

    return-object v0
.end method

.method private parse(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 20
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "mContext"    # Landroid/content/Context;

    .prologue
    .line 45
    if-nez p1, :cond_0

    .line 46
    const-string v18, "DFeatureGamesFactory"

    const-string v19, "result = null, httpResponse.getEntity() is null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/16 v18, 0x0

    .line 118
    :goto_0
    return v18

    .line 51
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;->uninstalledFeatureGames:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 52
    invoke-static/range {p2 .. p2}, Lcom/doodlemobile/gamecenter/cache/ImageCache;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/cache/ImageCache;

    move-result-object v14

    .line 53
    .local v14, "imageCache":Lcom/doodlemobile/gamecenter/cache/ImageCache;
    new-instance v16, Lorg/json/JSONObject;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 54
    .local v16, "jsonObject":Lorg/json/JSONObject;
    const/4 v9, 0x0

    .line 55
    .local v9, "array":Lorg/json/JSONArray;
    const-string v18, "data"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 56
    .local v10, "arrayString":Ljava/lang/String;
    new-instance v9, Lorg/json/JSONArray;

    .end local v9    # "array":Lorg/json/JSONArray;
    invoke-direct {v9, v10}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 57
    .restart local v9    # "array":Lorg/json/JSONArray;
    if-nez v9, :cond_1

    .line 58
    const/16 v18, 0x0

    goto :goto_0

    .line 60
    :cond_1
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    if-lt v13, v0, :cond_2

    .line 112
    :goto_2
    const/16 v18, 0x1

    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {v9, v13}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/json/JSONObject;

    .line 62
    .local v17, "object":Lorg/json/JSONObject;
    const-string v18, "pkgname"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 63
    .local v5, "gameName":Ljava/lang/String;
    const-string v18, "description"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 64
    .local v4, "companyName":Ljava/lang/String;
    const-string v18, "marketurl"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 65
    .local v6, "marketURI":Ljava/lang/String;
    const-string v18, "imageurl"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 66
    .local v15, "imageURI":Ljava/lang/String;
    const-string v18, "priority"

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 69
    .local v8, "showProirity":I
    const/4 v7, 0x0

    .line 70
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    .line 71
    .local v11, "bytes":[B
    invoke-virtual {v14, v15}, Lcom/doodlemobile/gamecenter/cache/ImageCache;->isExist(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 72
    invoke-static {v15}, Lcom/doodlemobile/gamecenter/net/DHttpClient;->downloadImage(Ljava/lang/String;)[B

    move-result-object v11

    .line 73
    if-eqz v11, :cond_3

    array-length v0, v11

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 74
    const/16 v18, 0x0

    array-length v0, v11

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v11, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 75
    invoke-virtual {v14, v15, v11}, Lcom/doodlemobile/gamecenter/cache/ImageCache;->put(Ljava/lang/String;[B)V

    .line 91
    :cond_3
    :goto_3
    if-eqz v7, :cond_5

    invoke-static {v6}, Lcom/doodlemobile/gamecenter/utils/DGlobalParams;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;->isPackageUnInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 92
    new-instance v3, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;

    invoke-direct/range {v3 .. v8}, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 108
    .local v3, "dGame":Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;->uninstalledFeatureGames:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 113
    .end local v3    # "dGame":Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;
    .end local v4    # "companyName":Ljava/lang/String;
    .end local v5    # "gameName":Ljava/lang/String;
    .end local v6    # "marketURI":Ljava/lang/String;
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "showProirity":I
    .end local v9    # "array":Lorg/json/JSONArray;
    .end local v10    # "arrayString":Ljava/lang/String;
    .end local v11    # "bytes":[B
    .end local v13    # "i":I
    .end local v14    # "imageCache":Lcom/doodlemobile/gamecenter/cache/ImageCache;
    .end local v15    # "imageURI":Ljava/lang/String;
    .end local v16    # "jsonObject":Lorg/json/JSONObject;
    .end local v17    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v12

    .line 114
    .local v12, "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    .line 118
    .end local v12    # "e":Lorg/json/JSONException;
    :goto_4
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 78
    .restart local v4    # "companyName":Ljava/lang/String;
    .restart local v5    # "gameName":Ljava/lang/String;
    .restart local v6    # "marketURI":Ljava/lang/String;
    .restart local v7    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v8    # "showProirity":I
    .restart local v9    # "array":Lorg/json/JSONArray;
    .restart local v10    # "arrayString":Ljava/lang/String;
    .restart local v11    # "bytes":[B
    .restart local v13    # "i":I
    .restart local v14    # "imageCache":Lcom/doodlemobile/gamecenter/cache/ImageCache;
    .restart local v15    # "imageURI":Ljava/lang/String;
    .restart local v16    # "jsonObject":Lorg/json/JSONObject;
    .restart local v17    # "object":Lorg/json/JSONObject;
    :cond_4
    :try_start_1
    invoke-virtual {v14, v15}, Lcom/doodlemobile/gamecenter/cache/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    goto :goto_3

    .line 60
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 115
    .end local v4    # "companyName":Ljava/lang/String;
    .end local v5    # "gameName":Ljava/lang/String;
    .end local v6    # "marketURI":Ljava/lang/String;
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    .end local v8    # "showProirity":I
    .end local v9    # "array":Lorg/json/JSONArray;
    .end local v10    # "arrayString":Ljava/lang/String;
    .end local v11    # "bytes":[B
    .end local v13    # "i":I
    .end local v14    # "imageCache":Lcom/doodlemobile/gamecenter/cache/ImageCache;
    .end local v15    # "imageURI":Ljava/lang/String;
    .end local v16    # "jsonObject":Lorg/json/JSONObject;
    .end local v17    # "object":Lorg/json/JSONObject;
    :catch_1
    move-exception v12

    .line 116
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method


# virtual methods
.method public getGameList(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 162
    invoke-static {p1}, Lcom/doodlemobile/gamecenter/net/DNetworkStatus;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    const-string v1, "DFeatureGamesFactory"

    const-string v2, "no network"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :goto_0
    return-void

    .line 167
    :cond_0
    :try_start_0
    new-instance v1, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory$DMHandler;

    invoke-static {}, Lcom/doodlemobile/gamecenter/event/DHandlerThread;->getInstance()Lcom/doodlemobile/gamecenter/event/DHandlerThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/doodlemobile/gamecenter/event/DHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory$DMHandler;-><init>(Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;Landroid/os/Looper;)V

    sput-object v1, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;->dmHandler:Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory$DMHandler;

    .line 168
    sget-object v1, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;->dmHandler:Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory$DMHandler;

    new-instance v2, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory$2;

    invoke-direct {v2, p0, p1}, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory$2;-><init>(Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory$DMHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DFeatureGamesFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getGameList() error"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getNextUninstalledGame(Lcom/doodlemobile/gamecenter/featuregames/FeatureView;)Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;
    .locals 2
    .param p1, "featureView"    # Lcom/doodlemobile/gamecenter/featuregames/FeatureView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;->uninstalledFeatureGames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 36
    iget v0, p1, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->featureGameIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->featureGameIndex:I

    .line 37
    const/4 v0, 0x0

    .line 41
    :goto_0
    return-object v0

    .line 39
    :cond_0
    iget v0, p1, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->featureGameIndex:I

    add-int/lit8 v0, v0, 0x1

    .line 40
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;->uninstalledFeatureGames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/2addr v0, v1

    .line 39
    iput v0, p1, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->featureGameIndex:I

    .line 41
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;->uninstalledFeatureGames:Ljava/util/ArrayList;

    iget v1, p1, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->featureGameIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;

    goto :goto_0
.end method

.method public isPackageUnInstall(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packagename"    # Ljava/lang/String;

    .prologue
    .line 123
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 124
    const/16 v2, 0x2000

    .line 123
    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    const/4 v1, 0x0

    .line 127
    :goto_0
    return v1

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public registerFeatureView(Lcom/doodlemobile/gamecenter/featuregames/FeatureView;)V
    .locals 5
    .param p1, "f"    # Lcom/doodlemobile/gamecenter/featuregames/FeatureView;

    .prologue
    .line 199
    :try_start_0
    iget-object v3, p0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;->mFeatureViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 200
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 206
    :goto_1
    iget-object v3, p0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;->mFeatureViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    .end local v1    # "i":I
    .end local v2    # "size":I
    :goto_2
    return-void

    .line 201
    .restart local v1    # "i":I
    .restart local v2    # "size":I
    :cond_0
    iget-object v3, p0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;->mFeatureViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;

    invoke-virtual {v3}, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->getId()I

    move-result v3

    invoke-virtual {p1}, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->getId()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 202
    iget-object v3, p0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGamesFactory;->mFeatureViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 207
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 200
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i":I
    .restart local v2    # "size":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
