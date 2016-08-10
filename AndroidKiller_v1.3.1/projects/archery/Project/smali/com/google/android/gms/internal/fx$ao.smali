.class final Lcom/google/android/gms/internal/fx$ao;
.super Lcom/google/android/gms/internal/fw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ao"
.end annotation


# instance fields
.field final synthetic GJ:Lcom/google/android/gms/internal/fx;

.field private final Hf:Lcom/google/android/gms/games/request/OnRequestReceivedListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/games/request/OnRequestReceivedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fx$ao;->GJ:Lcom/google/android/gms/internal/fx;

    invoke-direct {p0}, Lcom/google/android/gms/internal/fw;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/fx$ao;->Hf:Lcom/google/android/gms/games/request/OnRequestReceivedListener;

    return-void
.end method


# virtual methods
.method public m(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 5

    new-instance v1, Lcom/google/android/gms/games/request/GameRequestBuffer;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/request/GameRequestBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/games/request/GameRequestBuffer;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/request/GameRequestBuffer;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/request/GameRequest;

    invoke-interface {v0}, Lcom/google/android/gms/games/request/GameRequest;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/request/GameRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/games/request/GameRequestBuffer;->close()V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/fx$ao;->GJ:Lcom/google/android/gms/internal/fx;

    new-instance v2, Lcom/google/android/gms/internal/fx$ap;

    iget-object v3, p0, Lcom/google/android/gms/internal/fx$ao;->GJ:Lcom/google/android/gms/internal/fx;

    iget-object v4, p0, Lcom/google/android/gms/internal/fx$ao;->Hf:Lcom/google/android/gms/games/request/OnRequestReceivedListener;

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/gms/internal/fx$ap;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/games/request/OnRequestReceivedListener;Lcom/google/android/gms/games/request/GameRequest;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/fx;->a(Lcom/google/android/gms/internal/eh$b;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/games/request/GameRequestBuffer;->close()V

    throw v0
.end method

.method public onRequestRemoved(Ljava/lang/String;)V
    .locals 4
    .param p1, "requestId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/fx$ao;->GJ:Lcom/google/android/gms/internal/fx;

    new-instance v1, Lcom/google/android/gms/internal/fx$aq;

    iget-object v2, p0, Lcom/google/android/gms/internal/fx$ao;->GJ:Lcom/google/android/gms/internal/fx;

    iget-object v3, p0, Lcom/google/android/gms/internal/fx$ao;->Hf:Lcom/google/android/gms/games/request/OnRequestReceivedListener;

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/internal/fx$aq;-><init>(Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/games/request/OnRequestReceivedListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fx;->a(Lcom/google/android/gms/internal/eh$b;)V

    return-void
.end method
