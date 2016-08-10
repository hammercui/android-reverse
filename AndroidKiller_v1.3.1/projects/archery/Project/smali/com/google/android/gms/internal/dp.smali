.class public abstract Lcom/google/android/gms/internal/dp;
.super Ljava/lang/Object;


# static fields
.field private static final xA:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field protected final xB:Lcom/google/android/gms/internal/du;

.field private final xC:Ljava/lang/String;

.field private xD:Lcom/google/android/gms/internal/dw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/dp;->xA:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/dp;->xC:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/du;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/du;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/dp;->xB:Lcom/google/android/gms/internal/du;

    iget-object v0, p0, Lcom/google/android/gms/internal/dp;->xB:Lcom/google/android/gms/internal/du;

    const-string v1, "instance-%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/google/android/gms/internal/dp;->xA:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/du;->U(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public P(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(JI)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/dw;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/dp;->xD:Lcom/google/android/gms/internal/dw;

    iget-object v0, p0, Lcom/google/android/gms/internal/dp;->xD:Lcom/google/android/gms/internal/dw;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dp;->cX()V

    :cond_0
    return-void
.end method

.method protected final a(Ljava/lang/String;JLjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/dp;->xB:Lcom/google/android/gms/internal/du;

    const-string v1, "Sending text message: %s to: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/du;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dp;->xD:Lcom/google/android/gms/internal/dw;

    iget-object v1, p0, Lcom/google/android/gms/internal/dp;->xC:Ljava/lang/String;

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/dw;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method protected final cW()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/dp;->xD:Lcom/google/android/gms/internal/dw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dw;->cV()J

    move-result-wide v0

    return-wide v0
.end method

.method public cX()V
    .locals 0

    return-void
.end method

.method public final getNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/dp;->xC:Ljava/lang/String;

    return-object v0
.end method
