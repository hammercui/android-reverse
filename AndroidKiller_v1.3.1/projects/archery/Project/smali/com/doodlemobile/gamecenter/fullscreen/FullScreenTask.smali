.class public Lcom/doodlemobile/gamecenter/fullscreen/FullScreenTask;
.super Landroid/os/AsyncTask;
.source "FullScreenTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lorg/apache/http/NameValuePair;",
        "Ljava/lang/Integer;",
        "Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;",
        ">;"
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private hasCancelled:Z

.field private strategy:Lcom/doodlemobile/gamecenter/fullscreen/GetFSGameStrategy;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenTask;->hasCancelled:Z

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenTask;->activity:Landroid/app/Activity;

    .line 24
    invoke-static {}, Lcom/doodlemobile/gamecenter/Platform;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenTask;->activity:Landroid/app/Activity;

    .line 26
    new-instance v0, Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenTask;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenTask;->strategy:Lcom/doodlemobile/gamecenter/fullscreen/GetFSGameStrategy;

    .line 27
    return-void
.end method

.method private checkOrientation(Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;)V
    .locals 3
    .param p1, "game"    # Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;

    .prologue
    .line 105
    const/4 v0, 0x2

    invoke-static {}, Lcom/doodlemobile/gamecenter/Platform;->getOrientation()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 106
    iget-object v0, p1, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;->imageURI:Ljava/lang/String;

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p1, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;->imageURI:Ljava/lang/String;

    const-string v1, ".jpg"

    const-string v2, "_l.jpg"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;->imageURI:Ljava/lang/String;

    .line 108
    :cond_0
    iget-object v0, p1, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;->imageURI:Ljava/lang/String;

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p1, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;->imageURI:Ljava/lang/String;

    const-string v1, ".png"

    const-string v2, "_l.png"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;->imageURI:Ljava/lang/String;

    .line 111
    :cond_1
    return-void
.end method


# virtual methods
.method public cancelTask()V
    .locals 2

    .prologue
    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenTask;->hasCancelled:Z

    .line 115
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenTask;->cancel(Z)Z

    .line 117
    :cond_0
    return-void
.end method

.method protected varargs doInBackground([Lorg/apache/http/NameValuePair;)Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;
    .locals 8
    .param p1, "params"    # [Lorg/apache/http/NameValuePair;

    .prologue
    const/4 v4, 0x0

    .line 30
    iget-object v5, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenTask;->activity:Landroid/app/Activity;

    if-nez v5, :cond_1

    move-object v2, v4

    .line 64
    :cond_0
    :goto_0
    return-object v2

    .line 35
    :cond_1
    :try_start_0
    const-string v5, "FullScreen"

    const-string v6, "get full screen game"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v5, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenTask;->strategy:Lcom/doodlemobile/gamecenter/fullscreen/GetFSGameStrategy;

    invoke-virtual {v5}, Lcom/doodlemobile/gamecenter/fullscreen/GetFSGameStrategy;->getFSGame()Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;

    move-result-object v2

    .line 37
    .local v2, "game":Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;
    if-nez v2, :cond_2

    move-object v2, v4

    goto :goto_0

    .line 40
    :cond_2
    const-string v5, "FullScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "get full screen image "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v2, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;->imageURI:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-direct {p0, v2}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenTask;->checkOrientation(Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;)V

    .line 42
    iget-object v5, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenTask;->activity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/doodlemobile/gamecenter/cache/ImageCache;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/cache/ImageCache;

    move-result-object v3

    .line 43
    .local v3, "imageCache":Lcom/doodlemobile/gamecenter/cache/ImageCache;
    iget-object v5, v2, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;->imageURI:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/doodlemobile/gamecenter/cache/ImageCache;->isExist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 44
    iget-object v5, v2, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;->imageURI:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/doodlemobile/gamecenter/cache/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    sput-object v5, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreenImage:Landroid/graphics/Bitmap;

    .line 45
    iget-object v5, v2, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;->imageURI:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/doodlemobile/gamecenter/cache/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    sput-object v5, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreenImage_small:Landroid/graphics/Bitmap;

    .line 55
    :cond_3
    :goto_1
    sget-object v5, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreenImage:Landroid/graphics/Bitmap;

    if-nez v5, :cond_0

    .line 56
    const-string v5, "FullScreen"

    const-string v6, "image can not be ready"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 57
    goto :goto_0

    .line 47
    :cond_4
    const-string v5, "imageURI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v2, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;->imageURI:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v5, v2, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;->imageURI:Ljava/lang/String;

    invoke-static {v5}, Lcom/doodlemobile/gamecenter/net/DHttpClient;->downloadImage(Ljava/lang/String;)[B

    move-result-object v0

    .line 49
    .local v0, "bytes":[B
    if-eqz v0, :cond_3

    .line 50
    iget-object v5, v2, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;->imageURI:Ljava/lang/String;

    invoke-virtual {v3, v5, v0}, Lcom/doodlemobile/gamecenter/cache/ImageCache;->put(Ljava/lang/String;[B)V

    .line 51
    const/4 v5, 0x0

    array-length v6, v0

    invoke-static {v0, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    sput-object v5, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreenImage:Landroid/graphics/Bitmap;

    .line 52
    const/4 v5, 0x0

    array-length v6, v0

    invoke-static {v0, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v5

    sput-object v5, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreenImage_small:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 61
    .end local v0    # "bytes":[B
    .end local v2    # "game":Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;
    .end local v3    # "imageCache":Lcom/doodlemobile/gamecenter/cache/ImageCache;
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    move-object v2, v4

    .line 64
    goto/16 :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Lorg/apache/http/NameValuePair;

    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenTask;->doInBackground([Lorg/apache/http/NameValuePair;)Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    sput-object v1, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreen:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;

    .line 96
    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreenImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreenImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreenImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 99
    :cond_0
    sput-object v1, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreenImage:Landroid/graphics/Bitmap;

    .line 100
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 101
    return-void
.end method

.method protected onPostExecute(Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;)V
    .locals 5
    .param p1, "game"    # Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;

    .prologue
    .line 70
    const-string v0, "DefaultFullScreenResult"

    .line 71
    .local v0, "message":Ljava/lang/String;
    const/4 v1, -0x1

    .line 72
    .local v1, "retCode":I
    iget-boolean v2, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenTask;->hasCancelled:Z

    if-eqz v2, :cond_1

    .line 73
    const-string v0, "FullScreenTask has cancelled!"

    .line 88
    :goto_0
    sget-object v2, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->getFullScreenResultListener:Lcom/doodlemobile/gamecenter/fullscreen/Resources$GetFullScreenResultListener;

    if-eqz v2, :cond_0

    .line 89
    sget-object v2, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->getFullScreenResultListener:Lcom/doodlemobile/gamecenter/fullscreen/Resources$GetFullScreenResultListener;

    invoke-interface {v2, v0, v1}, Lcom/doodlemobile/gamecenter/fullscreen/Resources$GetFullScreenResultListener;->onFullScreenResultRecived(Ljava/lang/String;I)V

    .line 91
    :cond_0
    :goto_1
    return-void

    .line 75
    :cond_1
    if-nez p1, :cond_2

    .line 76
    const-string v0, "none display!cache will be deleted"

    .line 77
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenTask;->strategy:Lcom/doodlemobile/gamecenter/fullscreen/GetFSGameStrategy;

    invoke-virtual {v2}, Lcom/doodlemobile/gamecenter/fullscreen/GetFSGameStrategy;->deleteCache()V

    goto :goto_1

    .line 80
    :cond_2
    const-string v0, "FullScreenReady"

    .line 81
    const/4 v1, 0x0

    .line 82
    new-instance v2, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;

    iget-object v3, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenTask;->activity:Landroid/app/Activity;

    sget-object v4, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreenImage:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, p1, v4}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;-><init>(Landroid/app/Activity;Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;Landroid/graphics/Bitmap;)V

    sput-object v2, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreen:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;

    .line 83
    new-instance v2, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;

    iget-object v3, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenTask;->activity:Landroid/app/Activity;

    sget-object v4, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreenImage_small:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, p1, v4}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;-><init>(Landroid/app/Activity;Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;Landroid/graphics/Bitmap;)V

    sput-object v2, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreen_small:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;

    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenTask;->onPostExecute(Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;)V

    return-void
.end method
