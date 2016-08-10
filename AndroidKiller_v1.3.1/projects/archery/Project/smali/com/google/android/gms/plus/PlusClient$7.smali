.class Lcom/google/android/gms/plus/PlusClient$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/plus/PlusClient;->revokeAccessAndDisconnect(Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/a$c",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic QP:Lcom/google/android/gms/plus/PlusClient;

.field final synthetic QR:Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/plus/PlusClient;Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/plus/PlusClient$7;->QP:Lcom/google/android/gms/plus/PlusClient;

    iput-object p2, p0, Lcom/google/android/gms/plus/PlusClient$7;->QR:Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public K(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient$7;->QR:Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->dG()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;->onAccessRevoked(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/plus/PlusClient$7;->K(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
