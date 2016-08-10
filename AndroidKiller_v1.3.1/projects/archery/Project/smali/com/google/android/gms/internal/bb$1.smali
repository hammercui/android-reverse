.class Lcom/google/android/gms/internal/bb$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/bb;->b(JJ)Lcom/google/android/gms/internal/bc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic mJ:Lcom/google/android/gms/internal/ba;

.field final synthetic mK:Lcom/google/android/gms/internal/bb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bb;Lcom/google/android/gms/internal/ba;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bb$1;->mK:Lcom/google/android/gms/internal/bb;

    iput-object p2, p0, Lcom/google/android/gms/internal/bb$1;->mJ:Lcom/google/android/gms/internal/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/bb$1;->mK:Lcom/google/android/gms/internal/bb;

    invoke-static {v0}, Lcom/google/android/gms/internal/bb;->a(Lcom/google/android/gms/internal/bb;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bb$1;->mK:Lcom/google/android/gms/internal/bb;

    invoke-static {v0}, Lcom/google/android/gms/internal/bb;->b(Lcom/google/android/gms/internal/bb;)I

    move-result v0

    const/4 v2, -0x2

    if-eq v0, v2, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bb$1;->mK:Lcom/google/android/gms/internal/bb;

    iget-object v2, p0, Lcom/google/android/gms/internal/bb$1;->mK:Lcom/google/android/gms/internal/bb;

    invoke-static {v2}, Lcom/google/android/gms/internal/bb;->c(Lcom/google/android/gms/internal/bb;)Lcom/google/android/gms/internal/bg;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/bb;->a(Lcom/google/android/gms/internal/bb;Lcom/google/android/gms/internal/bg;)Lcom/google/android/gms/internal/bg;

    iget-object v0, p0, Lcom/google/android/gms/internal/bb$1;->mK:Lcom/google/android/gms/internal/bb;

    invoke-static {v0}, Lcom/google/android/gms/internal/bb;->d(Lcom/google/android/gms/internal/bb;)Lcom/google/android/gms/internal/bg;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/bb$1;->mK:Lcom/google/android/gms/internal/bb;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/bb;->f(I)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/bb$1;->mJ:Lcom/google/android/gms/internal/ba;

    iget-object v2, p0, Lcom/google/android/gms/internal/bb$1;->mK:Lcom/google/android/gms/internal/bb;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ba;->a(Lcom/google/android/gms/internal/bc$a;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bb$1;->mK:Lcom/google/android/gms/internal/bb;

    iget-object v2, p0, Lcom/google/android/gms/internal/bb$1;->mJ:Lcom/google/android/gms/internal/ba;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/bb;->a(Lcom/google/android/gms/internal/bb;Lcom/google/android/gms/internal/ba;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
