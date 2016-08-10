.class public Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;
.super Ljava/lang/Object;
.source "FullScreenGame.java"


# static fields
.field private static final PRIFIX:Ljava/lang/String; = "market://details?id="


# instance fields
.field public entireTimes:I

.field public gameIndex:I

.field public imageURI:Ljava/lang/String;

.field public lastModified:J

.field public packageName:Ljava/lang/String;

.field public timesCounter:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "imageURI"    # Ljava/lang/String;
    .param p3, "gameIndex"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;->packageName:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;->imageURI:Ljava/lang/String;

    .line 21
    iput p3, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;->gameIndex:I

    .line 22
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;->lastModified:J

    .line 23
    return-void
.end method


# virtual methods
.method public getMarketURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "market://details?id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEntiredAccrodingToLastModified()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 34
    iget-wide v3, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;->lastModified:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 36
    :cond_0
    :goto_0
    return v2

    .line 35
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 36
    .local v0, "now":J
    iget-wide v3, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;->lastModified:J

    sub-long v3, v0, v3

    const-wide/32 v5, 0x5265c00

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isEntiredAccrodingToTimes()Z
    .locals 2

    .prologue
    .line 30
    iget v0, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;->entireTimes:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;->timesCounter:I

    iget v1, p0, Lcom/doodlemobile/gamecenter/fullscreen/FullScreenGame;->entireTimes:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
