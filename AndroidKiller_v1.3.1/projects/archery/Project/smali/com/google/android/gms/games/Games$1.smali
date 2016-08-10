.class final Lcom/google/android/gms/games/Games$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Games;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/Api$b",
        "<",
        "Lcom/google/android/gms/internal/fx;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic b(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/GoogleApiClient$ApiOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$a;
    .locals 1

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/gms/games/Games$1;->e(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/GoogleApiClient$ApiOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/internal/fx;

    move-result-object v0

    return-object v0
.end method

.method public e(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/common/api/GoogleApiClient$ApiOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/internal/fx;
    .locals 16

    new-instance v1, Lcom/google/android/gms/games/Games$GamesOptions;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/games/Games$GamesOptions;-><init>(Lcom/google/android/gms/games/Games$1;)V

    if-eqz p4, :cond_0

    move-object/from16 v0, p4

    instance-of v1, v0, Lcom/google/android/gms/games/Games$GamesOptions;

    const-string v2, "Must provide valid GamesOptions!"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/er;->b(ZLjava/lang/Object;)V

    check-cast p4, Lcom/google/android/gms/games/Games$GamesOptions;

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/fx;

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ee;->dV()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ee;->dR()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ee;->dU()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ee;->dS()I

    move-result v9

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ee;->dW()Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p4

    iget-boolean v11, v0, Lcom/google/android/gms/games/Games$GamesOptions;->Gc:Z

    move-object/from16 v0, p4

    iget-boolean v12, v0, Lcom/google/android/gms/games/Games$GamesOptions;->Gd:Z

    move-object/from16 v0, p4

    iget v13, v0, Lcom/google/android/gms/games/Games$GamesOptions;->Ge:I

    move-object/from16 v0, p4

    iget-boolean v14, v0, Lcom/google/android/gms/games/Games$GamesOptions;->Gf:Z

    move-object/from16 v0, p4

    iget v15, v0, Lcom/google/android/gms/games/Games$GamesOptions;->Gg:I

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v15}, Lcom/google/android/gms/internal/fx;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;ILandroid/view/View;ZZIZI)V

    return-object v1

    :cond_0
    move-object/from16 p4, v1

    goto :goto_0
.end method

.method public getPriority()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
