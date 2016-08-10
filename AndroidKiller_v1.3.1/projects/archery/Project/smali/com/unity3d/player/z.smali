.class Lcom/unity3d/player/z;
.super Landroid/opengl/GLSurfaceView;

# interfaces
.implements Lcom/unity3d/player/UnityGL;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/player/z$a;,
        Lcom/unity3d/player/z$b;
    }
.end annotation


# static fields
.field private static a:Z

.field private static b:Z


# instance fields
.field private c:Lcom/unity3d/player/z$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/player/z;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZZ)V
    .locals 7

    const/16 v3, 0x10

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/z;->c:Lcom/unity3d/player/z$a;

    sput-boolean p4, Lcom/unity3d/player/z;->a:Z

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v4, v3

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/unity3d/player/z;->init(IZIIII)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/unity3d/player/z;->a:Z

    if-nez v0, :cond_0

    const-string v0, "Unity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    if-ge v0, v7, :cond_0

    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    const/16 v3, 0x3000

    if-eq v2, v3, :cond_0

    const-string v3, "Unity"

    const-string v4, "%s: EGL error: 0x%x"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p0, v5, v1

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static b()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c()Z
    .locals 1

    sget-boolean v0, Lcom/unity3d/player/z;->b:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/z;->c:Lcom/unity3d/player/z$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/z;->c:Lcom/unity3d/player/z$a;

    iput p1, v0, Lcom/unity3d/player/z$a;->e:I

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 5

    const/4 v4, 0x5

    const/4 v1, 0x0

    const/16 v3, 0x8

    iget-object v0, p0, Lcom/unity3d/player/z;->c:Lcom/unity3d/player/z$a;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v0, v2, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_0

    :cond_2
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/unity3d/player/z;->c:Lcom/unity3d/player/z$a;

    iput v3, v0, Lcom/unity3d/player/z$a;->a:I

    iget-object v0, p0, Lcom/unity3d/player/z;->c:Lcom/unity3d/player/z$a;

    iput v3, v0, Lcom/unity3d/player/z$a;->b:I

    iget-object v0, p0, Lcom/unity3d/player/z;->c:Lcom/unity3d/player/z$a;

    iput v3, v0, Lcom/unity3d/player/z$a;->c:I

    iget-object v0, p0, Lcom/unity3d/player/z;->c:Lcom/unity3d/player/z$a;

    iput v3, v0, Lcom/unity3d/player/z$a;->d:I

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/unity3d/player/z;->c:Lcom/unity3d/player/z$a;

    iput v4, v0, Lcom/unity3d/player/z$a;->a:I

    iget-object v0, p0, Lcom/unity3d/player/z;->c:Lcom/unity3d/player/z$a;

    const/4 v2, 0x6

    iput v2, v0, Lcom/unity3d/player/z$a;->b:I

    iget-object v0, p0, Lcom/unity3d/player/z;->c:Lcom/unity3d/player/z$a;

    iput v4, v0, Lcom/unity3d/player/z$a;->c:I

    iget-object v0, p0, Lcom/unity3d/player/z;->c:Lcom/unity3d/player/z$a;

    iput v1, v0, Lcom/unity3d/player/z$a;->d:I

    goto :goto_0
.end method

.method protected init(IZIIII)V
    .locals 8

    const/4 v6, 0x5

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/16 v1, 0x8

    if-ne p1, v3, :cond_3

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/unity3d/player/z;->b:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x9

    if-lt v0, v5, :cond_4

    :goto_1
    if-nez v2, :cond_0

    const/16 p3, 0x10

    :cond_0
    if-eqz p2, :cond_5

    const/4 v0, -0x3

    :goto_2
    const/16 v2, 0x20

    if-ne p3, v2, :cond_1

    if-nez p2, :cond_1

    move v0, v3

    :cond_1
    invoke-virtual {p0}, Lcom/unity3d/player/z;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    new-instance v0, Lcom/unity3d/player/z$b;

    invoke-direct {v0}, Lcom/unity3d/player/z$b;-><init>()V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/z;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    if-nez p2, :cond_2

    const/16 v0, 0x20

    if-ne p3, v0, :cond_6

    :cond_2
    new-instance v0, Lcom/unity3d/player/z$a;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/unity3d/player/z$a;-><init>(IIIIIII)V

    :goto_3
    iput-object v0, p0, Lcom/unity3d/player/z;->c:Lcom/unity3d/player/z$a;

    iget-object v0, p0, Lcom/unity3d/player/z;->c:Lcom/unity3d/player/z$a;

    invoke-virtual {p0, v0}, Lcom/unity3d/player/z;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    return-void

    :cond_3
    move v0, v4

    goto :goto_0

    :cond_4
    move v2, v4

    goto :goto_1

    :cond_5
    const/4 v0, -0x1

    goto :goto_2

    :cond_6
    new-instance v0, Lcom/unity3d/player/z$a;

    const/4 v2, 0x6

    move v1, v6

    move v3, v6

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/unity3d/player/z$a;-><init>(IIIIIII)V

    goto :goto_3
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const-string v0, "onDetachedFromWindow"

    sget-boolean v1, Lcom/unity3d/player/z;->a:Z

    if-nez v1, :cond_0

    const-string v1, "Unity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
