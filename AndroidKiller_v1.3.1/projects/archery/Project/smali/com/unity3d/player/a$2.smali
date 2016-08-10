.class final Lcom/unity3d/player/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/unity3d/player/a$a;

.field private synthetic b:Lcom/unity3d/player/a;


# direct methods
.method constructor <init>(Lcom/unity3d/player/a;Lcom/unity3d/player/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/a$2;->b:Lcom/unity3d/player/a;

    iput-object p2, p0, Lcom/unity3d/player/a$2;->a:Lcom/unity3d/player/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/a$2;->b:Lcom/unity3d/player/a;

    invoke-static {v0}, Lcom/unity3d/player/a;->a(Lcom/unity3d/player/a;)Landroid/hardware/Camera;

    move-result-object v0

    if-eq v0, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/a$2;->a:Lcom/unity3d/player/a$a;

    iget-object v1, p0, Lcom/unity3d/player/a$2;->b:Lcom/unity3d/player/a;

    invoke-interface {v0, v1, p1}, Lcom/unity3d/player/a$a;->onCameraFrame(Lcom/unity3d/player/a;[B)V

    goto :goto_0
.end method
