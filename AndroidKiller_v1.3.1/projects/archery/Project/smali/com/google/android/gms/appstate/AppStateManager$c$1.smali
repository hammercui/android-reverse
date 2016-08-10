.class Lcom/google/android/gms/appstate/AppStateManager$c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/appstate/AppStateManager$StateListResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/appstate/AppStateManager$c;->e(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/appstate/AppStateManager$StateListResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic vb:Lcom/google/android/gms/common/api/Status;

.field final synthetic vh:Lcom/google/android/gms/appstate/AppStateManager$c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/appstate/AppStateManager$c;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/appstate/AppStateManager$c$1;->vh:Lcom/google/android/gms/appstate/AppStateManager$c;

    iput-object p2, p0, Lcom/google/android/gms/appstate/AppStateManager$c$1;->vb:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStateBuffer()Lcom/google/android/gms/appstate/AppStateBuffer;
    .locals 2

    new-instance v0, Lcom/google/android/gms/appstate/AppStateBuffer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/appstate/AppStateBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateManager$c$1;->vb:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
