.class Lcom/unity3d/player/UnityJavaRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/unity3d/player/UnityJavaRunnable;->a:I

    return-void
.end method

.method private native nativeFinalize(I)V
.end method

.method private native nativeRun(I)V
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/unity3d/player/UnityJavaRunnable;->a:I

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityJavaRunnable;->nativeFinalize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public run()V
    .locals 1

    iget v0, p0, Lcom/unity3d/player/UnityJavaRunnable;->a:I

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityJavaRunnable;->nativeRun(I)V

    return-void
.end method
