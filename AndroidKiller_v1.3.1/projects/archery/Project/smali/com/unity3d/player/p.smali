.class final Lcom/unity3d/player/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/location/LocationListener;


# static fields
.field private static final d:[I

.field private static final e:[[F


# instance fields
.field private A:Ljava/lang/Runnable;

.field private B:Ljava/lang/Runnable;

.field private C:Ljava/lang/Runnable;

.field private D:Ljava/lang/Runnable;

.field private E:[F

.field private F:D

.field private G:Ljava/lang/Runnable;

.field private H:[F

.field private I:[F

.field private J:I

.field private K:Ljava/lang/Runnable;

.field private L:Landroid/location/Location;

.field private M:F

.field private N:Z

.field private O:I

.field private P:Z

.field private Q:I

.field private final a:Landroid/content/Context;

.field private final b:Lcom/unity3d/player/UnityPlayer;

.field private final c:Landroid/view/WindowManager;

.field private f:[F

.field private g:[F

.field private h:F

.field private i:F

.field private j:F

.field private k:J

.field private l:F

.field private m:F

.field private n:F

.field private o:J

.field private p:F

.field private q:F

.field private r:F

.field private s:J

.field private t:F

.field private u:F

.field private v:F

.field private w:J

.field private x:[F

.field private y:[F

.field private z:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v11, 0x0

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v9, 0x0

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    const/4 v6, 0x4

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/unity3d/player/p;->d:[I

    new-array v0, v6, [[F

    new-array v1, v6, [F

    fill-array-data v1, :array_1

    aput-object v1, v0, v11

    const/4 v1, 0x1

    new-array v2, v6, [F

    aput v9, v2, v11

    const/4 v3, 0x1

    aput v9, v2, v3

    const/4 v3, 0x2

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v10

    aput v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    neg-float v4, v4

    mul-float/2addr v4, v10

    aput v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v6, [F

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v6, [F

    aput v9, v2, v11

    const/4 v3, 0x1

    aput v9, v2, v3

    const/4 v3, 0x2

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    neg-float v4, v4

    mul-float/2addr v4, v10

    aput v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    neg-float v4, v4

    mul-float/2addr v4, v10

    aput v4, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Lcom/unity3d/player/p;->e:[[F

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x0
        0x1
        -0x1
        0x1
        0x1
        0x0
        -0x1
        -0x1
        0x0
        0x1
        0x1
        -0x1
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/unity3d/player/UnityPlayer;)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/unity3d/player/p;->f:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/unity3d/player/p;->g:[F

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/unity3d/player/p;->x:[F

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/unity3d/player/p;->y:[F

    new-instance v0, Lcom/unity3d/player/q;

    invoke-direct {v0, p0}, Lcom/unity3d/player/q;-><init>(Lcom/unity3d/player/p;)V

    iput-object v0, p0, Lcom/unity3d/player/p;->z:Ljava/lang/Runnable;

    new-instance v0, Lcom/unity3d/player/r;

    invoke-direct {v0, p0}, Lcom/unity3d/player/r;-><init>(Lcom/unity3d/player/p;)V

    iput-object v0, p0, Lcom/unity3d/player/p;->A:Ljava/lang/Runnable;

    new-instance v0, Lcom/unity3d/player/s;

    invoke-direct {v0, p0}, Lcom/unity3d/player/s;-><init>(Lcom/unity3d/player/p;)V

    iput-object v0, p0, Lcom/unity3d/player/p;->B:Ljava/lang/Runnable;

    new-instance v0, Lcom/unity3d/player/t;

    invoke-direct {v0, p0}, Lcom/unity3d/player/t;-><init>(Lcom/unity3d/player/p;)V

    iput-object v0, p0, Lcom/unity3d/player/p;->C:Ljava/lang/Runnable;

    new-instance v0, Lcom/unity3d/player/u;

    invoke-direct {v0, p0}, Lcom/unity3d/player/u;-><init>(Lcom/unity3d/player/p;)V

    iput-object v0, p0, Lcom/unity3d/player/p;->D:Ljava/lang/Runnable;

    const/4 v0, 0x5

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/unity3d/player/p;->E:[F

    new-instance v0, Lcom/unity3d/player/v;

    invoke-direct {v0, p0}, Lcom/unity3d/player/v;-><init>(Lcom/unity3d/player/p;)V

    iput-object v0, p0, Lcom/unity3d/player/p;->G:Ljava/lang/Runnable;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/unity3d/player/p;->H:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/unity3d/player/p;->I:[F

    new-instance v0, Lcom/unity3d/player/w;

    invoke-direct {v0, p0}, Lcom/unity3d/player/w;-><init>(Lcom/unity3d/player/p;)V

    iput-object v0, p0, Lcom/unity3d/player/p;->K:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/unity3d/player/p;->M:F

    iput-boolean v1, p0, Lcom/unity3d/player/p;->N:Z

    iput v1, p0, Lcom/unity3d/player/p;->O:I

    iput-boolean v1, p0, Lcom/unity3d/player/p;->P:Z

    iput v1, p0, Lcom/unity3d/player/p;->Q:I

    iput-object p1, p0, Lcom/unity3d/player/p;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/unity3d/player/p;->b:Lcom/unity3d/player/UnityPlayer;

    iget-object v0, p0, Lcom/unity3d/player/p;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/unity3d/player/p;->c:Landroid/view/WindowManager;

    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/p;)F
    .locals 1

    iget v0, p0, Lcom/unity3d/player/p;->h:F

    return v0
.end method

.method private a(Landroid/location/Location;)V
    .locals 10

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/unity3d/player/p;->L:Landroid/location/Location;

    if-nez v7, :cond_3

    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    iput-object p1, p0, Lcom/unity3d/player/p;->L:Landroid/location/Location;

    iget-object v0, p0, Lcom/unity3d/player/p;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    long-to-double v5, v5

    const-wide v7, 0x408f400000000000L    # 1000.0

    div-double/2addr v5, v7

    invoke-virtual/range {v0 .. v6}, Lcom/unity3d/player/UnityPlayer;->nativeSetLocation(FFFFD)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {v7}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    sub-long v4, v3, v5

    const-wide/32 v8, 0x1d4c0

    cmp-long v0, v4, v8

    if-lez v0, :cond_6

    move v3, v1

    :goto_2
    const-wide/32 v8, -0x1d4c0

    cmp-long v0, v4, v8

    if-gez v0, :cond_7

    move v0, v1

    :goto_3
    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-lez v4, :cond_8

    move v6, v1

    :goto_4
    if-nez v3, :cond_2

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {v7}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    sub-float/2addr v0, v3

    float-to-int v0, v0

    if-lez v0, :cond_9

    move v5, v1

    :goto_5
    if-gez v0, :cond_a

    move v4, v1

    :goto_6
    const/16 v3, 0xc8

    if-le v0, v3, :cond_b

    move v0, v1

    :goto_7
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    const/4 v8, 0x0

    cmpl-float v3, v3, v8

    if-nez v3, :cond_c

    move v3, v1

    :goto_8
    or-int/2addr v3, v0

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    if-nez v0, :cond_e

    if-nez v7, :cond_d

    move v0, v1

    :goto_9
    if-nez v4, :cond_2

    if-eqz v6, :cond_4

    if-eqz v5, :cond_2

    :cond_4
    if-eqz v6, :cond_5

    if-nez v3, :cond_5

    if-nez v0, :cond_2

    :cond_5
    move v1, v2

    goto/16 :goto_1

    :cond_6
    move v3, v2

    goto :goto_2

    :cond_7
    move v0, v2

    goto :goto_3

    :cond_8
    move v6, v2

    goto :goto_4

    :cond_9
    move v5, v2

    goto :goto_5

    :cond_a
    move v4, v2

    goto :goto_6

    :cond_b
    move v0, v2

    goto :goto_7

    :cond_c
    move v3, v2

    goto :goto_8

    :cond_d
    move v0, v2

    goto :goto_9

    :cond_e
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_9
.end method

.method static synthetic b(Lcom/unity3d/player/p;)F
    .locals 1

    iget v0, p0, Lcom/unity3d/player/p;->i:F

    return v0
.end method

.method static synthetic c(Lcom/unity3d/player/p;)F
    .locals 1

    iget v0, p0, Lcom/unity3d/player/p;->j:F

    return v0
.end method

.method static synthetic d(Lcom/unity3d/player/p;)J
    .locals 2

    iget-wide v0, p0, Lcom/unity3d/player/p;->k:J

    return-wide v0
.end method

.method static synthetic e(Lcom/unity3d/player/p;)Lcom/unity3d/player/UnityPlayer;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/p;->b:Lcom/unity3d/player/UnityPlayer;

    return-object v0
.end method

.method static synthetic f(Lcom/unity3d/player/p;)F
    .locals 1

    iget v0, p0, Lcom/unity3d/player/p;->l:F

    return v0
.end method

.method static synthetic f()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method static synthetic g(Lcom/unity3d/player/p;)F
    .locals 1

    iget v0, p0, Lcom/unity3d/player/p;->m:F

    return v0
.end method

.method static synthetic h(Lcom/unity3d/player/p;)F
    .locals 1

    iget v0, p0, Lcom/unity3d/player/p;->n:F

    return v0
.end method

.method static synthetic i(Lcom/unity3d/player/p;)J
    .locals 2

    iget-wide v0, p0, Lcom/unity3d/player/p;->o:J

    return-wide v0
.end method

.method static synthetic j(Lcom/unity3d/player/p;)F
    .locals 1

    iget v0, p0, Lcom/unity3d/player/p;->p:F

    return v0
.end method

.method static synthetic k(Lcom/unity3d/player/p;)F
    .locals 1

    iget v0, p0, Lcom/unity3d/player/p;->q:F

    return v0
.end method

.method static synthetic l(Lcom/unity3d/player/p;)F
    .locals 1

    iget v0, p0, Lcom/unity3d/player/p;->r:F

    return v0
.end method

.method static synthetic m(Lcom/unity3d/player/p;)J
    .locals 2

    iget-wide v0, p0, Lcom/unity3d/player/p;->s:J

    return-wide v0
.end method

.method static synthetic n(Lcom/unity3d/player/p;)F
    .locals 1

    iget v0, p0, Lcom/unity3d/player/p;->t:F

    return v0
.end method

.method static synthetic o(Lcom/unity3d/player/p;)F
    .locals 1

    iget v0, p0, Lcom/unity3d/player/p;->u:F

    return v0
.end method

.method static synthetic p(Lcom/unity3d/player/p;)F
    .locals 1

    iget v0, p0, Lcom/unity3d/player/p;->v:F

    return v0
.end method

.method static synthetic q(Lcom/unity3d/player/p;)J
    .locals 2

    iget-wide v0, p0, Lcom/unity3d/player/p;->w:J

    return-wide v0
.end method

.method static synthetic r(Lcom/unity3d/player/p;)[F
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/p;->x:[F

    return-object v0
.end method

.method static synthetic s(Lcom/unity3d/player/p;)[F
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/p;->E:[F

    return-object v0
.end method

.method static synthetic t(Lcom/unity3d/player/p;)D
    .locals 2

    iget-wide v0, p0, Lcom/unity3d/player/p;->F:D

    return-wide v0
.end method

.method static synthetic u(Lcom/unity3d/player/p;)I
    .locals 1

    iget v0, p0, Lcom/unity3d/player/p;->J:I

    return v0
.end method


# virtual methods
.method public final a(F)V
    .locals 0

    iput p1, p0, Lcom/unity3d/player/p;->M:F

    return-void
.end method

.method public final a()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/unity3d/player/p;->a:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    new-instance v2, Landroid/location/Criteria;

    invoke-direct {v2}, Landroid/location/Criteria;-><init>()V

    invoke-virtual {v0, v2, v1}, Landroid/location/LocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 10

    const/4 v6, 0x2

    const/4 v2, 0x3

    const/4 v9, 0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/player/p;->P:Z

    iget-boolean v0, p0, Lcom/unity3d/player/p;->N:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    const-string v1, "Location_StartUpdatingLocation already started!"

    invoke-static {v0, v1}, Lcom/unity3d/player/l;->Log(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/unity3d/player/p;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iput v2, p0, Lcom/unity3d/player/p;->Q:I

    iget-object v0, p0, Lcom/unity3d/player/p;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, v2}, Lcom/unity3d/player/UnityPlayer;->nativeSetLocationStatus(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/unity3d/player/p;->a:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput v9, p0, Lcom/unity3d/player/p;->Q:I

    iget-object v1, p0, Lcom/unity3d/player/p;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v1, v9}, Lcom/unity3d/player/UnityPlayer;->nativeSetLocationStatus(I)V

    invoke-virtual {v0, v9}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iput v2, p0, Lcom/unity3d/player/p;->Q:I

    iget-object v0, p0, Lcom/unity3d/player/p;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, v2}, Lcom/unity3d/player/UnityPlayer;->nativeSetLocationStatus(I)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    iget v1, p0, Lcom/unity3d/player/p;->O:I

    if-ne v1, v6, :cond_7

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/LocationProvider;->getAccuracy()I

    move-result v5

    if-ne v5, v6, :cond_4

    move-object v7, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v7, :cond_6

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/LocationProvider;->getAccuracy()I

    move-result v2

    if-eq v2, v9, :cond_5

    :cond_6
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/unity3d/player/p;->a(Landroid/location/Location;)V

    const-wide/16 v2, 0x0

    iget v4, p0, Lcom/unity3d/player/p;->M:F

    iget-object v5, p0, Lcom/unity3d/player/p;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    iput-boolean v9, p0, Lcom/unity3d/player/p;->N:Z

    goto :goto_2

    :cond_7
    move-object v7, v2

    goto :goto_1
.end method

.method public final b(F)V
    .locals 2

    const/4 v1, 0x1

    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iput v1, p0, Lcom/unity3d/player/p;->O:I

    :goto_0
    return-void

    :cond_0
    const/high16 v0, 0x43fa0000    # 500.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    iput v1, p0, Lcom/unity3d/player/p;->O:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/unity3d/player/p;->O:I

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/unity3d/player/p;->a:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iput-boolean v2, p0, Lcom/unity3d/player/p;->N:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/p;->L:Landroid/location/Location;

    iput v2, p0, Lcom/unity3d/player/p;->Q:I

    iget-object v0, p0, Lcom/unity3d/player/p;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, v2}, Lcom/unity3d/player/UnityPlayer;->nativeSetLocationStatus(I)V

    return-void
.end method

.method public final d()V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/unity3d/player/p;->Q:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/unity3d/player/p;->Q:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iput-boolean v2, p0, Lcom/unity3d/player/p;->P:Z

    invoke-virtual {p0}, Lcom/unity3d/player/p;->c()V

    :cond_1
    return-void
.end method

.method public final e()V
    .locals 1

    iget-boolean v0, p0, Lcom/unity3d/player/p;->P:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/unity3d/player/p;->b()V

    :cond_0
    return-void
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 2

    const/4 v1, 0x2

    iput v1, p0, Lcom/unity3d/player/p;->Q:I

    iget-object v0, p0, Lcom/unity3d/player/p;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->nativeSetLocationStatus(I)V

    invoke-direct {p0, p1}, Lcom/unity3d/player/p;->a(Landroid/location/Location;)V

    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/p;->L:Landroid/location/Location;

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11

    const v10, -0x422f2981

    const/4 v4, 0x3

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x2

    iget-object v0, p0, Lcom/unity3d/player/p;->c:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    and-int/lit8 v0, v0, 0x3

    sget-object v1, Lcom/unity3d/player/p;->d:[I

    mul-int/lit8 v5, v0, 0x4

    add-int/lit8 v5, v5, 0x0

    aget v1, v1, v5

    int-to-float v1, v1

    sget-object v5, Lcom/unity3d/player/p;->d:[I

    mul-int/lit8 v6, v0, 0x4

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    int-to-float v5, v5

    sget-object v6, Lcom/unity3d/player/p;->d:[I

    mul-int/lit8 v9, v0, 0x4

    add-int/lit8 v9, v9, 0x2

    aget v6, v6, v9

    sget-object v9, Lcom/unity3d/player/p;->d:[I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x3

    aget v0, v9, v0

    iget-object v9, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v9}, Landroid/hardware/Sensor;->getType()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/unity3d/player/p;->f:[F

    iget-object v0, p0, Lcom/unity3d/player/p;->c:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    and-int/lit8 v0, v0, 0x3

    sget-object v1, Lcom/unity3d/player/p;->d:[I

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x0

    aget v1, v1, v3

    int-to-float v1, v1

    sget-object v3, Lcom/unity3d/player/p;->d:[I

    mul-int/lit8 v6, v0, 0x4

    add-int/lit8 v6, v6, 0x1

    aget v3, v3, v6

    int-to-float v3, v3

    sget-object v6, Lcom/unity3d/player/p;->d:[I

    mul-int/lit8 v9, v0, 0x4

    add-int/lit8 v9, v9, 0x2

    aget v6, v6, v9

    sget-object v9, Lcom/unity3d/player/p;->d:[I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x3

    aget v0, v9, v0

    mul-float/2addr v1, v10

    iget-object v9, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v9, v6

    mul-float/2addr v1, v6

    iput v1, p0, Lcom/unity3d/player/p;->h:F

    mul-float v1, v3, v10

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v3, v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/unity3d/player/p;->i:F

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v7

    mul-float/2addr v0, v10

    iput v0, p0, Lcom/unity3d/player/p;->j:F

    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v0, p0, Lcom/unity3d/player/p;->k:J

    iget-object v0, p0, Lcom/unity3d/player/p;->b:Lcom/unity3d/player/UnityPlayer;

    iget-object v1, p0, Lcom/unity3d/player/p;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Ljava/lang/Runnable;)V

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v8

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v7

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float v9, v0, v0

    mul-float v10, v1, v1

    add-float/2addr v9, v10

    mul-float v10, v3, v3

    add-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v9, v9

    div-float v9, v6, v9

    mul-float v6, v0, v9

    mul-float v0, v1, v9

    mul-float/2addr v3, v9

    iget-object v1, p0, Lcom/unity3d/player/p;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v1}, Lcom/unity3d/player/UnityPlayer;->getOrientation()I

    move-result v1

    if-ne v1, v8, :cond_7

    move v1, v2

    :goto_1
    sub-int v1, v5, v1

    and-int/lit8 v1, v1, 0x3

    if-ne v1, v8, :cond_a

    move v5, v0

    :goto_2
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, v0, v6

    if-gez v0, :cond_12

    move v0, v8

    move v1, v6

    :goto_3
    neg-float v8, v6

    cmpg-float v8, v1, v8

    if-gez v8, :cond_1

    neg-float v1, v6

    move v0, v7

    :cond_1
    cmpg-float v6, v1, v5

    if-gez v6, :cond_2

    move v0, v4

    move v1, v5

    :cond_2
    neg-float v4, v5

    cmpg-float v4, v1, v4

    if-gez v4, :cond_3

    neg-float v1, v5

    const/4 v0, 0x4

    :cond_3
    cmpg-float v4, v1, v3

    if-gez v4, :cond_4

    const/4 v0, 0x5

    move v1, v3

    :cond_4
    neg-float v4, v3

    cmpg-float v4, v1, v4

    if-gez v4, :cond_5

    neg-float v1, v3

    const/4 v0, 0x6

    :cond_5
    float-to-double v3, v1

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    cmpg-double v1, v3, v5

    if-gez v1, :cond_6

    move v0, v2

    :cond_6
    iput v0, p0, Lcom/unity3d/player/p;->J:I

    iget-object v0, p0, Lcom/unity3d/player/p;->b:Lcom/unity3d/player/UnityPlayer;

    iget-object v1, p0, Lcom/unity3d/player/p;->K:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_7
    if-nez v1, :cond_8

    move v1, v8

    goto :goto_1

    :cond_8
    const/16 v9, 0x9

    if-ne v1, v9, :cond_9

    move v1, v7

    goto :goto_1

    :cond_9
    const/16 v9, 0x8

    if-ne v1, v9, :cond_14

    move v1, v4

    goto :goto_1

    :cond_a
    if-ne v1, v4, :cond_13

    neg-float v6, v6

    move v5, v0

    goto :goto_2

    :pswitch_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/unity3d/player/p;->g:[F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v5

    iput-wide v0, p0, Lcom/unity3d/player/p;->F:D

    iget-object v0, p0, Lcom/unity3d/player/p;->H:[F

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/unity3d/player/p;->f:[F

    iget-object v6, p0, Lcom/unity3d/player/p;->g:[F

    invoke-static {v0, v1, v5, v6}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/p;->H:[F

    iget-object v1, p0, Lcom/unity3d/player/p;->I:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    iget-object v0, p0, Lcom/unity3d/player/p;->I:[F

    aget v0, v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    packed-switch v3, :pswitch_data_1

    :goto_4
    const/high16 v1, 0x43b40000    # 360.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_d

    const/high16 v1, 0x43b40000    # 360.0f

    sub-float/2addr v0, v1

    goto :goto_4

    :pswitch_3
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v6

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/unity3d/player/p;->l:F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v1, v0

    mul-float/2addr v0, v5

    iput v0, p0, Lcom/unity3d/player/p;->m:F

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v7

    iput v0, p0, Lcom/unity3d/player/p;->n:F

    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v0, p0, Lcom/unity3d/player/p;->o:J

    iget-object v0, p0, Lcom/unity3d/player/p;->b:Lcom/unity3d/player/UnityPlayer;

    iget-object v1, p0, Lcom/unity3d/player/p;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :pswitch_4
    mul-float/2addr v1, v10

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v6

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/unity3d/player/p;->p:F

    mul-float v1, v5, v10

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v2, v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/unity3d/player/p;->q:F

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v7

    mul-float/2addr v0, v10

    iput v0, p0, Lcom/unity3d/player/p;->r:F

    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v0, p0, Lcom/unity3d/player/p;->s:J

    iget-object v0, p0, Lcom/unity3d/player/p;->b:Lcom/unity3d/player/UnityPlayer;

    iget-object v1, p0, Lcom/unity3d/player/p;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :pswitch_5
    mul-float/2addr v1, v10

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v6

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/unity3d/player/p;->t:F

    mul-float v1, v5, v10

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v2, v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/unity3d/player/p;->u:F

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v7

    mul-float/2addr v0, v10

    iput v0, p0, Lcom/unity3d/player/p;->v:F

    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v0, p0, Lcom/unity3d/player/p;->w:J

    iget-object v0, p0, Lcom/unity3d/player/p;->b:Lcom/unity3d/player/UnityPlayer;

    iget-object v1, p0, Lcom/unity3d/player/p;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/unity3d/player/p;->y:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    aput v1, v0, v2

    iget-object v0, p0, Lcom/unity3d/player/p;->y:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v8

    aput v1, v0, v8

    iget-object v0, p0, Lcom/unity3d/player/p;->y:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v7

    aput v1, v0, v7

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    iget-object v1, p0, Lcom/unity3d/player/p;->y:[F

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    :goto_5
    aput v0, v1, v4

    iget-object v0, p0, Lcom/unity3d/player/p;->x:[F

    iget-object v1, p0, Lcom/unity3d/player/p;->y:[F

    sget-object v5, Lcom/unity3d/player/p;->e:[[F

    aget-object v3, v5, v3

    aget v5, v1, v4

    aget v6, v3, v2

    mul-float/2addr v5, v6

    aget v6, v1, v2

    aget v9, v3, v4

    mul-float/2addr v6, v9

    add-float/2addr v5, v6

    aget v6, v1, v8

    aget v9, v3, v7

    mul-float/2addr v6, v9

    add-float/2addr v5, v6

    aget v6, v1, v7

    aget v9, v3, v8

    mul-float/2addr v6, v9

    sub-float/2addr v5, v6

    aput v5, v0, v2

    aget v5, v1, v4

    aget v6, v3, v8

    mul-float/2addr v5, v6

    aget v6, v1, v8

    aget v9, v3, v4

    mul-float/2addr v6, v9

    add-float/2addr v5, v6

    aget v6, v1, v7

    aget v9, v3, v2

    mul-float/2addr v6, v9

    add-float/2addr v5, v6

    aget v6, v1, v2

    aget v9, v3, v7

    mul-float/2addr v6, v9

    sub-float/2addr v5, v6

    aput v5, v0, v8

    aget v5, v1, v4

    aget v6, v3, v7

    mul-float/2addr v5, v6

    aget v6, v1, v7

    aget v9, v3, v4

    mul-float/2addr v6, v9

    add-float/2addr v5, v6

    aget v6, v1, v2

    aget v9, v3, v8

    mul-float/2addr v6, v9

    add-float/2addr v5, v6

    aget v6, v1, v8

    aget v9, v3, v2

    mul-float/2addr v6, v9

    sub-float/2addr v5, v6

    aput v5, v0, v7

    aget v5, v1, v4

    aget v6, v3, v4

    mul-float/2addr v5, v6

    aget v6, v1, v2

    aget v2, v3, v2

    mul-float/2addr v2, v6

    sub-float v2, v5, v2

    aget v5, v1, v8

    aget v6, v3, v8

    mul-float/2addr v5, v6

    sub-float/2addr v2, v5

    aget v1, v1, v7

    aget v3, v3, v7

    mul-float/2addr v1, v3

    sub-float v1, v2, v1

    aput v1, v0, v4

    iget-object v0, p0, Lcom/unity3d/player/p;->b:Lcom/unity3d/player/UnityPlayer;

    iget-object v1, p0, Lcom/unity3d/player/p;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/unity3d/player/p;->y:[F

    aget v0, v0, v2

    iget-object v1, p0, Lcom/unity3d/player/p;->y:[F

    aget v1, v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/unity3d/player/p;->y:[F

    aget v1, v1, v8

    iget-object v5, p0, Lcom/unity3d/player/p;->y:[F

    aget v5, v5, v8

    mul-float/2addr v1, v5

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/unity3d/player/p;->y:[F

    aget v1, v1, v7

    iget-object v5, p0, Lcom/unity3d/player/p;->y:[F

    aget v5, v5, v7

    mul-float/2addr v1, v5

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/unity3d/player/p;->y:[F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v5, v0, v5

    if-gez v5, :cond_c

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v0, v5, v0

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v0, v5

    goto/16 :goto_5

    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_5

    :pswitch_7
    const/high16 v1, 0x42b40000    # 90.0f

    add-float/2addr v0, v1

    goto/16 :goto_4

    :pswitch_8
    const/high16 v1, 0x43340000    # 180.0f

    add-float/2addr v0, v1

    goto/16 :goto_4

    :pswitch_9
    const/high16 v1, 0x43870000    # 270.0f

    add-float/2addr v0, v1

    goto/16 :goto_4

    :cond_d
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_11

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    move v6, v0

    :goto_6
    iget-object v0, p0, Lcom/unity3d/player/p;->E:[F

    iget-object v1, p0, Lcom/unity3d/player/p;->g:[F

    aget v1, v1, v2

    aput v1, v0, v2

    iget-object v0, p0, Lcom/unity3d/player/p;->E:[F

    iget-object v1, p0, Lcom/unity3d/player/p;->g:[F

    aget v1, v1, v8

    aput v1, v0, v8

    iget-object v0, p0, Lcom/unity3d/player/p;->E:[F

    iget-object v1, p0, Lcom/unity3d/player/p;->g:[F

    aget v1, v1, v7

    aput v1, v0, v7

    iget-object v0, p0, Lcom/unity3d/player/p;->E:[F

    aput v6, v0, v4

    iget-object v0, p0, Lcom/unity3d/player/p;->L:Landroid/location/Location;

    if-eqz v0, :cond_10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/unity3d/player/p;->L:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x124f80

    cmp-long v0, v0, v2

    if-gez v0, :cond_10

    new-instance v0, Landroid/hardware/GeomagneticField;

    iget-object v1, p0, Lcom/unity3d/player/p;->L:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, p0, Lcom/unity3d/player/p;->L:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    double-to-float v2, v2

    iget-object v3, p0, Lcom/unity3d/player/p;->L:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v4, p0, Lcom/unity3d/player/p;->L:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Landroid/hardware/GeomagneticField;-><init>(FFFJ)V

    invoke-virtual {v0}, Landroid/hardware/GeomagneticField;->getDeclination()F

    move-result v0

    add-float/2addr v6, v0

    move v0, v6

    :goto_7
    const/high16 v1, 0x43b40000    # 360.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_e

    const/high16 v1, 0x43b40000    # 360.0f

    sub-float v6, v0, v1

    move v0, v6

    goto :goto_7

    :cond_e
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_f

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    :cond_f
    iget-object v1, p0, Lcom/unity3d/player/p;->E:[F

    const/4 v2, 0x4

    aput v0, v1, v2

    iget-object v0, p0, Lcom/unity3d/player/p;->b:Lcom/unity3d/player/UnityPlayer;

    iget-object v1, p0, Lcom/unity3d/player/p;->G:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->queueEvent(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_10
    move v0, v6

    goto :goto_7

    :cond_11
    move v6, v0

    goto :goto_6

    :cond_12
    move v0, v2

    goto/16 :goto_3

    :cond_13
    move v5, v6

    move v6, v0

    goto/16 :goto_2

    :cond_14
    move v1, v2

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
