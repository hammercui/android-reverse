.class public Lcom/google/android/gms/internal/gd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/gd$1;,
        Lcom/google/android/gms/internal/gd$a;,
        Lcom/google/android/gms/internal/gd$b;
    }
.end annotation


# instance fields
.field protected HB:Lcom/google/android/gms/internal/fx;

.field protected HC:Lcom/google/android/gms/internal/gd$a;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/fx;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gd;->HB:Lcom/google/android/gms/internal/fx;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/gd;->aV(I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/fx;ILcom/google/android/gms/internal/gd$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/gd;-><init>(Lcom/google/android/gms/internal/fx;I)V

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/fx;I)Lcom/google/android/gms/internal/gd;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/fr;->eK()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/gd$b;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/gd$b;-><init>(Lcom/google/android/gms/internal/fx;I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/gd;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/gd;-><init>(Lcom/google/android/gms/internal/fx;I)V

    goto :goto_0
.end method


# virtual methods
.method protected aV(I)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/gd$a;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/gd$a;-><init>(ILandroid/os/IBinder;Lcom/google/android/gms/internal/gd$1;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gd;->HC:Lcom/google/android/gms/internal/gd$a;

    return-void
.end method

.method public f(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public fN()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gd;->HB:Lcom/google/android/gms/internal/fx;

    iget-object v1, p0, Lcom/google/android/gms/internal/gd;->HC:Lcom/google/android/gms/internal/gd$a;

    iget-object v1, v1, Lcom/google/android/gms/internal/gd$a;->HD:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/google/android/gms/internal/gd;->HC:Lcom/google/android/gms/internal/gd$a;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gd$a;->fQ()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/fx;->a(Landroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method

.method public fO()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gd;->HC:Lcom/google/android/gms/internal/gd$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gd$a;->fQ()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public fP()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gd;->HC:Lcom/google/android/gms/internal/gd$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/gd$a;->HD:Landroid/os/IBinder;

    return-object v0
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/gd;->HC:Lcom/google/android/gms/internal/gd$a;

    iput p1, v0, Lcom/google/android/gms/internal/gd$a;->gravity:I

    return-void
.end method
