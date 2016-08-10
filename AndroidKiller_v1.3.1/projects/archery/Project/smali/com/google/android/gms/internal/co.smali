.class public Lcom/google/android/gms/internal/co;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/co$a;
    }
.end annotation


# instance fields
.field private final mg:Ljava/lang/Object;

.field private oI:Z

.field private final pj:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/gms/internal/co$a;",
            ">;"
        }
    .end annotation
.end field

.field private final pk:Ljava/lang/String;

.field private final pl:Ljava/lang/String;

.field private pm:J

.field private pn:J

.field private po:J

.field private pp:J

.field private pq:J

.field private pr:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/co;->mg:Ljava/lang/Object;

    iput-wide v2, p0, Lcom/google/android/gms/internal/co;->pm:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/co;->pn:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/co;->oI:Z

    iput-wide v2, p0, Lcom/google/android/gms/internal/co;->po:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/co;->pp:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/co;->pq:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/co;->pr:J

    iput-object p1, p0, Lcom/google/android/gms/internal/co;->pk:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/co;->pl:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/co;->pj:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public aJ()V
    .locals 6

    const-wide/16 v4, -0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/co;->mg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/co;->pr:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/co;->pn:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/co;->pn:J

    invoke-static {}, Lcom/google/android/gms/internal/cp;->aQ()Lcom/google/android/gms/internal/cq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cq;->aJ()V

    invoke-static {p0}, Lcom/google/android/gms/internal/cp;->a(Lcom/google/android/gms/internal/co;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public aK()V
    .locals 6

    iget-object v1, p0, Lcom/google/android/gms/internal/co;->mg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/co;->pr:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/co$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/co$a;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/co$a;->aO()V

    iget-object v2, p0, Lcom/google/android/gms/internal/co;->pj:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/co;->pp:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/co;->pp:J

    invoke-static {}, Lcom/google/android/gms/internal/cp;->aQ()Lcom/google/android/gms/internal/cq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cq;->aK()V

    invoke-static {p0}, Lcom/google/android/gms/internal/cp;->a(Lcom/google/android/gms/internal/co;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public aL()V
    .locals 6

    const-wide/16 v4, -0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/co;->mg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/co;->pr:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/co;->pj:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/co;->pj:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/co$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/co$a;->aM()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/co$a;->aN()V

    invoke-static {p0}, Lcom/google/android/gms/internal/cp;->a(Lcom/google/android/gms/internal/co;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public f(Lcom/google/android/gms/internal/z;)V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/internal/co;->mg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/co;->pq:J

    invoke-static {}, Lcom/google/android/gms/internal/cp;->aQ()Lcom/google/android/gms/internal/cq;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/co;->pq:J

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/gms/internal/cq;->b(Lcom/google/android/gms/internal/z;J)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public g(J)V
    .locals 6

    iget-object v1, p0, Lcom/google/android/gms/internal/co;->mg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/co;->pr:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/co;->pr:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/cp;->a(Lcom/google/android/gms/internal/co;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public h(J)V
    .locals 6

    iget-object v1, p0, Lcom/google/android/gms/internal/co;->mg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/co;->pr:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lcom/google/android/gms/internal/co;->pm:J

    invoke-static {p0}, Lcom/google/android/gms/internal/cp;->a(Lcom/google/android/gms/internal/co;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public k(Z)V
    .locals 6

    iget-object v1, p0, Lcom/google/android/gms/internal/co;->mg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/co;->pr:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/co;->po:J

    if-nez p1, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/co;->po:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/co;->pn:J

    invoke-static {p0}, Lcom/google/android/gms/internal/cp;->a(Lcom/google/android/gms/internal/co;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public l(Z)V
    .locals 6

    iget-object v1, p0, Lcom/google/android/gms/internal/co;->mg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/co;->pr:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/co;->oI:Z

    invoke-static {p0}, Lcom/google/android/gms/internal/cp;->a(Lcom/google/android/gms/internal/co;)V

    :cond_0
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
    .locals 5

    iget-object v1, p0, Lcom/google/android/gms/internal/co;->mg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "seqnum"

    iget-object v3, p0, Lcom/google/android/gms/internal/co;->pk:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "slotid"

    iget-object v3, p0, Lcom/google/android/gms/internal/co;->pl:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ismediation"

    iget-boolean v3, p0, Lcom/google/android/gms/internal/co;->oI:Z

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "treq"

    iget-wide v3, p0, Lcom/google/android/gms/internal/co;->pq:J

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "tresponse"

    iget-wide v3, p0, Lcom/google/android/gms/internal/co;->pr:J

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "timp"

    iget-wide v3, p0, Lcom/google/android/gms/internal/co;->pn:J

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "tload"

    iget-wide v3, p0, Lcom/google/android/gms/internal/co;->po:J

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "pcc"

    iget-wide v3, p0, Lcom/google/android/gms/internal/co;->pp:J

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "tfetch"

    iget-wide v3, p0, Lcom/google/android/gms/internal/co;->pm:J

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/co;->pj:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/co$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/co$a;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    const-string v0, "tclick"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method
