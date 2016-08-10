.class public final enum Lcom/doodlemobile/gamecenter/DoodleAnalytics$TrackerName;
.super Ljava/lang/Enum;
.source "DoodleAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/DoodleAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TrackerName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/doodlemobile/gamecenter/DoodleAnalytics$TrackerName;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APP_TRACKER:Lcom/doodlemobile/gamecenter/DoodleAnalytics$TrackerName;

.field public static final enum ECOMMERCE_TRACKER:Lcom/doodlemobile/gamecenter/DoodleAnalytics$TrackerName;

.field private static final synthetic ENUM$VALUES:[Lcom/doodlemobile/gamecenter/DoodleAnalytics$TrackerName;

.field public static final enum GLOBAL_TRACKER:Lcom/doodlemobile/gamecenter/DoodleAnalytics$TrackerName;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lcom/doodlemobile/gamecenter/DoodleAnalytics$TrackerName;

    const-string v1, "APP_TRACKER"

    invoke-direct {v0, v1, v2}, Lcom/doodlemobile/gamecenter/DoodleAnalytics$TrackerName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/doodlemobile/gamecenter/DoodleAnalytics$TrackerName;->APP_TRACKER:Lcom/doodlemobile/gamecenter/DoodleAnalytics$TrackerName;

    .line 36
    new-instance v0, Lcom/doodlemobile/gamecenter/DoodleAnalytics$TrackerName;

    const-string v1, "GLOBAL_TRACKER"

    invoke-direct {v0, v1, v3}, Lcom/doodlemobile/gamecenter/DoodleAnalytics$TrackerName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/doodlemobile/gamecenter/DoodleAnalytics$TrackerName;->GLOBAL_TRACKER:Lcom/doodlemobile/gamecenter/DoodleAnalytics$TrackerName;

    .line 37
    new-instance v0, Lcom/doodlemobile/gamecenter/DoodleAnalytics$TrackerName;

    const-string v1, "ECOMMERCE_TRACKER"

    invoke-direct {v0, v1, v4}, Lcom/doodlemobile/gamecenter/DoodleAnalytics$TrackerName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/doodlemobile/gamecenter/DoodleAnalytics$TrackerName;->ECOMMERCE_TRACKER:Lcom/doodlemobile/gamecenter/DoodleAnalytics$TrackerName;

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/doodlemobile/gamecenter/DoodleAnalytics$TrackerName;

    sget-object v1, Lcom/doodlemobile/gamecenter/DoodleAnalytics$TrackerName;->APP_TRACKER:Lcom/doodlemobile/gamecenter/DoodleAnalytics$TrackerName;

    aput-object v1, v0, v2

    sget-object v1, Lcom/doodlemobile/gamecenter/DoodleAnalytics$TrackerName;->GLOBAL_TRACKER:Lcom/doodlemobile/gamecenter/DoodleAnalytics$TrackerName;

    aput-object v1, v0, v3

    sget-object v1, Lcom/doodlemobile/gamecenter/DoodleAnalytics$TrackerName;->ECOMMERCE_TRACKER:Lcom/doodlemobile/gamecenter/DoodleAnalytics$TrackerName;

    aput-object v1, v0, v4

    sput-object v0, Lcom/doodlemobile/gamecenter/DoodleAnalytics$TrackerName;->ENUM$VALUES:[Lcom/doodlemobile/gamecenter/DoodleAnalytics$TrackerName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/doodlemobile/gamecenter/DoodleAnalytics$TrackerName;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/doodlemobile/gamecenter/DoodleAnalytics$TrackerName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/doodlemobile/gamecenter/DoodleAnalytics$TrackerName;

    return-object v0
.end method

.method public static values()[Lcom/doodlemobile/gamecenter/DoodleAnalytics$TrackerName;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/doodlemobile/gamecenter/DoodleAnalytics$TrackerName;->ENUM$VALUES:[Lcom/doodlemobile/gamecenter/DoodleAnalytics$TrackerName;

    array-length v1, v0

    new-array v2, v1, [Lcom/doodlemobile/gamecenter/DoodleAnalytics$TrackerName;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
