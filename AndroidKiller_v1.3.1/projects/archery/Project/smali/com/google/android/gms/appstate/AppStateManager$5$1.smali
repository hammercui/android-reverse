.class Lcom/google/android/gms/appstate/AppStateManager$5$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/appstate/AppStateManager$StateDeletedResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/appstate/AppStateManager$5;->c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/appstate/AppStateManager$StateDeletedResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic vb:Lcom/google/android/gms/common/api/Status;

.field final synthetic ve:Lcom/google/android/gms/appstate/AppStateManager$5;


# direct methods
.method constructor <init>(Lcom/google/android/gms/appstate/AppStateManager$5;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/appstate/AppStateManager$5$1;->ve:Lcom/google/android/gms/appstate/AppStateManager$5;

    iput-object p2, p0, Lcom/google/android/gms/appstate/AppStateManager$5$1;->vb:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStateKey()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateManager$5$1;->ve:Lcom/google/android/gms/appstate/AppStateManager$5;

    iget v0, v0, Lcom/google/android/gms/appstate/AppStateManager$5;->vc:I

    return v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appstate/AppStateManager$5$1;->vb:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
