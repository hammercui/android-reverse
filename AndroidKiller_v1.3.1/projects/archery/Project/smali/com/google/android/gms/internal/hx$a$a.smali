.class public Lcom/google/android/gms/internal/hx$a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/hx$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final LE:Ljava/lang/String;

.field private Ot:Ljava/lang/String;

.field private Ou:I

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/hx$a$a;->LE:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/hx$a$a;->mTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public aK(Ljava/lang/String;)Lcom/google/android/gms/internal/hx$a$a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/hx$a$a;->Ot:Ljava/lang/String;

    return-object p0
.end method

.method public bv(I)Lcom/google/android/gms/internal/hx$a$a;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/hx$a$a;->Ou:I

    return-object p0
.end method

.method public gJ()Lcom/google/android/gms/internal/hx$a;
    .locals 6

    new-instance v0, Lcom/google/android/gms/internal/hx$a;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/hx$a$a;->LE:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/hx$a$a;->mTag:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/hx$a$a;->Ot:Ljava/lang/String;

    iget v5, p0, Lcom/google/android/gms/internal/hx$a$a;->Ou:I

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/hx$a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method
