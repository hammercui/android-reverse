.class public Lcom/doodlemobile/gamecenter/cache/ImageCache;
.super Lcom/doodlemobile/gamecenter/cache/DMCache;
.source "ImageCache.java"


# static fields
.field private static imageCache:Lcom/doodlemobile/gamecenter/cache/ImageCache;


# instance fields
.field fileIO:Lcom/doodlemobile/gamecenter/cache/IFileIO;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/doodlemobile/gamecenter/cache/ImageCache;->imageCache:Lcom/doodlemobile/gamecenter/cache/ImageCache;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/cache/DMCache;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/cache/ImageCache;->fileIO:Lcom/doodlemobile/gamecenter/cache/IFileIO;

    .line 21
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/cache/ImageCache;->hasSDCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    new-instance v0, Lcom/doodlemobile/gamecenter/cache/ExternalStorageIO;

    invoke-direct {v0}, Lcom/doodlemobile/gamecenter/cache/ExternalStorageIO;-><init>()V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/cache/ImageCache;->fileIO:Lcom/doodlemobile/gamecenter/cache/IFileIO;

    .line 26
    :goto_0
    return-void

    .line 24
    :cond_0
    new-instance v0, Lcom/doodlemobile/gamecenter/cache/InternalStorageIO;

    invoke-direct {v0, p1}, Lcom/doodlemobile/gamecenter/cache/InternalStorageIO;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/cache/ImageCache;->fileIO:Lcom/doodlemobile/gamecenter/cache/IFileIO;

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/cache/ImageCache;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    sget-object v0, Lcom/doodlemobile/gamecenter/cache/ImageCache;->imageCache:Lcom/doodlemobile/gamecenter/cache/ImageCache;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/doodlemobile/gamecenter/cache/ImageCache;

    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/cache/ImageCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/doodlemobile/gamecenter/cache/ImageCache;->imageCache:Lcom/doodlemobile/gamecenter/cache/ImageCache;

    .line 17
    :cond_0
    sget-object v0, Lcom/doodlemobile/gamecenter/cache/ImageCache;->imageCache:Lcom/doodlemobile/gamecenter/cache/ImageCache;

    return-object v0
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 2
    .param p1, "imageURI"    # Ljava/lang/String;

    .prologue
    .line 50
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/doodlemobile/des/DBase64;->encode([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 51
    .local v0, "filename":Ljava/lang/String;
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/cache/ImageCache;->fileIO:Lcom/doodlemobile/gamecenter/cache/IFileIO;

    invoke-interface {v1, v0}, Lcom/doodlemobile/gamecenter/cache/IFileIO;->deleteFile(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "imageURI"    # Ljava/lang/String;

    .prologue
    .line 40
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/doodlemobile/des/DBase64;->encode([B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 41
    .local v2, "filename":Ljava/lang/String;
    iget-object v3, p0, Lcom/doodlemobile/gamecenter/cache/ImageCache;->fileIO:Lcom/doodlemobile/gamecenter/cache/IFileIO;

    invoke-interface {v3, v2}, Lcom/doodlemobile/gamecenter/cache/IFileIO;->getFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 42
    .local v0, "content":[B
    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v0, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 46
    .end local v0    # "content":[B
    .end local v2    # "filename":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 43
    :catch_0
    move-exception v1

    .line 44
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 46
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isExist(Ljava/lang/String;)Z
    .locals 2
    .param p1, "imageURI"    # Ljava/lang/String;

    .prologue
    .line 29
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/doodlemobile/des/DBase64;->encode([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 30
    .local v0, "filename":Ljava/lang/String;
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/cache/ImageCache;->fileIO:Lcom/doodlemobile/gamecenter/cache/IFileIO;

    invoke-interface {v1, v0}, Lcom/doodlemobile/gamecenter/cache/IFileIO;->hasFile(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public put(Ljava/lang/String;[B)V
    .locals 2
    .param p1, "imageURI"    # Ljava/lang/String;
    .param p2, "content"    # [B

    .prologue
    .line 34
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/doodlemobile/des/DBase64;->encode([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 35
    .local v0, "filename":Ljava/lang/String;
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/cache/ImageCache;->fileIO:Lcom/doodlemobile/gamecenter/cache/IFileIO;

    invoke-interface {v1, v0, p2}, Lcom/doodlemobile/gamecenter/cache/IFileIO;->saveFile(Ljava/lang/String;[B)V

    .line 36
    return-void
.end method
