.class Lcom/google/android/gms/tagmanager/cq$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/cq;->b(Lcom/google/android/gms/internal/jd$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Wq:Lcom/google/android/gms/tagmanager/cq;

.field final synthetic Wr:Lcom/google/android/gms/internal/jd$a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/cq;Lcom/google/android/gms/internal/jd$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/cq$2;->Wq:Lcom/google/android/gms/tagmanager/cq;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/cq$2;->Wr:Lcom/google/android/gms/internal/jd$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cq$2;->Wq:Lcom/google/android/gms/tagmanager/cq;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cq$2;->Wr:Lcom/google/android/gms/internal/jd$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/cq;->c(Lcom/google/android/gms/internal/jd$a;)Z

    return-void
.end method
