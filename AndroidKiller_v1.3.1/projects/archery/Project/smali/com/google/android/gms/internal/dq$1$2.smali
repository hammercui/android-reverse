.class Lcom/google/android/gms/internal/dq$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/dq$1;->b(Ljava/lang/String;DZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic xY:Lcom/google/android/gms/internal/dq$1;

.field final synthetic xZ:Ljava/lang/String;

.field final synthetic xs:D

.field final synthetic xt:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/dq$1;Ljava/lang/String;DZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/dq$1$2;->xY:Lcom/google/android/gms/internal/dq$1;

    iput-object p2, p0, Lcom/google/android/gms/internal/dq$1$2;->xZ:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/dq$1$2;->xs:D

    iput-boolean p5, p0, Lcom/google/android/gms/internal/dq$1$2;->xt:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/dq$1$2;->xY:Lcom/google/android/gms/internal/dq$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/dq$1;->xW:Lcom/google/android/gms/internal/dq;

    iget-object v1, p0, Lcom/google/android/gms/internal/dq$1$2;->xZ:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/dq$1$2;->xs:D

    iget-boolean v4, p0, Lcom/google/android/gms/internal/dq$1$2;->xt:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/dq;->a(Lcom/google/android/gms/internal/dq;Ljava/lang/String;DZ)V

    return-void
.end method
