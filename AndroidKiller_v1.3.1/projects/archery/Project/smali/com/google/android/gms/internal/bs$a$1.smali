.class Lcom/google/android/gms/internal/bs$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/bs$a;-><init>(Lcom/google/android/gms/internal/bs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final nH:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/bs;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic nI:Lcom/google/android/gms/internal/bs;

.field final synthetic nJ:Lcom/google/android/gms/internal/bs$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bs$a;Lcom/google/android/gms/internal/bs;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/bs$a$1;->nJ:Lcom/google/android/gms/internal/bs$a;

    iput-object p2, p0, Lcom/google/android/gms/internal/bs$a$1;->nI:Lcom/google/android/gms/internal/bs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/google/android/gms/internal/bs$a$1;->nI:Lcom/google/android/gms/internal/bs;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/bs$a$1;->nH:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/bs$a$1;->nH:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bs;

    iget-object v1, p0, Lcom/google/android/gms/internal/bs$a$1;->nJ:Lcom/google/android/gms/internal/bs$a;

    invoke-static {v1}, Lcom/google/android/gms/internal/bs$a;->a(Lcom/google/android/gms/internal/bs$a;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bs;->az()V

    iget-object v0, p0, Lcom/google/android/gms/internal/bs$a$1;->nJ:Lcom/google/android/gms/internal/bs$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bs$a;->aA()V

    :cond_0
    return-void
.end method
