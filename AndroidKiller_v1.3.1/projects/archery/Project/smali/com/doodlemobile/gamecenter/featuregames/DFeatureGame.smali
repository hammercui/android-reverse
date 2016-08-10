.class public Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;
.super Ljava/lang/Object;
.source "DFeatureGame.java"


# instance fields
.field public mBitmap:Landroid/graphics/Bitmap;

.field public mCompanyName:Ljava/lang/String;

.field public mGameName:Ljava/lang/String;

.field public mMarketUri:Ljava/lang/String;

.field public priority:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 1
    .param p1, "mCompanyName"    # Ljava/lang/String;
    .param p2, "mGameName"    # Ljava/lang/String;
    .param p3, "mMarketUri"    # Ljava/lang/String;
    .param p4, "mBitmap"    # Landroid/graphics/Bitmap;
    .param p5, "priority"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;->mBitmap:Landroid/graphics/Bitmap;

    .line 13
    iput-object p2, p0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;->mGameName:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;->mCompanyName:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;->mMarketUri:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;->mBitmap:Landroid/graphics/Bitmap;

    .line 17
    iput p5, p0, Lcom/doodlemobile/gamecenter/featuregames/DFeatureGame;->priority:I

    .line 18
    return-void
.end method
