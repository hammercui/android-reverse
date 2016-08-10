.class final Lcom/unity3d/player/UnityPlayer$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->setScreenSize(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Z

.field private synthetic b:Landroid/view/SurfaceView;

.field private synthetic c:I

.field private synthetic d:I


# direct methods
.method constructor <init>(ZLandroid/view/SurfaceView;II)V
    .locals 0

    iput-boolean p1, p0, Lcom/unity3d/player/UnityPlayer$7;->a:Z

    iput-object p2, p0, Lcom/unity3d/player/UnityPlayer$7;->b:Landroid/view/SurfaceView;

    iput p3, p0, Lcom/unity3d/player/UnityPlayer$7;->c:I

    iput p4, p0, Lcom/unity3d/player/UnityPlayer$7;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer$7;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$7;->b:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    :goto_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$7;->b:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->invalidate()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$7;->b:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Lcom/unity3d/player/UnityPlayer$7;->c:I

    iget v2, p0, Lcom/unity3d/player/UnityPlayer$7;->d:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    goto :goto_0
.end method
