.class public Lcom/mbj/ads/comm/CommGUID;
.super Ljava/lang/Object;


# static fields
.field private static final GUID_FLAG:Ljava/lang/String; = "CommGUID"

.field private static volatile mCUID:Ljava/lang/String;

.field private static mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/mbj/ads/comm/CommGUID;->mCUID:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mbj/ads/comm/CommGUID;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _getGUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "CommGUID"

    invoke-static {p0, v0}, Lw/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static _setGUID(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "CommGUID"

    invoke-static {p0, v0, p1}, Lw/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getAndroidID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lw/m;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCountryLang(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lw/m;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCpuName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lw/m;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/mbj/ads/comm/CommGUID;->mCUID:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mbj/ads/comm/CommGUID;->mCUID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-static {p0}, Lcom/mbj/ads/comm/CommGUID;->_getGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mbj/ads/comm/CommGUID;->mCUID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v1, Lcom/mbj/ads/comm/CommGUID;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mbj/ads/comm/CommGUID;->mCUID:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/mbj/ads/comm/CommGUID;->mCUID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {p0}, Lw/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mbj/ads/comm/CommGUID;->mCUID:Ljava/lang/String;

    sget-object v0, Lcom/mbj/ads/comm/CommGUID;->mCUID:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/mbj/ads/comm/CommGUID;->_setGUID(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    sget-object v0, Lcom/mbj/ads/comm/CommGUID;->mCUID:Ljava/lang/String;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getResolusion(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lw/m;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTotalMemorySize(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lw/m;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
