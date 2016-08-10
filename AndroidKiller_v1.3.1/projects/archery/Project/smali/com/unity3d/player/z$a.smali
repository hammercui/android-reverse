.class final Lcom/unity3d/player/z$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final f:[I

.field private static final g:[I

.field private static j:[I

.field private static synthetic k:Z


# instance fields
.field protected a:I

.field protected b:I

.field protected c:I

.field protected d:I

.field public e:I

.field private h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0x9

    const/4 v1, 0x1

    const-class v0, Lcom/unity3d/player/z;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/unity3d/player/z$a;->k:Z

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/unity3d/player/z$a;->f:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/unity3d/player/z$a;->g:[I

    new-array v0, v1, [I

    sput-object v0, Lcom/unity3d/player/z$a;->j:[I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x3024
        0x4
        0x3023
        0x4
        0x3022
        0x4
        0x3040
        0x4
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3024
        0x5
        0x3023
        0x6
        0x3022
        0x5
        0x3040
        0x1
        0x3038
    .end array-data
.end method

.method public constructor <init>(IIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/unity3d/player/z$a;->a:I

    iput p2, p0, Lcom/unity3d/player/z$a;->b:I

    iput p3, p0, Lcom/unity3d/player/z$a;->c:I

    iput p4, p0, Lcom/unity3d/player/z$a;->d:I

    iput p5, p0, Lcom/unity3d/player/z$a;->h:I

    iput p6, p0, Lcom/unity3d/player/z$a;->i:I

    iput p7, p0, Lcom/unity3d/player/z$a;->e:I

    return-void
.end method

.method static synthetic a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/unity3d/player/z$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v0

    return v0
.end method

.method private static a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Lcom/unity3d/player/z$a;->j:[I

    invoke-interface {p0, p1, p2, p3, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/unity3d/player/z$a;->j:[I

    aget v0, v1, v0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v1

    const/16 v2, 0x3004

    if-eq v1, v2, :cond_1

    const-string v2, "Unity"

    const-string v3, "findConfigAttrib: EGL error: 0x%x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findConfigAttrib ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/unity3d/player/z;->a(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    goto :goto_0
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 9

    const/4 v2, 0x0

    array-length v3, p3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v0, p3, v1

    sget-boolean v4, Lcom/unity3d/player/z$a;->k:Z

    if-nez v4, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/16 v4, 0x3025

    invoke-static {p1, p2, v0, v4, v2}, Lcom/unity3d/player/z$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v4

    const/16 v5, 0x3026

    invoke-static {p1, p2, v0, v5, v2}, Lcom/unity3d/player/z$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v5

    const/16 v6, 0x3031

    invoke-static {p1, p2, v0, v6, v2}, Lcom/unity3d/player/z$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v6

    const/16 v7, 0x30e1

    invoke-static {p1, p2, v0, v7, v2}, Lcom/unity3d/player/z$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v7

    iget v8, p0, Lcom/unity3d/player/z$a;->h:I

    if-lt v4, v8, :cond_2

    iget v4, p0, Lcom/unity3d/player/z$a;->i:I

    if-lt v5, v4, :cond_2

    iget v4, p0, Lcom/unity3d/player/z$a;->e:I

    if-ge v6, v4, :cond_1

    add-int/lit8 v4, v7, -0x1

    iget v5, p0, Lcom/unity3d/player/z$a;->e:I

    if-lt v4, v5, :cond_2

    :cond_1
    const/16 v4, 0x3024

    invoke-static {p1, p2, v0, v4, v2}, Lcom/unity3d/player/z$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v4

    const/16 v5, 0x3023

    invoke-static {p1, p2, v0, v5, v2}, Lcom/unity3d/player/z$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v5

    const/16 v6, 0x3022

    invoke-static {p1, p2, v0, v6, v2}, Lcom/unity3d/player/z$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v6

    const/16 v7, 0x3021

    invoke-static {p1, p2, v0, v7, v2}, Lcom/unity3d/player/z$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v7

    iget v8, p0, Lcom/unity3d/player/z$a;->a:I

    if-ne v4, v8, :cond_2

    iget v4, p0, Lcom/unity3d/player/z$a;->b:I

    if-ne v5, v4, :cond_2

    iget v4, p0, Lcom/unity3d/player/z$a;->c:I

    if-ne v6, v4, :cond_2

    iget v4, p0, Lcom/unity3d/player/z$a;->d:I

    if-ne v7, v4, :cond_2

    :goto_1
    return-object v0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected static printConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 10

    const/16 v0, 0x23

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "EGL_BUFFER_SIZE"

    aput-object v0, v3, v1

    const-string v0, "EGL_ALPHA_SIZE"

    aput-object v0, v3, v8

    const-string v0, "EGL_BLUE_SIZE"

    aput-object v0, v3, v9

    const/4 v0, 0x3

    const-string v4, "EGL_GREEN_SIZE"

    aput-object v4, v3, v0

    const/4 v0, 0x4

    const-string v4, "EGL_RED_SIZE"

    aput-object v4, v3, v0

    const/4 v0, 0x5

    const-string v4, "EGL_DEPTH_SIZE"

    aput-object v4, v3, v0

    const/4 v0, 0x6

    const-string v4, "EGL_STENCIL_SIZE"

    aput-object v4, v3, v0

    const/4 v0, 0x7

    const-string v4, "EGL_CONFIG_CAVEAT"

    aput-object v4, v3, v0

    const/16 v0, 0x8

    const-string v4, "EGL_CONFIG_ID"

    aput-object v4, v3, v0

    const/16 v0, 0x9

    const-string v4, "EGL_LEVEL"

    aput-object v4, v3, v0

    const/16 v0, 0xa

    const-string v4, "EGL_MAX_PBUFFER_HEIGHT"

    aput-object v4, v3, v0

    const/16 v0, 0xb

    const-string v4, "EGL_MAX_PBUFFER_PIXELS"

    aput-object v4, v3, v0

    const/16 v0, 0xc

    const-string v4, "EGL_MAX_PBUFFER_WIDTH"

    aput-object v4, v3, v0

    const/16 v0, 0xd

    const-string v4, "EGL_NATIVE_RENDERABLE"

    aput-object v4, v3, v0

    const/16 v0, 0xe

    const-string v4, "EGL_NATIVE_VISUAL_ID"

    aput-object v4, v3, v0

    const/16 v0, 0xf

    const-string v4, "EGL_NATIVE_VISUAL_TYPE"

    aput-object v4, v3, v0

    const/16 v0, 0x10

    const-string v4, "EGL_PRESERVED_RESOURCES"

    aput-object v4, v3, v0

    const/16 v0, 0x11

    const-string v4, "EGL_SAMPLES"

    aput-object v4, v3, v0

    const/16 v0, 0x12

    const-string v4, "EGL_SAMPLE_BUFFERS"

    aput-object v4, v3, v0

    const/16 v0, 0x13

    const-string v4, "EGL_SURFACE_TYPE"

    aput-object v4, v3, v0

    const/16 v0, 0x14

    const-string v4, "EGL_TRANSPARENT_TYPE"

    aput-object v4, v3, v0

    const/16 v0, 0x15

    const-string v4, "EGL_TRANSPARENT_RED_VALUE"

    aput-object v4, v3, v0

    const/16 v0, 0x16

    const-string v4, "EGL_TRANSPARENT_GREEN_VALUE"

    aput-object v4, v3, v0

    const/16 v0, 0x17

    const-string v4, "EGL_TRANSPARENT_BLUE_VALUE"

    aput-object v4, v3, v0

    const/16 v0, 0x18

    const-string v4, "EGL_BIND_TO_TEXTURE_RGB"

    aput-object v4, v3, v0

    const/16 v0, 0x19

    const-string v4, "EGL_BIND_TO_TEXTURE_RGBA"

    aput-object v4, v3, v0

    const/16 v0, 0x1a

    const-string v4, "EGL_MIN_SWAP_INTERVAL"

    aput-object v4, v3, v0

    const/16 v0, 0x1b

    const-string v4, "EGL_MAX_SWAP_INTERVAL"

    aput-object v4, v3, v0

    const/16 v0, 0x1c

    const-string v4, "EGL_LUMINANCE_SIZE"

    aput-object v4, v3, v0

    const/16 v0, 0x1d

    const-string v4, "EGL_ALPHA_MASK_SIZE"

    aput-object v4, v3, v0

    const/16 v0, 0x1e

    const-string v4, "EGL_COLOR_BUFFER_TYPE"

    aput-object v4, v3, v0

    const/16 v0, 0x1f

    const-string v4, "EGL_RENDERABLE_TYPE"

    aput-object v4, v3, v0

    const/16 v0, 0x20

    const-string v4, "EGL_CONFORMANT"

    aput-object v4, v3, v0

    const/16 v0, 0x21

    const-string v4, "EGL_COVERAGE_BUFFERS_NV"

    aput-object v4, v3, v0

    const/16 v0, 0x22

    const-string v4, "EGL_COVERAGE_SAMPLES_NV"

    aput-object v4, v3, v0

    new-array v4, v8, [I

    move v0, v1

    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_1

    aget v5, v2, v0

    aget-object v6, v3, v0

    invoke-interface {p0, p1, p2, v5, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "  %s: %d\n"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v6, v7, v1

    aget v6, v4, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/unity3d/player/z;->a(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "printConfig ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p0}, Lcom/unity3d/player/z;->a(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    goto :goto_1

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x3020
        0x3021
        0x3022
        0x3023
        0x3024
        0x3025
        0x3026
        0x3027
        0x3028
        0x3029
        0x302a
        0x302b
        0x302c
        0x302d
        0x302e
        0x302f
        0x3030
        0x3031
        0x3032
        0x3033
        0x3034
        0x3037
        0x3036
        0x3035
        0x3039
        0x303a
        0x303b
        0x303c
        0x303d
        0x303e
        0x303f
        0x3040
        0x3042
        0x30e0
        0x30e1
    .end array-data
.end method


# virtual methods
.method public final chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 12

    const/4 v4, 0x0

    invoke-static {}, Lcom/unity3d/player/z;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/unity3d/player/z$a;->f:[I

    :goto_0
    const/4 v0, 0x1

    new-array v5, v0, [I

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    aget v10, v5, v4

    if-gtz v10, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v2, Lcom/unity3d/player/z$a;->g:[I

    goto :goto_0

    :cond_1
    new-array v9, v10, [Ljavax/microedition/khronos/egl/EGLConfig;

    move-object v6, p1

    move-object v7, p2

    move-object v8, v2

    move-object v11, v5

    invoke-interface/range {v6 .. v11}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    invoke-direct {p0, p1, p2, v9}, Lcom/unity3d/player/z$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_3

    iget v1, p0, Lcom/unity3d/player/z$a;->e:I

    if-lez v1, :cond_3

    iget v0, p0, Lcom/unity3d/player/z$a;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    move v0, v4

    :goto_2
    iput v0, p0, Lcom/unity3d/player/z$a;->e:I

    invoke-direct {p0, p1, p2, v9}, Lcom/unity3d/player/z$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/unity3d/player/z$a;->e:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_3
    if-nez v0, :cond_4

    iget v1, p0, Lcom/unity3d/player/z$a;->h:I

    const/16 v2, 0x18

    if-ne v1, v2, :cond_4

    const/16 v0, 0x10

    iput v0, p0, Lcom/unity3d/player/z$a;->h:I

    invoke-direct {p0, p1, p2, v9}, Lcom/unity3d/player/z$a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_5

    aget-object v0, v9, v4

    :cond_5
    return-object v0
.end method
