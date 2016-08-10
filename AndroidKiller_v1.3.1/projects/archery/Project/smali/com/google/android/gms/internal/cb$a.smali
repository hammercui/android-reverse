.class public final Lcom/google/android/gms/internal/cb$a;
.super Lcom/google/android/gms/internal/cb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/cb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/cd;Lcom/google/android/gms/internal/ca$a;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/cb;-><init>(Lcom/google/android/gms/internal/cd;Lcom/google/android/gms/internal/ca$a;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/cb$a;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public aD()V
    .locals 0

    return-void
.end method

.method public aE()Lcom/google/android/gms/internal/ch;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cb$a;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/av;

    invoke-direct {v1}, Lcom/google/android/gms/internal/av;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ci;->a(Landroid/content/Context;Lcom/google/android/gms/internal/au;)Lcom/google/android/gms/internal/ci;

    move-result-object v0

    return-object v0
.end method
