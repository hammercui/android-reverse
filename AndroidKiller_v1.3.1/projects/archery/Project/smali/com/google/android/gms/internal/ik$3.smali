.class Lcom/google/android/gms/internal/ik$3;
.super Lcom/google/android/gms/internal/ik$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ik;->write(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/plus/model/moments/Moment;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic RD:Lcom/google/android/gms/plus/model/moments/Moment;

.field final synthetic Ry:Lcom/google/android/gms/internal/ik;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ik;Lcom/google/android/gms/common/api/Api$b;Lcom/google/android/gms/plus/model/moments/Moment;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ik$3;->Ry:Lcom/google/android/gms/internal/ik;

    iput-object p3, p0, Lcom/google/android/gms/internal/ik$3;->RD:Lcom/google/android/gms/plus/model/moments/Moment;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ik$c;-><init>(Lcom/google/android/gms/common/api/Api$b;)V

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

    check-cast p1, Lcom/google/android/gms/plus/internal/e;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ik$3;->a(Lcom/google/android/gms/plus/internal/e;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/plus/internal/e;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ik$3;->RD:Lcom/google/android/gms/plus/model/moments/Moment;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/plus/internal/e;->a(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/plus/model/moments/Moment;)V

    return-void
.end method
