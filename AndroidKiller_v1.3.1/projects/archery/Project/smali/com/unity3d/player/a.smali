.class final Lcom/unity3d/player/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/z;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/player/a$a;
    }
.end annotation


# instance fields
.field private final a:[Ljava/lang/Object;

.field private b:Lcom/unity3d/player/e;

.field private c:Landroid/hardware/Camera;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method constructor <init>(IIII)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/unity3d/player/a;->a:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/a;->c:Landroid/hardware/Camera;

    iput v1, p0, Lcom/unity3d/player/a;->d:I

    iput v1, p0, Lcom/unity3d/player/a;->e:I

    iput v1, p0, Lcom/unity3d/player/a;->f:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/unity3d/player/a;->g:I

    if-nez p2, :cond_0

    const/16 p2, 0x280

    :cond_0
    if-nez p3, :cond_1

    const/16 p3, 0x1e0

    :cond_1
    if-nez p4, :cond_2

    const/16 p4, 0x18

    :cond_2
    iput p1, p0, Lcom/unity3d/player/a;->g:I

    iput p4, p0, Lcom/unity3d/player/a;->j:I

    iput p2, p0, Lcom/unity3d/player/a;->h:I

    iput p3, p0, Lcom/unity3d/player/a;->i:I

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/a;)Landroid/hardware/Camera;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/a;->c:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic b(Lcom/unity3d/player/a;)[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/a;->a:[Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method final a()I
    .locals 1

    iget v0, p0, Lcom/unity3d/player/a;->f:I

    return v0
.end method

.method final a(Lcom/unity3d/player/a$a;)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/unity3d/player/a;->a:[Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-ge v2, v3, :cond_0

    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/unity3d/player/a;->c:Landroid/hardware/Camera;

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/unity3d/player/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/unity3d/player/a;->h:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/unity3d/player/a;->i:I

    int-to-double v11, v2

    int-to-double v13, v3

    invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v3

    const/4 v2, 0x0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    const-wide v5, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v7, v2

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    int-to-double v3, v3

    div-double v3, v11, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    iget v15, v2, Landroid/hardware/Camera$Size;->height:I

    int-to-double v15, v15

    div-double v15, v13, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->log(D)D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    add-double/2addr v3, v15

    cmpg-double v15, v3, v5

    if-gez v15, :cond_c

    move-wide/from16 v17, v3

    move-object v4, v2

    move-wide/from16 v2, v17

    :goto_2
    move-wide v5, v2

    move-object v7, v4

    goto :goto_1

    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/unity3d/player/a;->g:I

    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/unity3d/player/a;->c:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v9

    throw v2

    :cond_1
    :try_start_1
    iget v2, v7, Landroid/hardware/Camera$Size;->width:I

    iget v3, v7, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v10, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-ge v2, v3, :cond_5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/unity3d/player/a;->j:I

    invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v2, 0x0

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int v2, v5, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v2, v4, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v3, :cond_b

    move v3, v4

    :goto_4
    move v5, v3

    move v3, v2

    goto :goto_3

    :cond_2
    const/16 v5, 0x18

    :cond_3
    invoke-virtual {v10, v5}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    const-string v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/unity3d/player/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v2, v10}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v4

    iget v2, v7, Landroid/hardware/Camera$Size;->height:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/unity3d/player/a;->e:I

    iget v2, v7, Landroid/hardware/Camera$Size;->width:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/unity3d/player/a;->f:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x8

    if-lt v2, v5, :cond_7

    invoke-static {v4}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v2

    iget v5, v7, Landroid/hardware/Camera$Size;->width:I

    iget v6, v7, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v5, v6

    mul-int/2addr v5, v2

    div-int/lit8 v5, v5, 0x8

    add-int/lit16 v5, v5, 0x1000

    move-object/from16 v0, p0

    iput v5, v0, Lcom/unity3d/player/a;->d:I

    const-string v5, ", bpp=%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_6
    const-string v5, "cam[%d]: size = %dx%d; format=%d, fps=%s%s"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/unity3d/player/a;->g:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lcom/unity3d/player/a;->f:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget v8, v0, Lcom/unity3d/player/a;->e:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v7

    const/4 v4, 0x4

    aput-object v3, v6, v4

    const/4 v3, 0x5

    aput-object v2, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/unity3d/player/l;->Log(ILjava/lang/String;)V

    new-instance v2, Lcom/unity3d/player/a$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/unity3d/player/a$2;-><init>(Lcom/unity3d/player/a;Lcom/unity3d/player/a$a;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    if-ge v3, v4, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unity3d/player/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/unity3d/player/a;->b:Lcom/unity3d/player/e;

    if-nez v2, :cond_4

    new-instance v2, Lcom/unity3d/player/a$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/unity3d/player/a$1;-><init>(Lcom/unity3d/player/a;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/unity3d/player/a;->b:Lcom/unity3d/player/e;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/unity3d/player/a;->b:Lcom/unity3d/player/e;

    invoke-virtual {v2}, Lcom/unity3d/player/e;->a()V

    :cond_4
    monitor-exit v9

    return-void

    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/unity3d/player/a;->j:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-double v11, v2

    invoke-virtual {v10}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_a

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v2

    :goto_8
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    const-wide v5, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object v8, v2

    :goto_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    const/4 v3, 0x0

    aget v3, v2, v3

    int-to-double v3, v3

    div-double v3, v11, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const/4 v14, 0x1

    aget v14, v2, v14

    int-to-double v14, v14

    div-double v14, v11, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    add-double/2addr v3, v14

    cmpg-double v14, v3, v5

    if-gez v14, :cond_9

    move-wide/from16 v17, v3

    move-object v4, v2

    move-wide/from16 v2, v17

    :goto_a
    move-wide v5, v2

    move-object v8, v4

    goto :goto_9

    :cond_6
    const/4 v2, 0x0

    aget v2, v8, v2

    const/4 v3, 0x1

    aget v3, v8, v3

    invoke-virtual {v10, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    const-string v2, "(%d, %d)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, v8, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget v5, v8, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_5

    :cond_7
    const-string v2, ""

    goto/16 :goto_6

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unity3d/player/a;->c:Landroid/hardware/Camera;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/unity3d/player/a;->d:I

    new-array v4, v4, [B

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unity3d/player/a;->c:Landroid/hardware/Camera;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/unity3d/player/a;->d:I

    new-array v4, v4, [B

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unity3d/player/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_7

    :cond_9
    move-wide v2, v5

    move-object v4, v8

    goto :goto_a

    :cond_a
    move-object v3, v2

    goto/16 :goto_8

    :cond_b
    move v2, v3

    move v3, v5

    goto/16 :goto_4

    :cond_c
    move-wide v2, v5

    move-object v4, v7

    goto/16 :goto_2
.end method

.method public final a([B)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/a;->c:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    :cond_0
    return-void
.end method

.method final b()I
    .locals 1

    iget v0, p0, Lcom/unity3d/player/a;->e:I

    return v0
.end method

.method final c()I
    .locals 1

    iget v0, p0, Lcom/unity3d/player/a;->g:I

    return v0
.end method

.method final d()V
    .locals 3

    iget-object v1, p0, Lcom/unity3d/player/a;->a:[Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/a;->c:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-ge v0, v2, :cond_2

    iget-object v0, p0, Lcom/unity3d/player/a;->c:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :goto_0
    iget-object v0, p0, Lcom/unity3d/player/a;->c:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/a;->c:Landroid/hardware/Camera;

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/a;->b:Lcom/unity3d/player/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unity3d/player/a;->b:Lcom/unity3d/player/e;

    invoke-virtual {v0}, Lcom/unity3d/player/e;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/a;->b:Lcom/unity3d/player/e;

    :cond_1
    monitor-exit v1

    return-void

    :cond_2
    iget-object v0, p0, Lcom/unity3d/player/a;->c:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
