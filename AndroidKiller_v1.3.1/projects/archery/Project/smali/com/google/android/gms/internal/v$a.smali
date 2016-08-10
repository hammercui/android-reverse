.class public final Lcom/google/android/gms/internal/v$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final adUnitId:Ljava/lang/String;

.field public final kK:Landroid/widget/ViewSwitcher;

.field public final kL:Landroid/content/Context;

.field public final kM:Lcom/google/android/gms/internal/l;

.field public final kN:Lcom/google/android/gms/internal/db;

.field public kO:Lcom/google/android/gms/internal/af;

.field public kP:Lcom/google/android/gms/internal/ct;

.field public kQ:Lcom/google/android/gms/internal/ab;

.field public kR:Lcom/google/android/gms/internal/cn;

.field public kS:Lcom/google/android/gms/internal/co;

.field public kT:Lcom/google/android/gms/internal/ai;

.field public kU:Lcom/google/android/gms/internal/cr;

.field private kV:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/co;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ab;Ljava/lang/String;Lcom/google/android/gms/internal/db;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/v$a;->kU:Lcom/google/android/gms/internal/cr;

    iput-object v1, p0, Lcom/google/android/gms/internal/v$a;->kV:Ljava/util/HashSet;

    iget-boolean v0, p2, Lcom/google/android/gms/internal/ab;->lo:Z

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/android/gms/internal/v$a;->kK:Landroid/widget/ViewSwitcher;

    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/internal/v$a;->kQ:Lcom/google/android/gms/internal/ab;

    iput-object p3, p0, Lcom/google/android/gms/internal/v$a;->adUnitId:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/v$a;->kL:Landroid/content/Context;

    new-instance v0, Lcom/google/android/gms/internal/l;

    iget-object v1, p4, Lcom/google/android/gms/internal/db;->pU:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/k;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/google/android/gms/internal/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/l;-><init>(Lcom/google/android/gms/internal/h;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/v$a;->kM:Lcom/google/android/gms/internal/l;

    iput-object p4, p0, Lcom/google/android/gms/internal/v$a;->kN:Lcom/google/android/gms/internal/db;

    return-void

    :cond_0
    new-instance v0, Landroid/widget/ViewSwitcher;

    invoke-direct {v0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/v$a;->kK:Landroid/widget/ViewSwitcher;

    iget-object v0, p0, Lcom/google/android/gms/internal/v$a;->kK:Landroid/widget/ViewSwitcher;

    iget v1, p2, Lcom/google/android/gms/internal/ab;->widthPixels:I

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/v$a;->kK:Landroid/widget/ViewSwitcher;

    iget v1, p2, Lcom/google/android/gms/internal/ab;->heightPixels:I

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/v$a;->kK:Landroid/widget/ViewSwitcher;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/co;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/v$a;->kV:Ljava/util/HashSet;

    return-void
.end method

.method public ah()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/co;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/v$a;->kV:Ljava/util/HashSet;

    return-object v0
.end method
