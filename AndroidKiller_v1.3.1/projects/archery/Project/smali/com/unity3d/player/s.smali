.class final Lcom/unity3d/player/s;
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

    iput-object p1, p0, Lcom/unity3d/player/s;->a:Lcom/unity3d/player/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/unity3d/player/s;->a:Lcom/unity3d/player/p;

    invoke-static {v0}, Lcom/unity3d/player/p;->e(Lcom/unity3d/player/p;)Lcom/unity3d/player/UnityPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/player/s;->a:Lcom/unity3d/player/p;

    invoke-static {v1}, Lcom/unity3d/player/p;->j(Lcom/unity3d/player/p;)F

    move-result v1

    iget-object v2, p0, Lcom/unity3d/player/s;->a:Lcom/unity3d/player/p;

    invoke-static {v2}, Lcom/unity3d/player/p;->k(Lcom/unity3d/player/p;)F

    move-result v2

    iget-object v3, p0, Lcom/unity3d/player/s;->a:Lcom/unity3d/player/p;

    invoke-static {v3}, Lcom/unity3d/player/p;->l(Lcom/unity3d/player/p;)F

    move-result v3

    iget-object v4, p0, Lcom/unity3d/player/s;->a:Lcom/unity3d/player/p;

    invoke-static {v4}, Lcom/unity3d/player/p;->m(Lcom/unity3d/player/p;)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/unity3d/player/UnityPlayer;->nativeGravity(FFFJ)V

    return-void
.end method
