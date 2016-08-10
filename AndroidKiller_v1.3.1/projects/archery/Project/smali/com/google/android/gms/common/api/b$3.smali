.class Lcom/google/android/gms/common/api/b$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ei$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zN:Lcom/google/android/gms/common/api/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/b$3;->zN:Lcom/google/android/gms/common/api/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cY()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public dC()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/b$3;->zN:Lcom/google/android/gms/common/api/b;

    invoke-static {v0}, Lcom/google/android/gms/common/api/b;->g(Lcom/google/android/gms/common/api/b;)Z

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/b$3;->zN:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/b;->isConnected()Z

    move-result v0

    return v0
.end method
