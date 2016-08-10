.class final Lcom/google/android/gms/internal/hi$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/hl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/hi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/hl",
        "<",
        "Lcom/google/android/gms/internal/hg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Lu:Lcom/google/android/gms/internal/hi;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/hi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/hi$c;->Lu:Lcom/google/android/gms/internal/hi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/hi;Lcom/google/android/gms/internal/hi$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/hi$c;-><init>(Lcom/google/android/gms/internal/hi;)V

    return-void
.end method


# virtual methods
.method public bm()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hi$c;->Lu:Lcom/google/android/gms/internal/hi;

    invoke-static {v0}, Lcom/google/android/gms/internal/hi;->a(Lcom/google/android/gms/internal/hi;)V

    return-void
.end method

.method public synthetic eb()Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hi$c;->gm()Lcom/google/android/gms/internal/hg;

    move-result-object v0

    return-object v0
.end method

.method public gm()Lcom/google/android/gms/internal/hg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/hi$c;->Lu:Lcom/google/android/gms/internal/hi;

    invoke-static {v0}, Lcom/google/android/gms/internal/hi;->b(Lcom/google/android/gms/internal/hi;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/hg;

    return-object v0
.end method
