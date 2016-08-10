.class public Lcom/doodlemobile/gamecenter/DoodleMobilePublic;
.super Ljava/lang/Object;
.source "DoodleMobilePublic.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppVersionCode()I
    .locals 1

    .prologue
    .line 11
    invoke-static {}, Lcom/doodlemobile/gamecenter/cache/DGlobalPrefences;->getAppVersionCode()I

    move-result v0

    return v0
.end method

.method public static getAppVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/doodlemobile/gamecenter/cache/DGlobalPrefences;->getAppVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
