.class Lcom/google/android/gms/internal/gm$5;
.super Lcom/google/android/gms/internal/gm$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/gm;->loadMoreRecentlyPlayedWithPlayers(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ig:Lcom/google/android/gms/internal/gm;

.field final synthetic Ih:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gm;I)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/gm$5;->Ig:Lcom/google/android/gms/internal/gm;

    iput p2, p0, Lcom/google/android/gms/internal/gm$5;->Ih:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gm$a;-><init>(Lcom/google/android/gms/internal/gm$1;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gm$5;->a(Lcom/google/android/gms/internal/fx;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/fx;)V
    .locals 6

    const-string v2, "playedWith"

    iget v3, p0, Lcom/google/android/gms/internal/gm$5;->Ih:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/fx;->a(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;IZZ)V

    return-void
.end method
