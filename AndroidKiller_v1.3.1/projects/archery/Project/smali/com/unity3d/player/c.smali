.class public final Lcom/unity3d/player/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unity3d/player/h;


# instance fields
.field protected final a:Landroid/content/ContextWrapper;

.field private b:Landroid/app/Activity;

.field private c:Ljava/util/Queue;

.field private d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/unity3d/player/c;->c:Ljava/util/Queue;

    new-instance v0, Lcom/unity3d/player/d;

    invoke-direct {v0, p0}, Lcom/unity3d/player/d;-><init>(Lcom/unity3d/player/c;)V

    iput-object v0, p0, Lcom/unity3d/player/c;->d:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/unity3d/player/c;->a:Landroid/content/ContextWrapper;

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/Activity;

    :goto_0
    iput-object p1, p0, Lcom/unity3d/player/c;->b:Landroid/app/Activity;

    return-void

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method private static a([Landroid/view/MotionEvent$PointerCoords;[FI)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    new-instance v1, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v1}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v1, p0, v0

    add-int/lit8 v2, p2, 0x1

    aget v3, p1, p2

    iput v3, v1, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    add-int/lit8 v3, v2, 0x1

    aget v2, p1, v2

    iput v2, v1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    add-int/lit8 v2, v3, 0x1

    aget v3, p1, v3

    iput v3, v1, Landroid/view/MotionEvent$PointerCoords;->size:F

    add-int/lit8 v3, v2, 0x1

    aget v2, p1, v2

    iput v2, v1, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    add-int/lit8 v2, v3, 0x1

    aget v3, p1, v3

    iput v3, v1, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    add-int/lit8 v3, v2, 0x1

    aget v2, p1, v2

    iput v2, v1, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    add-int/lit8 v2, v3, 0x1

    aget v3, p1, v3

    iput v3, v1, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    add-int/lit8 v3, v2, 0x1

    aget v2, p1, v2

    iput v2, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-int/lit8 p2, v3, 0x1

    aget v2, p1, v3

    iput v2, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p2
.end method

.method static synthetic a(Lcom/unity3d/player/c;)Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/c;->c:Ljava/util/Queue;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    return v0
.end method

.method public final a(Landroid/view/MotionEvent;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    return v0
.end method

.method public final a(JJII[I[FIFFIIIII[J[F)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unity3d/player/c;->b:Landroid/app/Activity;

    if-eqz v1, :cond_1

    move/from16 v0, p6

    new-array v8, v0, [Landroid/view/MotionEvent$PointerCoords;

    const/4 v1, 0x0

    move-object/from16 v0, p8

    invoke-static {v8, v0, v1}, Lcom/unity3d/player/c;->a([Landroid/view/MotionEvent$PointerCoords;[FI)I

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    invoke-static/range {v1 .. v15}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    move/from16 v0, p16

    if-ge v1, v0, :cond_0

    move/from16 v0, p6

    new-array v4, v0, [Landroid/view/MotionEvent$PointerCoords;

    move-object/from16 v0, p18

    invoke-static {v4, v0, v2}, Lcom/unity3d/player/c;->a([Landroid/view/MotionEvent$PointerCoords;[FI)I

    move-result v2

    aget-wide v5, p17, v1

    move/from16 v0, p9

    invoke-virtual {v3, v5, v6, v4, v0}, Landroid/view/MotionEvent;->addBatch(J[Landroid/view/MotionEvent$PointerCoords;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unity3d/player/c;->c:Ljava/util/Queue;

    invoke-interface {v1, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unity3d/player/c;->b:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/unity3d/player/c;->d:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final a(I)Z
    .locals 2

    const/4 v0, 0x1

    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    invoke-static {p1, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Landroid/graphics/RectF;
    .locals 8

    const v7, 0x100008

    const/4 v1, 0x0

    const/4 v6, 0x0

    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v2

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget v3, v2, v0

    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/InputDevice;->getSources()I

    move-result v4

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_0

    invoke-virtual {v3, v1}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v3

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/view/InputDevice$MotionRange;->getRange()F

    move-result v1

    invoke-virtual {v3}, Landroid/view/InputDevice$MotionRange;->getRange()F

    move-result v2

    invoke-direct {v0, v6, v6, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
