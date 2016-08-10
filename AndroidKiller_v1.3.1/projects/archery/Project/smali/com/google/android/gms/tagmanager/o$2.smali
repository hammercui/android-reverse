.class Lcom/google/android/gms/tagmanager/o$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/o;->z(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ul:Lcom/google/android/gms/tagmanager/o;

.field final synthetic Um:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/o;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/o$2;->Ul:Lcom/google/android/gms/tagmanager/o;

    iput-boolean p2, p0, Lcom/google/android/gms/tagmanager/o$2;->Um:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/gms/tagmanager/Container;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/gms/tagmanager/o$2;->Um:Z

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/Container;->getLastRefreshTime()J

    move-result-wide v2

    const-wide/32 v4, 0x2932e00

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/google/android/gms/tagmanager/o$2;->Ul:Lcom/google/android/gms/tagmanager/o;

    invoke-static {v4}, Lcom/google/android/gms/tagmanager/o;->a(Lcom/google/android/gms/tagmanager/o;)Lcom/google/android/gms/internal/fl;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/internal/fl;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/Container;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
