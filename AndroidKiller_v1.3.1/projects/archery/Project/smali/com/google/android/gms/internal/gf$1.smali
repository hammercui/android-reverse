.class Lcom/google/android/gms/internal/gf$1;
.super Lcom/google/android/gms/internal/gf$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/gf;->load(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic HH:Z

.field final synthetic HI:Lcom/google/android/gms/internal/gf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gf;Z)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/gf$1;->HI:Lcom/google/android/gms/internal/gf;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/gf$1;->HH:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gf$a;-><init>(Lcom/google/android/gms/internal/gf$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/fx;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gf$1;->a(Lcom/google/android/gms/internal/fx;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/fx;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gf$1;->HH:Z

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/fx;->c(Lcom/google/android/gms/common/api/a$c;Z)V

    return-void
.end method
