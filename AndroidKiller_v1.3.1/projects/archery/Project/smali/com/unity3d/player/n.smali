.class public final Lcom/unity3d/player/n;
.super Ljava/lang/Object;


# static fields
.field static final a:Z

.field static final b:Lcom/unity3d/player/j;

.field private static c:Z

.field private static d:Z

.field private static e:Z

.field private static f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x5

    if-lt v0, v3, :cond_4

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/unity3d/player/n;->c:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v0, v3, :cond_5

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/unity3d/player/n;->d:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_6

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/unity3d/player/n;->a:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xc

    if-lt v0, v3, :cond_7

    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/unity3d/player/n;->e:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_8

    :goto_4
    sput-boolean v1, Lcom/unity3d/player/n;->f:Z

    sget-boolean v0, Lcom/unity3d/player/n;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/unity3d/player/f;

    invoke-direct {v0}, Lcom/unity3d/player/f;-><init>()V

    :cond_0
    sget-boolean v0, Lcom/unity3d/player/n;->d:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/unity3d/player/g;

    invoke-direct {v0}, Lcom/unity3d/player/g;-><init>()V

    :cond_1
    sget-boolean v0, Lcom/unity3d/player/n;->a:Z

    if-eqz v0, :cond_9

    new-instance v0, Lcom/unity3d/player/j;

    invoke-direct {v0}, Lcom/unity3d/player/j;-><init>()V

    :goto_5
    sput-object v0, Lcom/unity3d/player/n;->b:Lcom/unity3d/player/j;

    sget-boolean v0, Lcom/unity3d/player/n;->e:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/unity3d/player/i;

    invoke-direct {v0}, Lcom/unity3d/player/i;-><init>()V

    :cond_2
    sget-boolean v0, Lcom/unity3d/player/n;->f:Z

    if-eqz v0, :cond_3

    new-instance v0, Lcom/unity3d/player/k;

    invoke-direct {v0}, Lcom/unity3d/player/k;-><init>()V

    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    move v0, v2

    goto :goto_3

    :cond_8
    move v1, v2

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
