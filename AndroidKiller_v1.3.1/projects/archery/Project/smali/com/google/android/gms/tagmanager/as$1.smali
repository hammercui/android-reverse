.class Lcom/google/android/gms/tagmanager/as$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/as;->b(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ve:Lcom/google/android/gms/tagmanager/ar;

.field final synthetic Vf:J

.field final synthetic Vg:Ljava/lang/String;

.field final synthetic Vh:Lcom/google/android/gms/tagmanager/as;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/as;Lcom/google/android/gms/tagmanager/ar;JLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/as$1;->Vh:Lcom/google/android/gms/tagmanager/as;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/as$1;->Ve:Lcom/google/android/gms/tagmanager/ar;

    iput-wide p3, p0, Lcom/google/android/gms/tagmanager/as$1;->Vf:J

    iput-object p5, p0, Lcom/google/android/gms/tagmanager/as$1;->Vg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/as$1;->Vh:Lcom/google/android/gms/tagmanager/as;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/as;->a(Lcom/google/android/gms/tagmanager/as;)Lcom/google/android/gms/tagmanager/at;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/tagmanager/cy;->kh()Lcom/google/android/gms/tagmanager/cy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/as$1;->Vh:Lcom/google/android/gms/tagmanager/as;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/as;->b(Lcom/google/android/gms/tagmanager/as;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/as$1;->Ve:Lcom/google/android/gms/tagmanager/ar;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tagmanager/cy;->a(Landroid/content/Context;Lcom/google/android/gms/tagmanager/ar;)V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/as$1;->Vh:Lcom/google/android/gms/tagmanager/as;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cy;->ki()Lcom/google/android/gms/tagmanager/at;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/as;->a(Lcom/google/android/gms/tagmanager/as;Lcom/google/android/gms/tagmanager/at;)Lcom/google/android/gms/tagmanager/at;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/as$1;->Vh:Lcom/google/android/gms/tagmanager/as;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/as;->a(Lcom/google/android/gms/tagmanager/as;)Lcom/google/android/gms/tagmanager/at;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/tagmanager/as$1;->Vf:J

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/as$1;->Vg:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/tagmanager/at;->e(JLjava/lang/String;)V

    return-void
.end method
