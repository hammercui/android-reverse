.class Lcom/google/android/gms/internal/gj$5;
.super Lcom/google/android/gms/internal/gj$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/gj;->loadPlayerCenteredScores(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;IIIZ)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic HH:Z

.field final synthetic HS:Lcom/google/android/gms/internal/gj;

.field final synthetic HT:Ljava/lang/String;

.field final synthetic HU:I

.field final synthetic HV:I

.field final synthetic HW:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gj;Ljava/lang/String;IIIZ)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/gj$5;->HS:Lcom/google/android/gms/internal/gj;

    iput-object p2, p0, Lcom/google/android/gms/internal/gj$5;->HT:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/gj$5;->HU:I

    iput p4, p0, Lcom/google/android/gms/internal/gj$5;->HV:I

    iput p5, p0, Lcom/google/android/gms/internal/gj$5;->HW:I

    iput-boolean p6, p0, Lcom/google/android/gms/internal/gj$5;->HH:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gj$c;-><init>(Lcom/google/android/gms/internal/gj$1;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gj$5;->a(Lcom/google/android/gms/internal/fx;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/fx;)V
    .locals 7

    iget-object v2, p0, Lcom/google/android/gms/internal/gj$5;->HT:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/internal/gj$5;->HU:I

    iget v4, p0, Lcom/google/android/gms/internal/gj$5;->HV:I

    iget v5, p0, Lcom/google/android/gms/internal/gj$5;->HW:I

    iget-boolean v6, p0, Lcom/google/android/gms/internal/gj$5;->HH:Z

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/fx;->b(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;IIIZ)V

    return-void
.end method
