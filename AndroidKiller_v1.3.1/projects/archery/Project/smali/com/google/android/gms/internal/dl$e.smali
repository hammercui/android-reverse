.class final Lcom/google/android/gms/internal/dl$e;
.super Lcom/google/android/gms/internal/dk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/dl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "e"
.end annotation


# instance fields
.field private final vj:Lcom/google/android/gms/common/api/a$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic vk:Lcom/google/android/gms/internal/dl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/dl;Lcom/google/android/gms/common/api/a$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/a$c",
            "<",
            "Lcom/google/android/gms/appstate/AppStateManager$StateResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/dl$e;->vk:Lcom/google/android/gms/internal/dl;

    invoke-direct {p0}, Lcom/google/android/gms/internal/dk;-><init>()V

    const-string v0, "Result holder must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/er;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a$c;

    iput-object v0, p0, Lcom/google/android/gms/internal/dl$e;->vj:Lcom/google/android/gms/common/api/a$c;

    return-void
.end method


# virtual methods
.method public a(ILcom/google/android/gms/common/data/DataHolder;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/dl$e;->vk:Lcom/google/android/gms/internal/dl;

    new-instance v1, Lcom/google/android/gms/internal/dl$f;

    iget-object v2, p0, Lcom/google/android/gms/internal/dl$e;->vk:Lcom/google/android/gms/internal/dl;

    iget-object v3, p0, Lcom/google/android/gms/internal/dl$e;->vj:Lcom/google/android/gms/common/api/a$c;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/internal/dl$f;-><init>(Lcom/google/android/gms/internal/dl;Lcom/google/android/gms/common/api/a$c;ILcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/dl;->a(Lcom/google/android/gms/internal/eh$b;)V

    return-void
.end method
