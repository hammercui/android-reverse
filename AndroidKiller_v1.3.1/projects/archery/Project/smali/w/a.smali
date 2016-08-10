.class public Lw/a;
.super Ljava/lang/Object;


# static fields
.field private static b:Lw/a;


# instance fields
.field private a:Landroid/content/Context;

.field private c:Lcom/mbj/ads/adsinterface/FactoryInterface;

.field private d:Lw/p;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:I

.field private i:Lcom/mbj/ads/adsinterface/AdsProviderInterface;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lw/a;->c:Lcom/mbj/ads/adsinterface/FactoryInterface;

    iput-boolean v1, p0, Lw/a;->e:Z

    iput-boolean v1, p0, Lw/a;->f:Z

    iput-boolean v1, p0, Lw/a;->g:Z

    iput v1, p0, Lw/a;->h:I

    iput-object p1, p0, Lw/a;->a:Landroid/content/Context;

    new-instance v0, Lw/p;

    invoke-direct {v0, p1}, Lw/p;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lw/a;->d:Lw/p;

    iput v1, p0, Lw/a;->h:I

    return-void
.end method

.method private static a(Ljava/lang/ClassLoader;)Lcom/mbj/ads/adsinterface/FactoryInterface;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    sget v0, Lw/x;->e:I

    invoke-static {v0}, Lcom/mbj/ads/comm/DRP;->addCountEx(I)V

    const-string v0, "com.mbv.interfaceImpl.FactoryInterfaceImpl"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbj/ads/adsinterface/FactoryInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget v1, Lw/x;->g:I

    invoke-static {v1}, Lcom/mbj/ads/comm/DRP;->addCountEx(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :cond_0
    :try_start_2
    sget v0, Lw/x;->f:I

    invoke-static {v0}, Lcom/mbj/ads/comm/DRP;->addCountEx(I)V

    const-string v0, "LoadDexManager"

    const-string v2, "getMvInterface error mvInterface is null CLASS_NAME = com.mbv.interfaceImpl.FactoryInterfaceImpl"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    sget v1, Lw/x;->f:I

    invoke-static {v1}, Lcom/mbj/ads/comm/DRP;->addCountEx(I)V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Lw/a;
    .locals 3

    sget-object v0, Lw/a;->b:Lw/a;

    if-nez v0, :cond_1

    const-class v1, Lw/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lw/a;->b:Lw/a;

    if-nez v0, :cond_0

    if-eqz p0, :cond_2

    new-instance v0, Lw/a;

    invoke-direct {v0, p0}, Lw/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lw/a;->b:Lw/a;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lw/a;->b:Lw/a;

    return-object v0

    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "invalid context, init context is null"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lw/a;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lw/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lw/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/mbj/ads/comm/CommGUID;->getGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lw/b;

    invoke-direct {v2, p0}, Lw/b;-><init>(Lw/a;)V

    const-string v3, "mbv"

    invoke-static {v0, v1, v2, v3}, Lcom/mbj/ads/comm/DRP;->init(Landroid/content/Context;Ljava/lang/String;Lw/n;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LoadDexManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initDataReport Crash:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Lw/a;IZ)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lw/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lw/a;->a(Landroid/content/Context;)Lw/a;

    move-result-object v0

    invoke-direct {v0}, Lw/a;->n()Z

    invoke-direct {p0}, Lw/a;->o()Lcom/mbj/ads/adsinterface/AdsInitInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lw/a;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/mbj/ads/adsinterface/AdsInitInterface;->init(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lw/a;->f:Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lw/a;->g:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MbjNativeInitAds Cost Time:  = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LoadDexManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "syncDecDexFileFinish: crash = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Lw/a;I)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x3e8

    const-string v0, "default_dex"

    iget-object v4, p0, Lw/a;->a:Landroid/content/Context;

    invoke-static {v4, v0, v2}, Lw/d;->b(Landroid/content/Context;Ljava/lang/String;I)I

    iget-object v0, p0, Lw/a;->d:Lw/p;

    invoke-virtual {v0, v3}, Lw/p;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    return v0

    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_0

    :cond_1
    const-string v0, "default_dexmd5"

    iget-object v4, p0, Lw/a;->a:Landroid/content/Context;

    invoke-static {v4, v0}, Lw/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lw/a;->d:Lw/p;

    invoke-virtual {v4, v3}, Lw/p;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lw/v;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method static synthetic b(Lw/a;)Z
    .locals 2

    iget-object v0, p0, Lw/a;->a:Landroid/content/Context;

    const-string v1, "mbj_jar_version"

    invoke-static {v0, v1}, Lw/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "47.0.1.5269"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lw/a;I)Z
    .locals 1

    invoke-direct {p0}, Lw/a;->m()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lw/a;I)V
    .locals 4

    iget-boolean v0, p0, Lw/a;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lw/a;->d:Lw/p;

    iget-object v1, p0, Lw/a;->d:Lw/p;

    invoke-virtual {v1, p1}, Lw/p;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw/p;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lw/a;->e:Z

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LoadMultiDex Cost Time:  = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-void
.end method

.method private m()Z
    .locals 7

    const/4 v0, 0x0

    sget v1, Lw/x;->c:I

    invoke-static {v1}, Lcom/mbj/ads/comm/DRP;->addCountEx(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move v1, v0

    :goto_0
    if-nez v1, :cond_1

    iget v0, p0, Lw/a;->h:I

    const/4 v4, 0x2

    if-ge v0, v4, :cond_1

    iget v0, p0, Lw/a;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lw/a;->h:I

    iget-object v0, p0, Lw/a;->d:Lw/p;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lw/a;->d:Lw/p;

    invoke-virtual {v0}, Lw/p;->b()Z
    :try_end_0
    .catch Lw/r; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget v4, Lw/x;->h:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lw/r;->a()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lw/r;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/mbj/ads/comm/DRP;->addRepeatEx(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    sget v0, Lw/x;->h:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "10304"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2840

    invoke-static {v5}, Lw/r;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/mbj/ads/comm/DRP;->addRepeatEx(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "DecDex Cost Time:  = "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "syncDecDexFile: result = "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    sget v0, Lw/x;->i:I

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mbj/ads/comm/DRP;->addRepeatEx(ILjava/lang/String;)V

    if-eqz v1, :cond_2

    sget v0, Lw/x;->b:I

    invoke-static {v0}, Lcom/mbj/ads/comm/DRP;->addCountEx(I)V

    iget-object v0, p0, Lw/a;->a:Landroid/content/Context;

    const-string v2, "mbj_jar_version"

    const-string v3, "47.0.1.5269"

    invoke-static {v0, v2, v3}, Lw/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v1

    :cond_2
    sget v0, Lw/x;->a:I

    invoke-static {v0}, Lcom/mbj/ads/comm/DRP;->addCountEx(I)V

    goto :goto_1
.end method

.method private declared-synchronized n()Z
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lw/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lw/a;->a(Landroid/content/Context;)Lw/a;

    move-result-object v0

    invoke-direct {v0}, Lw/a;->p()Lcom/mbj/ads/adsinterface/AdsProviderInterface;

    move-result-object v0

    iput-object v0, p0, Lw/a;->i:Lcom/mbj/ads/adsinterface/AdsProviderInterface;

    iget-object v0, p0, Lw/a;->i:Lcom/mbj/ads/adsinterface/AdsProviderInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw/a;->i:Lcom/mbj/ads/adsinterface/AdsProviderInterface;

    iget-object v1, p0, Lw/a;->a:Landroid/content/Context;

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/mbj/ads/adsinterface/AdsProviderInterface;->onCreate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/PathPermission;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized o()Lcom/mbj/ads/adsinterface/AdsInitInterface;
    .locals 3

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lw/a;->q()Lcom/mbj/ads/adsinterface/FactoryInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/FactoryInterface;->getAdsInitInterface()Lcom/mbj/ads/adsinterface/AdsInitInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/mbj/ads/adsinterface/AdsInitInterface;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/mbj/ads/adsinterface/AdsInitInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private declared-synchronized p()Lcom/mbj/ads/adsinterface/AdsProviderInterface;
    .locals 3

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lw/a;->q()Lcom/mbj/ads/adsinterface/FactoryInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/FactoryInterface;->getAdsProviderInterface()Lcom/mbj/ads/adsinterface/AdsProviderInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/mbj/ads/adsinterface/AdsProviderInterface;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/mbj/ads/adsinterface/AdsProviderInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private q()Lcom/mbj/ads/adsinterface/FactoryInterface;
    .locals 4

    iget-object v0, p0, Lw/a;->c:Lcom/mbj/ads/adsinterface/FactoryInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw/a;->c:Lcom/mbj/ads/adsinterface/FactoryInterface;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lw/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lw/a;->a(Ljava/lang/ClassLoader;)Lcom/mbj/ads/adsinterface/FactoryInterface;

    move-result-object v0

    iput-object v0, p0, Lw/a;->c:Lcom/mbj/ads/adsinterface/FactoryInterface;

    iget-object v0, p0, Lw/a;->c:Lcom/mbj/ads/adsinterface/FactoryInterface;

    if-nez v0, :cond_1

    iget-object v0, p0, Lw/a;->d:Lw/p;

    invoke-virtual {v0}, Lw/p;->a()Lw/o;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lw/o;->a()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lw/o;->a()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lw/a;->a(Ljava/lang/ClassLoader;)Lcom/mbj/ads/adsinterface/FactoryInterface;

    move-result-object v0

    iput-object v0, p0, Lw/a;->c:Lcom/mbj/ads/adsinterface/FactoryInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lw/a;->c:Lcom/mbj/ads/adsinterface/FactoryInterface;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LoadDexManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getInterfaceFactory: crash"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lw/a;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lw/a;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lw/a;->g:Z

    new-instance v0, Lw/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lw/c;-><init>(Lw/a;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/16 v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lw/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Lcom/mbj/ads/adsinterface/AdsProviderInterface;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lw/a;->i:Lcom/mbj/ads/adsinterface/AdsProviderInterface;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lw/a;->n()Z

    :cond_0
    iget-object v0, p0, Lw/a;->i:Lcom/mbj/ads/adsinterface/AdsProviderInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Lcom/mbj/ads/adsinterface/NativeInterface;
    .locals 3

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lw/a;->q()Lcom/mbj/ads/adsinterface/FactoryInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/FactoryInterface;->getNativeInterface()Lcom/mbj/ads/adsinterface/NativeInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/mbj/ads/adsinterface/NativeInterface;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/mbj/ads/adsinterface/NativeInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final declared-synchronized d()Lcom/mbj/ads/adsinterface/InterstitialInterface;
    .locals 3

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lw/a;->q()Lcom/mbj/ads/adsinterface/FactoryInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/FactoryInterface;->getInterstitialInterface()Lcom/mbj/ads/adsinterface/InterstitialInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/mbj/ads/adsinterface/InterstitialInterface;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/mbj/ads/adsinterface/InterstitialInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final declared-synchronized e()Lcom/mbj/ads/adsinterface/PopupInterface;
    .locals 3

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lw/a;->q()Lcom/mbj/ads/adsinterface/FactoryInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/FactoryInterface;->getPopupInterface()Lcom/mbj/ads/adsinterface/PopupInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/mbj/ads/adsinterface/PopupInterface;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/mbj/ads/adsinterface/PopupInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final declared-synchronized f()Lcom/mbj/ads/adsinterface/BannerInterface;
    .locals 3

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lw/a;->q()Lcom/mbj/ads/adsinterface/FactoryInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/FactoryInterface;->getBannerInterface()Lcom/mbj/ads/adsinterface/BannerInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/mbj/ads/adsinterface/BannerInterface;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/mbj/ads/adsinterface/BannerInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final declared-synchronized g()Lcom/mbj/ads/adsinterface/NotificationInterface;
    .locals 3

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lw/a;->q()Lcom/mbj/ads/adsinterface/FactoryInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/FactoryInterface;->getNotificationInterface()Lcom/mbj/ads/adsinterface/NotificationInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/mbj/ads/adsinterface/NotificationInterface;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/mbj/ads/adsinterface/NotificationInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final declared-synchronized h()Lcom/mbj/ads/adsinterface/DeskIconInterface;
    .locals 3

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lw/a;->q()Lcom/mbj/ads/adsinterface/FactoryInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/FactoryInterface;->getDeskIconInterface()Lcom/mbj/ads/adsinterface/DeskIconInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/mbj/ads/adsinterface/DeskIconInterface;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/mbj/ads/adsinterface/DeskIconInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final declared-synchronized i()Lcom/mbj/ads/adsinterface/AppWallInterface;
    .locals 3

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lw/a;->q()Lcom/mbj/ads/adsinterface/FactoryInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/FactoryInterface;->getAppWallInterface()Lcom/mbj/ads/adsinterface/AppWallInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/mbj/ads/adsinterface/AppWallInterface;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/mbj/ads/adsinterface/AppWallInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final declared-synchronized j()Lcom/mbj/ads/adsinterface/AdsActivityInterface;
    .locals 3

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lw/a;->q()Lcom/mbj/ads/adsinterface/FactoryInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/FactoryInterface;->getAdsActivityInterface()Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/mbj/ads/adsinterface/AdsActivityInterface;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/mbj/ads/adsinterface/AdsActivityInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final declared-synchronized k()Lcom/mbj/ads/adsinterface/AdsReceiverInterface;
    .locals 3

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lw/a;->q()Lcom/mbj/ads/adsinterface/FactoryInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/FactoryInterface;->getAdsReceiverInterface()Lcom/mbj/ads/adsinterface/AdsReceiverInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/mbj/ads/adsinterface/AdsReceiverInterface;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/mbj/ads/adsinterface/AdsReceiverInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final declared-synchronized l()Lcom/mbj/ads/adsinterface/AdsServiceInterface;
    .locals 3

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lw/a;->q()Lcom/mbj/ads/adsinterface/FactoryInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mbj/ads/adsinterface/FactoryInterface;->getAdsServiceInterface()Lcom/mbj/ads/adsinterface/AdsServiceInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/mbj/ads/adsinterface/AdsServiceInterface;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/mbj/ads/adsinterface/AdsServiceInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
