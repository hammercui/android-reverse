.class final Lcom/unity3d/player/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/unity3d/player/p;


# direct methods
.method constructor <init>(Lcom/unity3d/player/p;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/u;->a:Lcom/unity3d/player/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/unity3d/player/u;->a:Lcom/unity3d/player/p;

    invoke-static {v0}, Lcom/unity3d/player/p;->e(Lcom/unity3d/player/p;)Lcom/unity3d/player/UnityPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/player/u;->a:Lcom/unity3d/player/p;

    invoke-static {v1}, Lcom/unity3d/player/p;->r(Lcom/unity3d/player/p;)[F

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/unity3d/player/u;->a:Lcom/unity3d/player/p;

    invoke-static {v2}, Lcom/unity3d/player/p;->r(Lcom/unity3d/player/p;)[F

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/unity3d/player/u;->a:Lcom/unity3d/player/p;

    invoke-static {v3}, Lcom/unity3d/player/p;->r(Lcom/unity3d/player/p;)[F

    move-result-object v3

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lcom/unity3d/player/u;->a:Lcom/unity3d/player/p;

    invoke-static {v4}, Lcom/unity3d/player/p;->r(Lcom/unity3d/player/p;)[F

    move-result-object v4

    const/4 v5, 0x3

    aget v4, v4, v5

    iget-object v5, p0, Lcom/unity3d/player/u;->a:Lcom/unity3d/player/p;

    invoke-static {}, Lcom/unity3d/player/p;->f()J

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Lcom/unity3d/player/UnityPlayer;->nativeAttitude(FFFFJ)V

    return-void
.end method
