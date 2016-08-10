.class public Lcom/doodlemobile/gamecenter/fullscreen/Resources;
.super Ljava/lang/Object;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/doodlemobile/gamecenter/fullscreen/Resources$FullScreenCloseListener;,
        Lcom/doodlemobile/gamecenter/fullscreen/Resources$FullScreenTaskBeginListener;,
        Lcom/doodlemobile/gamecenter/fullscreen/Resources$GetFullScreenResultListener;,
        Lcom/doodlemobile/gamecenter/fullscreen/Resources$GetServerTimeListener;
    }
.end annotation


# static fields
.field public static admobViewR:I

.field public static featureView:Landroid/view/View;

.field public static featureViewR:I

.field public static fullScreen:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;

.field public static fullScreenCloseListener:Lcom/doodlemobile/gamecenter/fullscreen/Resources$FullScreenCloseListener;

.field public static fullScreenImage:Landroid/graphics/Bitmap;

.field public static fullScreenImage_small:Landroid/graphics/Bitmap;

.field public static fullScreenTaskBeginListener:Lcom/doodlemobile/gamecenter/fullscreen/Resources$FullScreenTaskBeginListener;

.field public static fullScreen_small:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;

.field public static getFullScreenResultListener:Lcom/doodlemobile/gamecenter/fullscreen/Resources$GetFullScreenResultListener;

.field public static getTimeListener:Lcom/doodlemobile/gamecenter/fullscreen/Resources$GetServerTimeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 9
    sput-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreen:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayout;

    .line 10
    sput-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreen_small:Lcom/doodlemobile/gamecenter/fullscreen/FullScreenLayoutSmall;

    .line 11
    sput-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreenImage:Landroid/graphics/Bitmap;

    .line 12
    sput-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreenImage_small:Landroid/graphics/Bitmap;

    .line 13
    sput-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->featureView:Landroid/view/View;

    .line 14
    sput v1, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->featureViewR:I

    .line 15
    sput v1, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->admobViewR:I

    .line 17
    sput-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->getTimeListener:Lcom/doodlemobile/gamecenter/fullscreen/Resources$GetServerTimeListener;

    .line 18
    sput-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->getFullScreenResultListener:Lcom/doodlemobile/gamecenter/fullscreen/Resources$GetFullScreenResultListener;

    .line 19
    sput-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreenTaskBeginListener:Lcom/doodlemobile/gamecenter/fullscreen/Resources$FullScreenTaskBeginListener;

    .line 20
    sput-object v0, Lcom/doodlemobile/gamecenter/fullscreen/Resources;->fullScreenCloseListener:Lcom/doodlemobile/gamecenter/fullscreen/Resources$FullScreenCloseListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
