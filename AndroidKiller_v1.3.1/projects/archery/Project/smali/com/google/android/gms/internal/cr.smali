.class public Lcom/google/android/gms/internal/cr;
.super Ljava/lang/Object;


# instance fields
.field private final mg:Ljava/lang/Object;

.field private pF:I

.field private pG:I

.field private final pl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/cr;->mg:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/cr;->pl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/cr;->mg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/cr;->pF:I

    iput p2, p0, Lcom/google/android/gms/internal/cr;->pG:I

    iget-object v0, p0, Lcom/google/android/gms/internal/cr;->pl:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/cp;->a(Ljava/lang/String;Lcom/google/android/gms/internal/cr;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/cr;->mg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "pmnli"

    iget v3, p0, Lcom/google/android/gms/internal/cr;->pF:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "pmnll"

    iget v3, p0, Lcom/google/android/gms/internal/cr;->pG:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
