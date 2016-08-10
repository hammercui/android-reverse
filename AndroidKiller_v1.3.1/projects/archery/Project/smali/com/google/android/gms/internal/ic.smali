.class public Lcom/google/android/gms/internal/ic;
.super Ljava/lang/Object;


# static fields
.field private static OB:I

.field private static OC:I


# instance fields
.field private final Lk:Lcom/google/android/gms/internal/hl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/hl",
            "<",
            "Lcom/google/android/gms/internal/hg;",
            ">;"
        }
    .end annotation
.end field

.field private final OD:Ljava/lang/String;

.field private final OE:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/hx$a;",
            ">;"
        }
    .end annotation
.end field

.field private OF:I

.field private final Ou:I

.field private final mg:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2710

    sput v0, Lcom/google/android/gms/internal/ic;->OB:I

    const/16 v0, 0x3e8

    sput v0, Lcom/google/android/gms/internal/ic;->OC:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/hl;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/hl",
            "<",
            "Lcom/google/android/gms/internal/hg;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ic;->mg:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ic;->Lk:Lcom/google/android/gms/internal/hl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ic;->OD:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/ic;->Ou:I

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    sget v1, Lcom/google/android/gms/internal/ic;->OB:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ic;->OE:Ljava/util/concurrent/BlockingQueue;

    sget v0, Lcom/google/android/gms/internal/ic;->OC:I

    iput v0, p0, Lcom/google/android/gms/internal/ic;->OF:I

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/hx$a$a;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ic;->OD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/hx$a$a;->aK(Ljava/lang/String;)Lcom/google/android/gms/internal/hx$a$a;

    iget v0, p0, Lcom/google/android/gms/internal/ic;->Ou:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/hx$a$a;->bv(I)Lcom/google/android/gms/internal/hx$a$a;

    iget-object v0, p0, Lcom/google/android/gms/internal/ic;->OE:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/hx$a$a;->gJ()Lcom/google/android/gms/internal/hx$a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method
