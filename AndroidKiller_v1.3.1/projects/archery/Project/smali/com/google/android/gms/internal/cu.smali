.class public final Lcom/google/android/gms/internal/cu;
.super Ljava/lang/Object;


# static fields
.field private static final pK:Ljava/util/concurrent/ThreadFactory;

.field private static final pL:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/google/android/gms/internal/cu$2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cu$2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cu;->pK:Ljava/util/concurrent/ThreadFactory;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const/16 v2, 0xa

    const-wide/16 v3, 0x41

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/concurrent/SynchronousQueue;-><init>(Z)V

    sget-object v7, Lcom/google/android/gms/internal/cu;->pK:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/google/android/gms/internal/cu;->pL:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "task"    # Ljava/lang/Runnable;

    .prologue
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/cu;->pL:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/google/android/gms/internal/cu$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/cu$1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Too many background threads already running. Aborting task."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
