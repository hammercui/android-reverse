.class Lcom/google/android/gms/tagmanager/cy$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/cy;->bp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Xq:Lcom/google/android/gms/tagmanager/cy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/cy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/cy$3;->Xq:Lcom/google/android/gms/tagmanager/cy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/cy$3;->Xq:Lcom/google/android/gms/tagmanager/cy;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/cy;->e(Lcom/google/android/gms/tagmanager/cy;)Lcom/google/android/gms/tagmanager/at;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/at;->bp()V

    return-void
.end method
