.class Lcom/google/android/gms/internal/gi$1;
.super Lcom/google/android/gms/internal/gi$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/gi;->loadInvitations(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic HP:I

.field final synthetic HQ:Lcom/google/android/gms/internal/gi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gi;I)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/gi$1;->HQ:Lcom/google/android/gms/internal/gi;

    iput p2, p0, Lcom/google/android/gms/internal/gi$1;->HP:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gi$a;-><init>(Lcom/google/android/gms/internal/gi$1;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gi$1;->a(Lcom/google/android/gms/internal/fx;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/fx;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gi$1;->HP:I

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/fx;->c(Lcom/google/android/gms/common/api/a$c;I)V

    return-void
.end method
