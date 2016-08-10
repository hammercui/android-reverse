.class final Lcom/unity3d/player/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/UnityPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/aa;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    sget-boolean v0, Lcom/unity3d/player/n;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/player/n;->b:Lcom/unity3d/player/j;

    iget-object v0, p0, Lcom/unity3d/player/aa;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->j(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/UnityGL;

    move-result-object v0

    check-cast v0, Lcom/unity3d/player/z;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/aa;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->j(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/UnityGL;

    move-result-object v0

    invoke-interface {v0}, Lcom/unity3d/player/UnityGL;->onPause()V

    iget-object v0, p0, Lcom/unity3d/player/aa;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->j(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/UnityGL;

    move-result-object v0

    invoke-interface {v0}, Lcom/unity3d/player/UnityGL;->onResume()V

    sget-boolean v0, Lcom/unity3d/player/n;->a:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/unity3d/player/n;->b:Lcom/unity3d/player/j;

    iget-object v0, p0, Lcom/unity3d/player/aa;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->j(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/UnityGL;

    move-result-object v0

    check-cast v0, Lcom/unity3d/player/z;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    :cond_1
    return-void
.end method
