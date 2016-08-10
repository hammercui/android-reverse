.class final Lcom/google/android/gms/identity/intents/Address$2;
.super Lcom/google/android/gms/identity/intents/Address$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/identity/intents/Address;->requestUserAddress(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/identity/intents/UserAddressRequest;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Kw:Lcom/google/android/gms/identity/intents/UserAddressRequest;

.field final synthetic Kx:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/identity/intents/UserAddressRequest;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/identity/intents/Address$2;->Kw:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    iput p2, p0, Lcom/google/android/gms/identity/intents/Address$2;->Kx:I

    invoke-direct {p0}, Lcom/google/android/gms/identity/intents/Address$a;-><init>()V

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

    check-cast p1, Lcom/google/android/gms/internal/hc;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/identity/intents/Address$2;->a(Lcom/google/android/gms/internal/hc;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/hc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/Address$2;->Kw:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    iget v1, p0, Lcom/google/android/gms/identity/intents/Address$2;->Kx:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/hc;->a(Lcom/google/android/gms/identity/intents/UserAddressRequest;I)V

    sget-object v0, Lcom/google/android/gms/common/api/Status;->zQ:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/identity/intents/Address$2;->a(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
