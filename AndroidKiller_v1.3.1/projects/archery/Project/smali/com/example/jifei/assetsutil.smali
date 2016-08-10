.class public Lcom/example/jifei/assetsutil;
.super Ljava/lang/Object;
.source "assetsutil.java"


# static fields
.field public static mactivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImageFromAssetsFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 15
    const/4 v2, 0x0

    .line 16
    .local v2, "image":Landroid/graphics/Bitmap;
    sget-object v4, Lcom/example/jifei/assetsutil;->mactivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 18
    .local v0, "am":Landroid/content/res/AssetManager;
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 19
    .local v3, "is":Ljava/io/InputStream;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 20
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .end local v3    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 21
    :catch_0
    move-exception v1

    .line 22
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
