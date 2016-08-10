.class public final Lcom/google/android/gms/internal/ck;
.super Ljava/lang/Object;


# instance fields
.field private final mg:Ljava/lang/Object;

.field private nX:I

.field private ng:Lcom/google/android/gms/internal/dd;

.field public final oA:Lcom/google/android/gms/internal/ar;

.field private ox:Ljava/lang/String;

.field private oy:Ljava/lang/String;

.field public final oz:Lcom/google/android/gms/internal/ar;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ck;->mg:Ljava/lang/Object;

    const/4 v0, -0x2

    iput v0, p0, Lcom/google/android/gms/internal/ck;->nX:I

    new-instance v0, Lcom/google/android/gms/internal/ck$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ck$1;-><init>(Lcom/google/android/gms/internal/ck;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ck;->oz:Lcom/google/android/gms/internal/ar;

    new-instance v0, Lcom/google/android/gms/internal/ck$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ck$2;-><init>(Lcom/google/android/gms/internal/ck;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ck;->oA:Lcom/google/android/gms/internal/ar;

    iput-object p1, p0, Lcom/google/android/gms/internal/ck;->ox:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ck;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ck;->nX:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ck;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ck;->mg:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ck;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ck;->oy:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ck;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ck;->ox:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public aI()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/ck;->mg:Ljava/lang/Object;

    monitor-enter v1

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ck;->oy:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ck;->nX:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x2

    if-ne v0, v2, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ck;->mg:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v0, "Ad request service was interrupted."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V

    const/4 v0, 0x0

    monitor-exit v1

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ck;->oy:Ljava/lang/String;

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public b(Lcom/google/android/gms/internal/dd;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ck;->mg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ck;->ng:Lcom/google/android/gms/internal/dd;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getErrorCode()I
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/ck;->mg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ck;->nX:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
