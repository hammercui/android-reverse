.class abstract Lcom/google/android/gms/cast/Cast$c;
.super Lcom/google/android/gms/cast/Cast$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/Cast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/cast/Cast$a",
        "<",
        "Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/cast/Cast$a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/cast/Cast$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/cast/Cast$c;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic d(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/Cast$c;->h(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;

    move-result-object v0

    return-object v0
.end method

.method public h(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/Cast$ApplicationConnectionResult;
    .locals 1

    new-instance v0, Lcom/google/android/gms/cast/Cast$c$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/cast/Cast$c$1;-><init>(Lcom/google/android/gms/cast/Cast$c;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
