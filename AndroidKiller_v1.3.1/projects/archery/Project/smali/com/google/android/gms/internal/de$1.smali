.class Lcom/google/android/gms/internal/de$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/de;->ar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic qm:Lcom/google/android/gms/internal/bo;

.field final synthetic qn:Lcom/google/android/gms/internal/de;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/de;Lcom/google/android/gms/internal/bo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/de$1;->qn:Lcom/google/android/gms/internal/de;

    iput-object p2, p0, Lcom/google/android/gms/internal/de$1;->qm:Lcom/google/android/gms/internal/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/de$1;->qm:Lcom/google/android/gms/internal/bo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bo;->ar()V

    return-void
.end method
