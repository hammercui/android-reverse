.class Lcom/google/android/gms/internal/gj$7;
.super Lcom/google/android/gms/internal/gj$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/gj;->submitScoreImmediate(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;JLjava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic HS:Lcom/google/android/gms/internal/gj;

.field final synthetic HT:Ljava/lang/String;

.field final synthetic HZ:J

.field final synthetic Ia:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gj;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gj$7;->HS:Lcom/google/android/gms/internal/gj;

    iput-object p2, p0, Lcom/google/android/gms/internal/gj$7;->HT:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/gj$7;->HZ:J

    iput-object p5, p0, Lcom/google/android/gms/internal/gj$7;->Ia:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/gms/internal/gj$d;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/fx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gj$7;->a(Lcom/google/android/gms/internal/fx;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/fx;)V
    .locals 6

    iget-object v2, p0, Lcom/google/android/gms/internal/gj$7;->HT:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/internal/gj$7;->HZ:J

    iget-object v5, p0, Lcom/google/android/gms/internal/gj$7;->Ia:Ljava/lang/String;

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/fx;->a(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method
