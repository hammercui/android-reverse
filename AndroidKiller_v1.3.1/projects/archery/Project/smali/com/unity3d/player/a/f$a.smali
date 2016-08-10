.class public final enum Lcom/unity3d/player/a/f$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcom/unity3d/player/a/f$a;

.field public static final enum b:Lcom/unity3d/player/a/f$a;

.field public static final enum c:Lcom/unity3d/player/a/f$a;

.field public static final enum d:Lcom/unity3d/player/a/f$a;

.field public static final enum e:Lcom/unity3d/player/a/f$a;

.field private static enum f:Lcom/unity3d/player/a/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/unity3d/player/a/f$a;

    const-string v1, "INVALID_PACKAGE_NAME"

    invoke-direct {v0, v1, v3}, Lcom/unity3d/player/a/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/player/a/f$a;->a:Lcom/unity3d/player/a/f$a;

    new-instance v0, Lcom/unity3d/player/a/f$a;

    const-string v1, "NON_MATCHING_UID"

    invoke-direct {v0, v1, v4}, Lcom/unity3d/player/a/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/player/a/f$a;->b:Lcom/unity3d/player/a/f$a;

    new-instance v0, Lcom/unity3d/player/a/f$a;

    const-string v1, "NOT_MARKET_MANAGED"

    invoke-direct {v0, v1, v5}, Lcom/unity3d/player/a/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/player/a/f$a;->c:Lcom/unity3d/player/a/f$a;

    new-instance v0, Lcom/unity3d/player/a/f$a;

    const-string v1, "CHECK_IN_PROGRESS"

    invoke-direct {v0, v1, v6}, Lcom/unity3d/player/a/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/player/a/f$a;->f:Lcom/unity3d/player/a/f$a;

    new-instance v0, Lcom/unity3d/player/a/f$a;

    const-string v1, "INVALID_PUBLIC_KEY"

    invoke-direct {v0, v1, v7}, Lcom/unity3d/player/a/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/player/a/f$a;->d:Lcom/unity3d/player/a/f$a;

    new-instance v0, Lcom/unity3d/player/a/f$a;

    const-string v1, "MISSING_PERMISSION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/unity3d/player/a/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/player/a/f$a;->e:Lcom/unity3d/player/a/f$a;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/unity3d/player/a/f$a;

    sget-object v1, Lcom/unity3d/player/a/f$a;->a:Lcom/unity3d/player/a/f$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unity3d/player/a/f$a;->b:Lcom/unity3d/player/a/f$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/unity3d/player/a/f$a;->c:Lcom/unity3d/player/a/f$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/unity3d/player/a/f$a;->f:Lcom/unity3d/player/a/f$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/unity3d/player/a/f$a;->d:Lcom/unity3d/player/a/f$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/unity3d/player/a/f$a;->e:Lcom/unity3d/player/a/f$a;

    aput-object v2, v0, v1

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
