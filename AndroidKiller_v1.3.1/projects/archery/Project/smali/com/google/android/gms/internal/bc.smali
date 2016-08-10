.class public final Lcom/google/android/gms/internal/bc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/bc$a;
    }
.end annotation


# instance fields
.field public final mL:I

.field public final mM:Lcom/google/android/gms/internal/ax;

.field public final mN:Lcom/google/android/gms/internal/bg;

.field public final mO:Ljava/lang/String;

.field public final mP:Lcom/google/android/gms/internal/ba;


# direct methods
.method public constructor <init>(I)V
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/bc;-><init>(Lcom/google/android/gms/internal/ax;Lcom/google/android/gms/internal/bg;Ljava/lang/String;Lcom/google/android/gms/internal/ba;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ax;Lcom/google/android/gms/internal/bg;Ljava/lang/String;Lcom/google/android/gms/internal/ba;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/bc;->mM:Lcom/google/android/gms/internal/ax;

    iput-object p2, p0, Lcom/google/android/gms/internal/bc;->mN:Lcom/google/android/gms/internal/bg;

    iput-object p3, p0, Lcom/google/android/gms/internal/bc;->mO:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/bc;->mP:Lcom/google/android/gms/internal/ba;

    iput p5, p0, Lcom/google/android/gms/internal/bc;->mL:I

    return-void
.end method
