.class public Lcom/unity3d/player/UnityPlayer;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/unity3d/player/a$a;


# static fields
.field private static S:Lcom/unity3d/player/b;

.field public static currentActivity:Landroid/app/Activity;

.field private static r:Z

.field private static s:Z


# instance fields
.field private A:Z

.field private final B:Lcom/unity3d/player/p;

.field private C:I

.field private D:Ljava/lang/String;

.field private E:Landroid/net/NetworkInfo;

.field private F:Lcom/unity3d/player/a/e;

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Landroid/os/Bundle;

.field private K:Ljava/util/List;

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:Ljava/lang/Runnable;

.field private P:Landroid/widget/ProgressBar;

.field private Q:Ljava/lang/Runnable;

.field private R:Ljava/lang/Runnable;

.field private T:F

.field private U:F

.field private V:Ljava/lang/reflect/Method;

.field private W:Ljava/util/LinkedHashMap;

.field private Z:Landroid/content/BroadcastReceiver;

.field a:Lcom/unity3d/player/x;

.field private aa:Z

.field private ab:I

.field private ac:Z

.field private b:Z

.field private c:Z

.field private final d:Lcom/unity3d/player/h;

.field private final e:Lcom/unity3d/player/y;

.field private f:Z

.field private g:Landroid/os/Bundle;

.field private h:Landroid/content/SharedPreferences;

.field private i:Landroid/content/ContextWrapper;

.field private j:Z

.field private k:Lcom/unity3d/player/UnityGL;

.field private l:Lcom/unity3d/player/o;

.field private m:Landroid/os/PowerManager$WakeLock;

.field private n:Landroid/hardware/SensorManager;

.field private o:Landroid/view/WindowManager;

.field private p:Lorg/fmod/FMODAudioDevice;

.field private q:Landroid/os/Vibrator;

.field private t:Z

.field private u:Z

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/player/UnityPlayer;->r:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/unity3d/player/UnityPlayer;->s:Z

    sput-object v1, Lcom/unity3d/player/UnityPlayer;->S:Lcom/unity3d/player/b;

    new-instance v0, Lcom/unity3d/player/b;

    invoke-direct {v0}, Lcom/unity3d/player/b;-><init>()V

    sput-object v0, Lcom/unity3d/player/UnityPlayer;->S:Lcom/unity3d/player/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 7

    const/4 v6, -0x1

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/unity3d/player/UnityPlayer;->b:Z

    iput-boolean v2, p0, Lcom/unity3d/player/UnityPlayer;->c:Z

    iput-boolean v2, p0, Lcom/unity3d/player/UnityPlayer;->f:Z

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->g:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->q:Landroid/os/Vibrator;

    iput-boolean v2, p0, Lcom/unity3d/player/UnityPlayer;->t:Z

    iput-boolean v1, p0, Lcom/unity3d/player/UnityPlayer;->u:Z

    iput v2, p0, Lcom/unity3d/player/UnityPlayer;->x:I

    iput v2, p0, Lcom/unity3d/player/UnityPlayer;->y:I

    iput v6, p0, Lcom/unity3d/player/UnityPlayer;->z:I

    iput-boolean v2, p0, Lcom/unity3d/player/UnityPlayer;->A:Z

    iput v2, p0, Lcom/unity3d/player/UnityPlayer;->C:I

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->D:Ljava/lang/String;

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->E:Landroid/net/NetworkInfo;

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->F:Lcom/unity3d/player/a/e;

    iput-boolean v2, p0, Lcom/unity3d/player/UnityPlayer;->G:Z

    iput-boolean v2, p0, Lcom/unity3d/player/UnityPlayer;->H:Z

    iput-boolean v2, p0, Lcom/unity3d/player/UnityPlayer;->I:Z

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p0, Lcom/unity3d/player/UnityPlayer;->J:Landroid/os/Bundle;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/unity3d/player/UnityPlayer;->K:Ljava/util/List;

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->a:Lcom/unity3d/player/x;

    iput-boolean v1, p0, Lcom/unity3d/player/UnityPlayer;->L:Z

    iput-boolean v2, p0, Lcom/unity3d/player/UnityPlayer;->M:Z

    iput-boolean v2, p0, Lcom/unity3d/player/UnityPlayer;->N:Z

    new-instance v3, Lcom/unity3d/player/aa;

    invoke-direct {v3, p0}, Lcom/unity3d/player/aa;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    iput-object v3, p0, Lcom/unity3d/player/UnityPlayer;->O:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->P:Landroid/widget/ProgressBar;

    new-instance v3, Lcom/unity3d/player/ab;

    invoke-direct {v3, p0}, Lcom/unity3d/player/ab;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    iput-object v3, p0, Lcom/unity3d/player/UnityPlayer;->Q:Ljava/lang/Runnable;

    new-instance v3, Lcom/unity3d/player/ac;

    invoke-direct {v3, p0}, Lcom/unity3d/player/ac;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    iput-object v3, p0, Lcom/unity3d/player/UnityPlayer;->R:Ljava/lang/Runnable;

    iput v4, p0, Lcom/unity3d/player/UnityPlayer;->T:F

    iput v4, p0, Lcom/unity3d/player/UnityPlayer;->U:F

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->V:Ljava/lang/reflect/Method;

    new-instance v3, Lcom/unity3d/player/UnityPlayer$18;

    invoke-direct {v3, p0}, Lcom/unity3d/player/UnityPlayer$18;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    iput-object v3, p0, Lcom/unity3d/player/UnityPlayer;->Z:Landroid/content/BroadcastReceiver;

    iput-boolean v2, p0, Lcom/unity3d/player/UnityPlayer;->aa:Z

    iput v1, p0, Lcom/unity3d/player/UnityPlayer;->ab:I

    iput-boolean v1, p0, Lcom/unity3d/player/UnityPlayer;->ac:Z

    new-instance v3, Lcom/unity3d/player/y;

    invoke-direct {v3, p0}, Lcom/unity3d/player/y;-><init>(Landroid/widget/FrameLayout;)V

    iput-object v3, p0, Lcom/unity3d/player/UnityPlayer;->e:Lcom/unity3d/player/y;

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    :try_start_0
    const-string v3, "android.app.NativeActivity"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/unity3d/player/UnityPlayer;->j:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v3, v4, :cond_0

    new-instance v0, Lcom/unity3d/player/c;

    invoke-direct {v0, p1}, Lcom/unity3d/player/c;-><init>(Landroid/content/ContextWrapper;)V

    :cond_0
    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->d:Lcom/unity3d/player/h;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v3

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    sput-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->g:Landroid/os/Bundle;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v4, "com.unity3d.player.UnityPlayerActivity"

    aput-object v4, v0, v2

    const-string v4, "com.unity3d.player.UnityPlayerNativeActivity"

    aput-object v4, v0, v1

    const/4 v4, 0x2

    sget-object v5, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    invoke-static {p1, v0}, Lcom/unity3d/player/UnityPlayerProxyActivity;->copyPlayerPrefs(Landroid/content/Context;[Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, v3, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->h:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->b()V

    const-string v0, "mono"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->S:Lcom/unity3d/player/b;

    invoke-virtual {v0}, Lcom/unity3d/player/b;->a()I

    move-result v0

    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_4

    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_2

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_4

    :cond_2
    const/4 v0, 0x6

    const-string v3, "CPU features not supported! (no ARMv6+ / VFP)"

    invoke-static {v0, v3}, Lcom/unity3d/player/l;->Log(ILjava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageCodePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->nativeFile(Ljava/lang/String;)V

    new-instance v0, Lcom/unity3d/player/p;

    invoke-direct {v0, p1, p0}, Lcom/unity3d/player/p;-><init>(Landroid/content/Context;Lcom/unity3d/player/UnityPlayer;)V

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->B:Lcom/unity3d/player/p;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v0, v3, :cond_3

    iput-boolean v1, p0, Lcom/unity3d/player/UnityPlayer;->f:Z

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    new-instance v3, Ljava/lang/String;

    const-string v4, "Y29tLmFuZHJvaWQudmVuZGluZy5DSEVDS19MSUNFTlNF"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/player/b/a;->b([B)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v3}, Landroid/content/ContextWrapper;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-ne v6, v0, :cond_5

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->I:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    return-void

    :cond_4
    sput-boolean v1, Lcom/unity3d/player/UnityPlayer;->r:Z

    :try_start_2
    const-string v0, "unity"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to load libraries: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/unity3d/player/l;->Log(ILjava/lang/String;)V

    sput-boolean v2, Lcom/unity3d/player/UnityPlayer;->r:Z

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2

    :catch_1
    move-exception v0

    iput-boolean v1, p0, Lcom/unity3d/player/UnityPlayer;->I:Z

    goto :goto_3

    :catch_2
    move-exception v3

    goto/16 :goto_0
.end method

.method public static native UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;I)I
    .locals 0

    iput p1, p0, Lcom/unity3d/player/UnityPlayer;->z:I

    return p1
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer;->P:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/Android/data/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(IZ)V
    .locals 8

    const/4 v7, 0x1

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->j:Z

    if-eqz v0, :cond_0

    new-instance v1, Lcom/unity3d/player/m;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/unity3d/player/m;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1}, Lcom/unity3d/player/m;->a()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->nativeForwardEventsToDalvik(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->initJni()V

    const-string v0, "power"

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/16 v1, 0x1a

    const-string v2, "DoNotDimScreen"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Landroid/os/PowerManager$WakeLock;

    new-instance v0, Lcom/unity3d/player/PlayerPrefs;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->h:Landroid/content/SharedPreferences;

    invoke-direct {v0, v1}, Lcom/unity3d/player/PlayerPrefs;-><init>(Landroid/content/SharedPreferences;)V

    const-class v0, Lcom/unity3d/player/WWW;

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->nativeInitWWW(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Lcom/unity3d/player/UnityGL;

    if-nez v0, :cond_2

    new-instance v0, Lcom/unity3d/player/UnityPlayer$17;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    const/4 v5, 0x0

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/unity3d/player/UnityPlayer$17;-><init>(Lcom/unity3d/player/UnityPlayer;Landroid/content/Context;IZZLandroid/view/View;)V

    sget-boolean v1, Lcom/unity3d/player/n;->a:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/unity3d/player/n;->b:Lcom/unity3d/player/j;

    invoke-virtual {v0, v7}, Landroid/opengl/GLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    :cond_1
    invoke-virtual {v0, v7}, Lcom/unity3d/player/z;->setFocusable(Z)V

    invoke-virtual {v0, v7}, Lcom/unity3d/player/z;->setFocusableInTouchMode(Z)V

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Lcom/unity3d/player/UnityGL;

    :cond_2
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Lcom/unity3d/player/UnityGL;

    invoke-interface {v0, p0}, Lcom/unity3d/player/UnityGL;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "blaze"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kindle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/unity3d/player/o;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    invoke-direct {v0, v1}, Lcom/unity3d/player/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->l:Lcom/unity3d/player/o;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->e:Lcom/unity3d/player/y;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->l:Lcom/unity3d/player/o;

    invoke-virtual {v0, v1}, Lcom/unity3d/player/y;->a(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->n:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->o:Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->getSettings()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "splash_mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->k:Lcom/unity3d/player/UnityGL;

    new-instance v2, Lcom/unity3d/player/UnityPlayer$19;

    invoke-direct {v2, p0, p1, v0}, Lcom/unity3d/player/UnityPlayer$19;-><init>(Lcom/unity3d/player/UnityPlayer;II)V

    invoke-interface {v1, v2}, Lcom/unity3d/player/UnityGL;->queueEvent(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->g:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->nativeSetExtras(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->d:Lcom/unity3d/player/h;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->j:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->d:Lcom/unity3d/player/h;

    invoke-interface {v0}, Lcom/unity3d/player/h;->b()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/unity3d/player/UnityPlayer;->nativeEnableTouchpad(FF)V

    :cond_4
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->resume()V

    invoke-virtual {p0, v7}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->c()V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->nativeSetMousePosition(FF)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;FFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/player/UnityPlayer;->nativeSetMouseDelta(FFF)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;IFFI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unity3d/player/UnityPlayer;->nativeQueueGUIEvent(IFFI)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;IFFIJI)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/unity3d/player/UnityPlayer;->nativeTouch(IFFIJI)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->nativeInit(II)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;IIF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/player/UnityPlayer;->nativeSetJoystickPosition(IIF)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;IIZII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/unity3d/player/UnityPlayer;->nativeKeyState(IIZII)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->a(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;I[BII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unity3d/player/UnityPlayer;->nativeVideoFrameCallback(I[BII)V

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer;->nativeSetInputString(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x5

    const-string v1, "Not running Unity from an Activity; ignored..."

    invoke-static {v0, v1}, Lcom/unity3d/player/l;->Log(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 7

    const/16 v6, 0xb

    const/16 v5, 0xa

    const/16 v4, 0x9

    const/4 v3, 0x4

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->aa:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->n:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->B:Lcom/unity3d/player/p;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->n:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iget v3, p0, Lcom/unity3d/player/UnityPlayer;->ab:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->n:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->B:Lcom/unity3d/player/p;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->n:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iget v3, p0, Lcom/unity3d/player/UnityPlayer;->ab:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->n:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->B:Lcom/unity3d/player/p;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->n:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iget v3, p0, Lcom/unity3d/player/UnityPlayer;->ab:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->n:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->B:Lcom/unity3d/player/p;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->n:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iget v3, p0, Lcom/unity3d/player/UnityPlayer;->ab:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->n:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->B:Lcom/unity3d/player/p;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->n:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->n:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->B:Lcom/unity3d/player/p;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->n:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->n:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->B:Lcom/unity3d/player/p;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->n:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->n:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->B:Lcom/unity3d/player/p;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->n:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    goto :goto_0
.end method

.method static synthetic a()Z
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/unity3d/player/UnityPlayer;->r:Z

    return v0
.end method

.method private a(ILandroid/view/KeyEvent;)Z
    .locals 8

    const/4 v1, 0x4

    const/4 v4, 0x0

    const/4 v7, 0x1

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->t:Z

    if-nez v0, :cond_1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->kill()V

    :cond_0
    :goto_0
    return v7

    :cond_1
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    move v7, v4

    goto :goto_0

    :cond_2
    const/16 v0, 0x19

    if-eq p1, v0, :cond_3

    const/16 v0, 0x18

    if-ne p1, v0, :cond_5

    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v7

    goto :goto_0

    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v7

    goto :goto_0

    :cond_5
    if-ne p1, v1, :cond_7

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/16 p1, 0x65

    move v2, p1

    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_6

    move v4, v7

    :cond_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v6

    new-instance v0, Lcom/unity3d/player/UnityPlayer$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/unity3d/player/UnityPlayer$3;-><init>(Lcom/unity3d/player/UnityPlayer;IIZII)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_7
    move v2, p1

    goto :goto_1
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 13

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    const/4 v0, 0x0

    move v9, v0

    :goto_1
    if-ge v9, v10, :cond_5

    if-nez v9, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v1, v0, 0xff

    shr-int/lit8 v1, v1, 0x8

    if-ne v9, v1, :cond_3

    and-int/lit16 v2, v0, 0xff

    :goto_2
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget v6, p0, Lcom/unity3d/player/UnityPlayer;->T:F

    iget v7, p0, Lcom/unity3d/player/UnityPlayer;->U:F

    const/4 v1, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xc

    if-lt v0, v3, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->V:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getAxisValue"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v8, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v8, v11

    invoke-virtual {v0, v3, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->V:Ljava/lang/reflect/Method;

    :cond_1
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->V:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->V:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v11, 0x9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v3, v8

    const/4 v8, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v3, v8

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_3
    move v8, v0

    :goto_4
    new-instance v0, Lcom/unity3d/player/UnityPlayer$5;

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/unity3d/player/UnityPlayer$5;-><init>(Lcom/unity3d/player/UnityPlayer;IIFFFFF)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Ljava/lang/Runnable;)V

    iput v4, p0, Lcom/unity3d/player/UnityPlayer;->T:F

    iput v5, p0, Lcom/unity3d/player/UnityPlayer;->U:F

    :cond_2
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1

    :cond_3
    const/4 v2, 0x2

    goto :goto_2

    :catch_0
    move-exception v0

    :cond_4
    move v8, v1

    goto :goto_4

    :cond_5
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_3
.end method

.method static synthetic a(Lcom/unity3d/player/UnityPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/unity3d/player/UnityPlayer;->A:Z

    return p1
.end method

.method static synthetic b(Lcom/unity3d/player/UnityPlayer;)I
    .locals 1

    iget v0, p0, Lcom/unity3d/player/UnityPlayer;->z:I

    return v0
.end method

.method private b()V
    .locals 9

    const/4 v7, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "bin/Data/settings.xml"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    const/4 v1, 0x0

    invoke-interface {v4, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move-object v1, v2

    move-object v3, v2

    :goto_0
    if-eq v0, v7, :cond_7

    const/4 v5, 0x2

    if-ne v0, v5, :cond_3

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    move v8, v0

    move-object v0, v1

    move v1, v8

    :goto_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    invoke-interface {v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :cond_2
    :goto_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v5, 0x3

    if-ne v0, v5, :cond_4

    move-object v3, v2

    goto :goto_2

    :cond_4
    const/4 v5, 0x4

    if-ne v0, v5, :cond_2

    if-eqz v1, :cond_2

    const-string v0, "integer"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->J:Landroid/os/Bundle;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    :goto_3
    move-object v1, v2

    goto :goto_2

    :cond_6
    const-string v0, "string"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->J:Landroid/os/Bundle;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to locate player settings. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/unity3d/player/l;->Log(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->c()V

    :cond_7
    return-void

    :cond_8
    :try_start_1
    const-string v0, "bool"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->J:Landroid/os/Bundle;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_9
    const-string v0, "float"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->J:Landroid/os/Bundle;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method static synthetic b(Lcom/unity3d/player/UnityPlayer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer;->nativeFocusChanged(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 4

    const/4 v3, 0x2

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->ac:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->n:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->B:Lcom/unity3d/player/p;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->n:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->n:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->B:Lcom/unity3d/player/p;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->n:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    goto :goto_0
.end method

.method private b(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x1

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->j:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->V:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getAxisValue"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->V:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    new-instance v0, Lcom/unity3d/player/UnityPlayer$6;

    invoke-direct {v0, p0, p1}, Lcom/unity3d/player/UnityPlayer$6;-><init>(Lcom/unity3d/player/UnityPlayer;Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/unity3d/player/UnityPlayer;I)[Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->W:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->getConnectedJoysticks()[I

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->W:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->getConnectedJoysticks()[I

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->W:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/unity3d/player/UnityPlayer;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->J:Landroid/os/Bundle;

    return-object v0
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/unity3d/player/UnityPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/unity3d/player/UnityPlayer;->G:Z

    return p1
.end method

.method private d()V
    .locals 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->N:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->L:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->M:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/unity3d/player/UnityPlayer;->M:Z

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->f:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Lcom/unity3d/player/UnityGL;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_5

    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Lcom/unity3d/player/UnityGL;

    instance-of v0, v0, Lcom/unity3d/player/z;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->e:Lcom/unity3d/player/y;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Lcom/unity3d/player/UnityGL;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/unity3d/player/y;->d(Landroid/view/View;)V

    :cond_2
    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->t:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Lcom/unity3d/player/UnityGL;

    new-instance v1, Lcom/unity3d/player/UnityPlayer$22;

    invoke-direct {v1, p0}, Lcom/unity3d/player/UnityPlayer$22;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-interface {v0, v1}, Lcom/unity3d/player/UnityGL;->queueEvent(Ljava/lang/Runnable;)V

    :cond_3
    sget-boolean v0, Lcom/unity3d/player/UnityPlayer;->s:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->p:Lorg/fmod/FMODAudioDevice;

    if-nez v0, :cond_4

    new-instance v0, Lorg/fmod/FMODAudioDevice;

    invoke-direct {v0}, Lorg/fmod/FMODAudioDevice;-><init>()V

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->p:Lorg/fmod/FMODAudioDevice;

    :cond_4
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->p:Lorg/fmod/FMODAudioDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->p:Lorg/fmod/FMODAudioDevice;

    invoke-virtual {v0}, Lorg/fmod/FMODAudioDevice;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->p:Lorg/fmod/FMODAudioDevice;

    invoke-virtual {v0}, Lorg/fmod/FMODAudioDevice;->start()V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method static synthetic d(Lcom/unity3d/player/UnityPlayer;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/unity3d/player/UnityPlayer;->nativeSetMouseButton(IZ)V

    return-void
.end method

.method static synthetic d(Lcom/unity3d/player/UnityPlayer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->A:Z

    return v0
.end method

.method static synthetic e(Lcom/unity3d/player/UnityPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeDone()V

    return-void
.end method

.method static synthetic e(Lcom/unity3d/player/UnityPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/unity3d/player/UnityPlayer;->c:Z

    return p1
.end method

.method static synthetic f(Lcom/unity3d/player/UnityPlayer;)V
    .locals 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->l:Lcom/unity3d/player/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->l:Lcom/unity3d/player/o;

    iget v1, p0, Lcom/unity3d/player/UnityPlayer;->v:I

    iget v2, p0, Lcom/unity3d/player/UnityPlayer;->w:I

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/player/o;->a(II)V

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/unity3d/player/UnityPlayer;)Z
    .locals 1

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativePause()Z

    move-result v0

    return v0
.end method

.method static synthetic h(Lcom/unity3d/player/UnityPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeResume()V

    return-void
.end method

.method static synthetic i(Lcom/unity3d/player/UnityPlayer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->N:Z

    return v0
.end method

.method private final native initJni()V
.end method

.method static synthetic j(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/UnityGL;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Lcom/unity3d/player/UnityGL;

    return-object v0
.end method

.method static synthetic k(Lcom/unity3d/player/UnityPlayer;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->H:Z

    return v0
.end method

.method static synthetic l(Lcom/unity3d/player/UnityPlayer;)I
    .locals 1

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeActivityIndicatorStyle()I

    move-result v0

    return v0
.end method

.method static synthetic m(Lcom/unity3d/player/UnityPlayer;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->P:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic n(Lcom/unity3d/player/UnityPlayer;)Landroid/content/ContextWrapper;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    return-object v0
.end method

.method private final native nativeActivityIndicatorStyle()I
.end method

.method private final native nativeDone()V
.end method

.method private final native nativeEnableTouchpad(FF)V
.end method

.method private final native nativeFile(Ljava/lang/String;)V
.end method

.method private final native nativeFocusChanged(Z)V
.end method

.method private final native nativeGetGLContext()Ljava/lang/String;
.end method

.method private final native nativeGetGLScreen()Ljava/lang/String;
.end method

.method private final native nativeGetLicensePolicy()I
.end method

.method private final native nativeInit(II)V
.end method

.method private final native nativeInitWWW(Ljava/lang/Class;)V
.end method

.method private final native nativeIsAutorotationOn()Z
.end method

.method private final native nativeJoyButtonState(IIZ)V
.end method

.method private final native nativeKeyState(IIZII)V
.end method

.method private final native nativePause()Z
.end method

.method private final native nativeQueueGUIEvent(IFFI)V
.end method

.method private final native nativeRecreateGfxState()V
.end method

.method private final native nativeRender()Z
.end method

.method private final native nativeRequested32bitDisplayBuffer()Z
.end method

.method private final native nativeRequestedAA()I
.end method

.method private final native nativeResize(IIII)V
.end method

.method private final native nativeResume()V
.end method

.method private final native nativeSetExtras(Landroid/os/Bundle;)V
.end method

.method private final native nativeSetInputString(Ljava/lang/String;)V
.end method

.method private final native nativeSetJoystickPosition(IIF)V
.end method

.method private final native nativeSetMouseButton(IZ)V
.end method

.method private final native nativeSetMouseDelta(FFF)V
.end method

.method private final native nativeSetMousePosition(FF)V
.end method

.method private final native nativeSetTouchDeltaY(F)V
.end method

.method private final native nativeSoftInputClosed()V
.end method

.method private final native nativeTouch(IFFIJI)V
.end method

.method private final native nativeVideoFrameCallback(I[BII)V
.end method

.method static synthetic o(Lcom/unity3d/player/UnityPlayer;)I
    .locals 1

    iget v0, p0, Lcom/unity3d/player/UnityPlayer;->w:I

    return v0
.end method

.method static synthetic p(Lcom/unity3d/player/UnityPlayer;)Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->V:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic q(Lcom/unity3d/player/UnityPlayer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->b:Z

    return v0
.end method

.method static synthetic r(Lcom/unity3d/player/UnityPlayer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->c:Z

    return v0
.end method

.method static synthetic s(Lcom/unity3d/player/UnityPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeSoftInputClosed()V

    return-void
.end method

.method private final native unityAndroidInit(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private final native unityAndroidPrepareGameLoop()V
.end method


# virtual methods
.method protected Location_IsServiceEnabledByUser()Z
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->B:Lcom/unity3d/player/p;

    invoke-virtual {v0}, Lcom/unity3d/player/p;->a()Z

    move-result v0

    return v0
.end method

.method protected Location_SetDesiredAccuracy(F)V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->B:Lcom/unity3d/player/p;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/p;->b(F)V

    return-void
.end method

.method protected Location_SetDistanceFilter(F)V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->B:Lcom/unity3d/player/p;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/p;->a(F)V

    return-void
.end method

.method protected Location_StartUpdatingLocation()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->B:Lcom/unity3d/player/p;

    invoke-virtual {v0}, Lcom/unity3d/player/p;->b()V

    return-void
.end method

.method protected Location_StopUpdatingLocation()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->B:Lcom/unity3d/player/p;

    invoke-virtual {v0}, Lcom/unity3d/player/p;->c()V

    return-void
.end method

.method protected canUse32bitDisplayBuffer()Z
    .locals 1

    invoke-static {}, Lcom/unity3d/player/z;->b()Z

    move-result v0

    return v0
.end method

.method protected closeCamera(I)V
    .locals 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->K:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/player/a;

    invoke-virtual {v0}, Lcom/unity3d/player/a;->c()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v0}, Lcom/unity3d/player/a;->d()V

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->K:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public configurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Lcom/unity3d/player/UnityGL;

    instance-of v0, v0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Lcom/unity3d/player/UnityGL;

    check-cast v0, Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    :cond_0
    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->c:Z

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    :cond_1
    return-void
.end method

.method protected dispatchTouchEvent(IIIFFJI)Z
    .locals 9

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->t:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->j:Z

    if-nez v0, :cond_1

    and-int/lit16 v5, p2, 0xff

    const v0, 0xff00

    and-int/2addr v0, p2

    shr-int/lit8 v0, v0, 0x8

    if-ne p1, v0, :cond_2

    :goto_1
    new-instance v0, Lcom/unity3d/player/UnityPlayer$4;

    move-object v1, p0

    move v2, p3

    move v3, p4

    move v4, p5

    move-wide v6, p6

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/unity3d/player/UnityPlayer$4;-><init>(Lcom/unity3d/player/UnityPlayer;IFFIJI)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Ljava/lang/Runnable;)V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x2

    goto :goto_1
.end method

.method protected forwardMotionEventToDalvik(JJII[I[FIFFIIIII[J[F)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unity3d/player/UnityPlayer;->d:Lcom/unity3d/player/h;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/unity3d/player/UnityPlayer;->d:Lcom/unity3d/player/h;

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    invoke-interface/range {v1 .. v19}, Lcom/unity3d/player/h;->a(JJII[I[FIFFIIIII[J[F)V

    :cond_0
    return-void
.end method

.method protected getCPUType()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->S:Lcom/unity3d/player/b;

    invoke-virtual {v0}, Lcom/unity3d/player/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCacheDir()Ljava/lang/String;
    .locals 2

    const-string v0, "/cache"

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/unity3d/player/UnityPlayer;->a(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getConnectedJoysticks()[I
    .locals 12

    const/4 v4, 0x0

    const v11, 0x1000010

    const/4 v10, -0x1

    const/4 v3, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string v0, "android.view.InputDevice"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v0, "getDeviceIds"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v6, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v6, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    move v5, v3

    move v2, v3

    :goto_1
    array-length v1, v0

    if-ge v5, v1, :cond_3

    const-string v1, "getDevice"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v6, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aget v9, v0, v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "getSources"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/2addr v1, v11

    if-ne v1, v11, :cond_1

    add-int/lit8 v1, v2, 0x1

    :goto_2
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v2, v1

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    aput v1, v0, v5

    move v1, v2

    goto :goto_2

    :cond_2
    const/4 v1, -0x1

    aput v1, v0, v5

    move v1, v2

    goto :goto_2

    :cond_3
    new-array v5, v2, [I

    move v6, v3

    move v2, v3

    :goto_3
    array-length v1, v0

    if-ge v6, v1, :cond_4

    aget v1, v0, v6

    if-eq v1, v10, :cond_8

    add-int/lit8 v1, v2, 0x1

    aget v7, v0, v6

    aput v7, v5, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v2, v1

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v4

    goto/16 :goto_0

    :cond_4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->W:Ljava/util/LinkedHashMap;

    array-length v4, v5

    move v2, v3

    move v0, v3

    :goto_5
    if-ge v2, v4, :cond_7

    aget v6, v5, v2

    invoke-virtual {p0, v6}, Lcom/unity3d/player/UnityPlayer;->getJoystickAxes(I)[I

    move-result-object v7

    if-eqz v7, :cond_6

    array-length v1, v7

    add-int/lit8 v1, v1, 0x1

    new-array v8, v1, [Ljava/lang/Integer;

    add-int/lit8 v1, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v3

    move v0, v3

    :goto_6
    array-length v9, v7

    if-ge v0, v9, :cond_5

    add-int/lit8 v9, v0, 0x1

    aget v10, v7, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_5
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->W:Ljava/util/LinkedHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    :cond_6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5

    :cond_7
    move-object v0, v5

    goto/16 :goto_0

    :cond_8
    move v1, v2

    goto :goto_4
.end method

.method protected getDeviceOrientation()I
    .locals 8

    const/4 v7, 0x2

    const/16 v4, 0x9

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->o:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v5

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v7, :cond_1

    move v0, v1

    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_2

    const/16 v3, 0x8

    :goto_1
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v4, :cond_3

    :goto_2
    if-nez v5, :cond_4

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    :goto_3
    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    move v4, v1

    goto :goto_2

    :cond_4
    if-ne v5, v1, :cond_6

    if-eqz v0, :cond_5

    move v1, v2

    goto :goto_3

    :cond_5
    move v1, v4

    goto :goto_3

    :cond_6
    if-ne v5, v7, :cond_8

    if-eqz v0, :cond_7

    move v1, v3

    goto :goto_3

    :cond_7
    move v1, v4

    goto :goto_3

    :cond_8
    const/4 v2, 0x3

    if-ne v5, v2, :cond_0

    if-eqz v0, :cond_0

    move v1, v4

    goto :goto_3
.end method

.method protected getDeviceUniqueIdentifier()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->D:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->D:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->D:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x5

    const-string v1, "android.permission.READ_PHONE_STATE not available?"

    invoke-static {v0, v1}, Lcom/unity3d/player/l;->Log(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getFilesDir()Ljava/lang/String;
    .locals 2

    const-string v0, "/files"

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/unity3d/player/UnityPlayer;->a(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getGyroUpdateDelay()I
    .locals 1

    iget v0, p0, Lcom/unity3d/player/UnityPlayer;->ab:I

    return v0
.end method

.method protected getInternetReachability()I
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->E:Landroid/net/NetworkInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->E:Landroid/net/NetworkInfo;

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->E:Landroid/net/NetworkInfo;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x5

    const-string v2, "android.permission.ACCESS_NETWORK_STATE not available?"

    invoke-static {v0, v2}, Lcom/unity3d/player/l;->Log(ILjava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method protected getIsGyroAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.sensor.gyroscope"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected getIsGyroEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->aa:Z

    return v0
.end method

.method protected getJoystickAxes(I)[I
    .locals 11

    const v10, 0x1000010

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-ge v0, v3, :cond_0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    const-string v0, "android.view.InputDevice"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getDevice"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getMotionRanges"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v5, v3, [I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v2

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v4, "getSource"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v7, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/2addr v0, v10

    if-ne v0, v10, :cond_1

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v8, "getAxis"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v5, v3

    move v3, v4

    goto :goto_1

    :cond_2
    new-array v0, v3, [I

    :goto_2
    if-ge v2, v3, :cond_3

    aget v4, v5, v2

    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    move-object v1, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_3
.end method

.method protected getJoystickName(I)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-ge v0, v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    const-string v0, "android.view.InputDevice"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getDevice"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getName"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method protected getNumCameras()I
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->d:Lcom/unity3d/player/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->d:Lcom/unity3d/player/h;

    invoke-interface {v0}, Lcom/unity3d/player/h;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected getOrientation()I
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    goto :goto_0
.end method

.method protected getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getScreenDPI()F
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->xdpi:F

    iget v1, v1, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method protected getScreenTimeout()I
    .locals 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const/16 v2, 0x3a98

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public getSettings()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->J:Landroid/os/Bundle;

    return-object v0
.end method

.method protected getTotalMemory()I
    .locals 1

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->S:Lcom/unity3d/player/b;

    invoke-virtual {v0}, Lcom/unity3d/player/b;->c()I

    move-result v0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method protected hasWakeLock()Z
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    return v0
.end method

.method protected hideSoftInput()V
    .locals 1

    new-instance v0, Lcom/unity3d/player/UnityPlayer$9;

    invoke-direct {v0, p0}, Lcom/unity3d/player/UnityPlayer$9;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public init(IZ)V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/unity3d/player/UnityPlayer;->r:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Failure to initialize!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lcom/unity3d/player/UnityPlayer$1;

    invoke-direct {v2, p0}, Lcom/unity3d/player/UnityPlayer$1;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Your hardware does not support this application, sorry!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->S:Lcom/unity3d/player/b;

    invoke-virtual {v0}, Lcom/unity3d/player/b;->a()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    sput-boolean v3, Lcom/unity3d/player/UnityPlayer;->r:Z

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Old Android OS detected!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lcom/unity3d/player/UnityPlayer$16;

    invoke-direct {v2, p0, p1, p2}, Lcom/unity3d/player/UnityPlayer$16;-><init>(Lcom/unity3d/player/UnityPlayer;IZ)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "This application requires at least Android OS version 2.2 on Samsung devices. Your device seems to be running an older OS version.\nPlease contact your carrier or the hardware vendor and ask them how to install a more recent version. It is a simple process that your provider\'s customer service can help you with."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->a(IZ)V

    goto :goto_0
.end method

.method protected initCamera(IIII)[I
    .locals 4

    new-instance v1, Lcom/unity3d/player/a;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/unity3d/player/a;-><init>(IIII)V

    :try_start_0
    invoke-virtual {v1, p0}, Lcom/unity3d/player/a;->a(Lcom/unity3d/player/a$a;)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->K:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/unity3d/player/a;->a()I

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/unity3d/player/a;->b()I

    move-result v3

    aput v3, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v1}, Lcom/unity3d/player/a;->d()V

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera failed to open: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/unity3d/player/l;->Log(ILjava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isCameraFrontFacing(I)Z
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->d:Lcom/unity3d/player/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->d:Lcom/unity3d/player/h;

    invoke-interface {v0, p1}, Lcom/unity3d/player/h;->a(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isCompassAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.sensor.compass"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isCompassEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->ac:Z

    return v0
.end method

.method protected isFinishing()Z
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected kill()V
    .locals 1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method protected loadLibrary(Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x6

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/unity3d/player/l;->Log(ILjava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/unity3d/player/l;->Log(ILjava/lang/String;)V

    goto :goto_0
.end method

.method final native nativeAttitude(FFFFJ)V
.end method

.method final native nativeCompass(FFFFFD)V
.end method

.method final native nativeDeviceOrientation(I)V
.end method

.method final native nativeForwardEventsToDalvik(Z)V
.end method

.method final native nativeGravity(FFFJ)V
.end method

.method final native nativeGyro(FFFJ)V
.end method

.method final native nativeJoystickRemoved()V
.end method

.method final native nativeLinearAcc(FFFJ)V
.end method

.method final native nativeSensor(FFFJ)V
.end method

.method protected native nativeSetLocation(FFFFD)V
.end method

.method protected native nativeSetLocationStatus(I)V
.end method

.method public onCameraFrame(Lcom/unity3d/player/a;[B)V
    .locals 7

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/unity3d/player/a;->a()I

    move-result v4

    invoke-virtual {p1}, Lcom/unity3d/player/a;->b()I

    move-result v5

    invoke-virtual {p1}, Lcom/unity3d/player/a;->c()I

    move-result v2

    new-instance v0, Lcom/unity3d/player/UnityPlayer$11;

    move-object v1, p0

    move-object v3, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/unity3d/player/UnityPlayer$11;-><init>(Lcom/unity3d/player/UnityPlayer;I[BIILcom/unity3d/player/a;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 9

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->I:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->F:Lcom/unity3d/player/a/e;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeGetGLContext()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/String;

    const-string v4, "android.opengl.GLSurfaceView$GLWrapper"

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/unity3d/player/a/i;

    iget-object v5, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    new-instance v6, Lcom/unity3d/player/a/a;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v7, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeGetGLScreen()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v1, v7, v8}, Lcom/unity3d/player/a/a;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5, v6}, Lcom/unity3d/player/a/i;-><init>(Landroid/content/Context;Lcom/unity3d/player/a/h;)V

    :try_start_0
    new-instance v1, Lcom/unity3d/player/a/e;

    iget-object v5, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    invoke-direct {v1, v5, v4, v0}, Lcom/unity3d/player/a/e;-><init>(Landroid/content/Context;Lcom/unity3d/player/a/i;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->F:Lcom/unity3d/player/a/e;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->F:Lcom/unity3d/player/a/e;

    new-instance v1, Lcom/unity3d/player/UnityPlayer$2;

    invoke-direct {v1, p0}, Lcom/unity3d/player/UnityPlayer$2;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-virtual {v0, v1}, Lcom/unity3d/player/a/e;->a(Lcom/unity3d/player/a/f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeRender()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->c()V

    goto :goto_0

    :catch_0
    move-exception v0

    iput-boolean v3, p0, Lcom/unity3d/player/UnityPlayer;->I:Z

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/unity3d/player/UnityPlayer;->C:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/unity3d/player/UnityPlayer;->C:I

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->t:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->u:Z

    if-eqz v0, :cond_4

    iput-boolean v2, p0, Lcom/unity3d/player/UnityPlayer;->u:Z

    goto :goto_0

    :cond_4
    const-string v0, "assets/bin/"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/lib"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/unity3d/player/UnityPlayer;->unityAndroidInit(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->unityAndroidPrepareGameLoop()V

    iput-boolean v3, p0, Lcom/unity3d/player/UnityPlayer;->t:Z

    iget v0, p0, Lcom/unity3d/player/UnityPlayer;->v:I

    iget v1, p0, Lcom/unity3d/player/UnityPlayer;->w:I

    iget v4, p0, Lcom/unity3d/player/UnityPlayer;->v:I

    iget v5, p0, Lcom/unity3d/player/UnityPlayer;->w:I

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/unity3d/player/UnityPlayer;->nativeResize(IIII)V

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeResume()V

    invoke-virtual {p0, v3}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    :cond_5
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Lcom/unity3d/player/UnityGL;

    instance-of v0, v0, Lcom/unity3d/player/z;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->canUse32bitDisplayBuffer()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeRequested32bitDisplayBuffer()Z

    move-result v0

    move v1, v0

    :goto_2
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeRequestedAA()I

    move-result v0

    iget v4, p0, Lcom/unity3d/player/UnityPlayer;->z:I

    if-eq v4, v0, :cond_6

    iput v0, p0, Lcom/unity3d/player/UnityPlayer;->z:I

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Lcom/unity3d/player/UnityGL;

    check-cast v0, Lcom/unity3d/player/z;

    iget v2, p0, Lcom/unity3d/player/UnityPlayer;->z:I

    invoke-virtual {v0, v2}, Lcom/unity3d/player/z;->a(I)V

    move v2, v3

    :cond_6
    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->A:Z

    if-eq v0, v1, :cond_8

    iput-boolean v1, p0, Lcom/unity3d/player/UnityPlayer;->A:Z

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Lcom/unity3d/player/UnityGL;

    check-cast v0, Lcom/unity3d/player/z;

    iget-boolean v1, p0, Lcom/unity3d/player/UnityPlayer;->A:Z

    invoke-virtual {v0, v1}, Lcom/unity3d/player/z;->a(Z)V

    :goto_3
    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->O:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_7
    move v1, v2

    goto :goto_2

    :cond_8
    move v3, v2

    goto :goto_3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onNativeKey(JJIIIIIIIIZ)Z
    .locals 13

    new-instance v1, Landroid/view/KeyEvent;

    move-wide v2, p1

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move/from16 v0, p6

    invoke-direct {p0, v0, v1}, Lcom/unity3d/player/UnityPlayer;->a(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Lcom/unity3d/player/UnityGL;

    instance-of v0, v0, Landroid/view/SurfaceView;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/unity3d/player/UnityPlayer;->x:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/unity3d/player/UnityPlayer;->y:I

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/unity3d/player/UnityPlayer;->x:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Lcom/unity3d/player/UnityPlayer;->y:I

    if-eq v0, p3, :cond_2

    :cond_1
    iget v0, p0, Lcom/unity3d/player/UnityPlayer;->x:I

    iget v1, p0, Lcom/unity3d/player/UnityPlayer;->y:I

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/player/UnityPlayer;->setScreenSize(II)V

    :cond_2
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Lcom/unity3d/player/UnityGL;

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Lcom/unity3d/player/UnityGL;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Lcom/unity3d/player/UnityGL;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    iput p2, p0, Lcom/unity3d/player/UnityPlayer;->v:I

    iput p3, p0, Lcom/unity3d/player/UnityPlayer;->w:I

    invoke-direct {p0, p2, p3, v1, v0}, Lcom/unity3d/player/UnityPlayer;->nativeResize(IIII)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->getSettings()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "hide_status_bar"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v0, v1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    :cond_3
    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->nativeSetTouchDeltaY(F)V

    :cond_4
    return-void

    :cond_5
    move v0, p3

    move v1, p2

    goto :goto_0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeRecreateGfxState()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    const/4 v11, 0x0

    const/4 v9, 0x1

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->t:Z

    if-nez v0, :cond_0

    move v0, v9

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->j:Z

    if-eqz v0, :cond_1

    move v0, v9

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->d:Lcom/unity3d/player/h;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->d:Lcom/unity3d/player/h;

    invoke-interface {v0, p1}, Lcom/unity3d/player/h;->a(Landroid/view/MotionEvent;)I

    move-result v8

    :goto_1
    const/16 v0, 0x2002

    if-ne v8, v0, :cond_3

    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/16 v8, 0x1002

    goto :goto_1

    :cond_3
    const v0, 0x1000010

    if-ne v8, v0, :cond_4

    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v12

    move v1, v11

    :goto_2
    if-ge v1, v12, :cond_6

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v13

    move v10, v11

    :goto_3
    if-ge v10, v13, :cond_5

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v10}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v4

    invoke-virtual {p1, v1, v10}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v5

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/unity3d/player/UnityPlayer;->dispatchTouchEvent(IIIFFJI)Z

    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/unity3d/player/UnityPlayer;->dispatchTouchEvent(IIIFFJI)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    move v0, v9

    goto :goto_0
.end method

.method protected openURL(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/net/Uri;->isRelative()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-static {p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public pause()V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->L:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/unity3d/player/UnityPlayer;->r:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->L:Z

    iput-boolean v4, p0, Lcom/unity3d/player/UnityPlayer;->M:Z

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->K:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/player/a;

    invoke-virtual {v0}, Lcom/unity3d/player/a;->d()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->p:Lorg/fmod/FMODAudioDevice;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->p:Lorg/fmod/FMODAudioDevice;

    invoke-virtual {v0}, Lorg/fmod/FMODAudioDevice;->stop()V

    :cond_3
    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->t:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->k:Lcom/unity3d/player/UnityGL;

    new-instance v2, Lcom/unity3d/player/UnityPlayer$20;

    invoke-direct {v2, p0, v0}, Lcom/unity3d/player/UnityPlayer$20;-><init>(Lcom/unity3d/player/UnityPlayer;Ljava/util/concurrent/Semaphore;)V

    invoke-interface {v1, v2}, Lcom/unity3d/player/UnityGL;->queueEvent(Ljava/lang/Runnable;)V

    :goto_2
    const-wide/16 v1, 0xa

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->quit()V

    :cond_4
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->Z:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->f:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Lcom/unity3d/player/UnityGL;

    instance-of v0, v0, Lcom/unity3d/player/z;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->l:Lcom/unity3d/player/o;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->l:Lcom/unity3d/player/o;

    invoke-virtual {v0}, Lcom/unity3d/player/o;->a()V

    :cond_5
    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->e:Lcom/unity3d/player/y;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Lcom/unity3d/player/UnityGL;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/unity3d/player/y;->e(Landroid/view/View;)V

    :cond_6
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Lcom/unity3d/player/UnityGL;

    invoke-interface {v0}, Lcom/unity3d/player/UnityGL;->onPause()V

    invoke-virtual {p0, v4}, Lcom/unity3d/player/UnityPlayer;->setWakeLock(Z)V

    invoke-direct {p0, v4}, Lcom/unity3d/player/UnityPlayer;->a(Z)V

    invoke-direct {p0, v4}, Lcom/unity3d/player/UnityPlayer;->b(Z)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->n:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->B:Lcom/unity3d/player/p;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->B:Lcom/unity3d/player/p;

    invoke-virtual {v0}, Lcom/unity3d/player/p;->d()V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->k:Lcom/unity3d/player/UnityGL;

    new-instance v2, Lcom/unity3d/player/UnityPlayer$21;

    invoke-direct {v2, p0, v0}, Lcom/unity3d/player/UnityPlayer$21;-><init>(Lcom/unity3d/player/UnityPlayer;Ljava/util/concurrent/Semaphore;)V

    invoke-interface {v1, v2}, Lcom/unity3d/player/UnityGL;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_3
.end method

.method protected queueEvent(Ljava/lang/Runnable;)V
    .locals 2

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->t:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Lcom/unity3d/player/UnityGL;

    new-instance v1, Lcom/unity3d/player/UnityPlayer$15;

    invoke-direct {v1, p0, p1}, Lcom/unity3d/player/UnityPlayer$15;-><init>(Lcom/unity3d/player/UnityPlayer;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Lcom/unity3d/player/UnityGL;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public quit()V
    .locals 1

    sget-boolean v0, Lcom/unity3d/player/UnityPlayer;->r:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->removeAllViews()V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Lcom/unity3d/player/UnityGL;

    invoke-interface {v0}, Lcom/unity3d/player/UnityGL;->a()V

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->F:Lcom/unity3d/player/a/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->F:Lcom/unity3d/player/a/e;

    invoke-virtual {v0}, Lcom/unity3d/player/a/e;->a()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->F:Lcom/unity3d/player/a/e;

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->kill()V

    return-void
.end method

.method protected reportSoftInputStr(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->hideSoftInput()V

    :cond_0
    new-instance v0, Lcom/unity3d/player/UnityPlayer$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/unity3d/player/UnityPlayer$10;-><init>(Lcom/unity3d/player/UnityPlayer;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resume()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->L:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/unity3d/player/UnityPlayer;->r:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->L:Z

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->K:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/player/a;

    :try_start_0
    invoke-virtual {v0, p0}, Lcom/unity3d/player/a;->a(Lcom/unity3d/player/a$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camera failed to open: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/unity3d/player/l;->Log(ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Lcom/unity3d/player/UnityGL;

    invoke-interface {v0}, Lcom/unity3d/player/UnityGL;->onResume()V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->Z:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->n:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->B:Lcom/unity3d/player/p;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->n:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    invoke-direct {p0, v5}, Lcom/unity3d/player/UnityPlayer;->a(Z)V

    invoke-direct {p0, v5}, Lcom/unity3d/player/UnityPlayer;->b(Z)V

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->d()V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->B:Lcom/unity3d/player/p;

    invoke-virtual {v0}, Lcom/unity3d/player/p;->e()V

    iput-object v6, p0, Lcom/unity3d/player/UnityPlayer;->D:Ljava/lang/String;

    iput-object v6, p0, Lcom/unity3d/player/UnityPlayer;->E:Landroid/net/NetworkInfo;

    goto :goto_0
.end method

.method protected setCompassEnabled(Z)V
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/unity3d/player/UnityPlayer;->ac:Z

    if-ne v2, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->isCompassAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->ac:Z

    invoke-direct {p0, v1}, Lcom/unity3d/player/UnityPlayer;->b(Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->b(Z)V

    iput-boolean p1, p0, Lcom/unity3d/player/UnityPlayer;->ac:Z

    new-instance v0, Lcom/unity3d/player/UnityPlayer$14;

    invoke-direct {v0, p0}, Lcom/unity3d/player/UnityPlayer$14;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected setGyroEnabled(Z)V
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/unity3d/player/UnityPlayer;->aa:Z

    if-ne v2, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->getIsGyroAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->aa:Z

    invoke-direct {p0, v1}, Lcom/unity3d/player/UnityPlayer;->a(Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->a(Z)V

    iput-boolean p1, p0, Lcom/unity3d/player/UnityPlayer;->aa:Z

    new-instance v0, Lcom/unity3d/player/UnityPlayer$13;

    invoke-direct {v0, p0}, Lcom/unity3d/player/UnityPlayer$13;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected setGyroUpdateDelay(I)V
    .locals 0

    iput p1, p0, Lcom/unity3d/player/UnityPlayer;->ab:I

    return-void
.end method

.method protected setHideInputField(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unity3d/player/UnityPlayer;->b:Z

    return-void
.end method

.method protected setOrientation(I)V
    .locals 3

    const/16 v2, 0x9

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    if-eq p1, v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v2, :cond_2

    if-eq p1, v2, :cond_0

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    :cond_2
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method protected setScreenSize(II)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Lcom/unity3d/player/UnityGL;

    instance-of v0, v0, Landroid/view/SurfaceView;

    if-nez v0, :cond_0

    const/4 v0, 0x5

    const-string v1, "setScreenSize: Unable to retrieve surface holder"

    invoke-static {v0, v1}, Lcom/unity3d/player/l;->Log(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Lcom/unity3d/player/UnityGL;

    check-cast v0, Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    if-ne v1, p1, :cond_1

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v1

    if-eq v1, p2, :cond_2

    :cond_1
    if-ne p1, v3, :cond_3

    if-ne p2, v3, :cond_3

    :cond_2
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_4

    iput v2, p0, Lcom/unity3d/player/UnityPlayer;->x:I

    iput v2, p0, Lcom/unity3d/player/UnityPlayer;->y:I

    :goto_2
    new-instance v2, Lcom/unity3d/player/UnityPlayer$7;

    invoke-direct {v2, v1, v0, p1, p2}, Lcom/unity3d/player/UnityPlayer$7;-><init>(ZLandroid/view/SurfaceView;II)V

    invoke-direct {p0, v2}, Lcom/unity3d/player/UnityPlayer;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    iput p1, p0, Lcom/unity3d/player/UnityPlayer;->x:I

    iput p2, p0, Lcom/unity3d/player/UnityPlayer;->y:I

    goto :goto_2
.end method

.method protected setWakeLock(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->hasWakeLock()Z

    move-result v0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method protected showBuildSetup()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->G:Z

    return v0
.end method

.method protected showRuntimeSetup()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->H:Z

    return v0
.end method

.method protected showSoftInput(Ljava/lang/String;IZZZZLjava/lang/String;)V
    .locals 10

    new-instance v0, Lcom/unity3d/player/UnityPlayer$8;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/unity3d/player/UnityPlayer$8;-><init>(Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/UnityPlayer;Ljava/lang/String;IZZZZLjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected showVideoPlayer(Ljava/lang/String;IIIZ)V
    .locals 3

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    const-class v2, Lcom/unity3d/player/VideoPlayer;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "fileName"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "backgroundColor"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "controlMode"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "scalingMode"

    invoke-virtual {v1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "isURL"

    invoke-virtual {v1, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    check-cast v0, Landroid/app/Activity;

    const-string v2, "screenOrientation"

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "autorotationOn"

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeIsAutorotationOn()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    const-string v0, "wakeLock"

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->hasWakeLock()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v0, 0x10000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v0, Lcom/unity3d/player/UnityPlayer$12;

    invoke-direct {v0, p0, v1}, Lcom/unity3d/player/UnityPlayer$12;-><init>(Lcom/unity3d/player/UnityPlayer;Landroid/content/Intent;)V

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const-string v0, "screenOrientation"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "autorotationOn"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected startActivityIndicator()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->Q:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected stopActivityIndicator()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->R:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected vibrate(I)V
    .locals 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->q:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->i:Landroid/content/ContextWrapper;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->q:Landroid/os/Vibrator;

    :cond_0
    if-nez p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->q:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->q:Landroid/os/Vibrator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x5

    const-string v1, "android.permission.VIBRATE not available?"

    invoke-static {v0, v1}, Lcom/unity3d/player/l;->Log(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public windowFocusChanged(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/unity3d/player/UnityPlayer;->N:Z

    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->N:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->a:Lcom/unity3d/player/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->a:Lcom/unity3d/player/x;

    invoke-virtual {v0}, Lcom/unity3d/player/x;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/unity3d/player/UnityPlayer;->reportSoftInputStr(Ljava/lang/String;I)V

    :cond_0
    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->t:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->k:Lcom/unity3d/player/UnityGL;

    new-instance v1, Lcom/unity3d/player/UnityPlayer$23;

    invoke-direct {v1, p0}, Lcom/unity3d/player/UnityPlayer$23;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-interface {v0, v1}, Lcom/unity3d/player/UnityGL;->queueEvent(Ljava/lang/Runnable;)V

    :cond_1
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->d()V

    return-void
.end method
