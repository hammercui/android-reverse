.class final enum Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference$From;
.super Ljava/lang/Enum;
.source "LoadNetworkElsePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "From"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference$From;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Cache:Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference$From;

.field private static final synthetic ENUM$VALUES:[Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference$From;

.field public static final enum Net:Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference$From;

.field public static final enum Nowhere:Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference$From;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference$From;

    const-string v1, "Net"

    invoke-direct {v0, v1, v2}, Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference$From;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference$From;->Net:Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference$From;

    new-instance v0, Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference$From;

    const-string v1, "Cache"

    invoke-direct {v0, v1, v3}, Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference$From;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference$From;->Cache:Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference$From;

    new-instance v0, Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference$From;

    const-string v1, "Nowhere"

    invoke-direct {v0, v1, v4}, Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference$From;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference$From;->Nowhere:Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference$From;

    .line 12
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference$From;

    sget-object v1, Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference$From;->Net:Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference$From;

    aput-object v1, v0, v2

    sget-object v1, Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference$From;->Cache:Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference$From;

    aput-object v1, v0, v3

    sget-object v1, Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference$From;->Nowhere:Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference$From;

    aput-object v1, v0, v4

    sput-object v0, Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference$From;->ENUM$VALUES:[Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference$From;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference$From;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference$From;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference$From;

    return-object v0
.end method

.method public static values()[Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference$From;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference$From;->ENUM$VALUES:[Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference$From;

    array-length v1, v0

    new-array v2, v1, [Lcom/doodlemobile/gamecenter/fullscreen/strategy/LoadNetworkElsePreference$From;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
