.class Lcom/google/android/gms/tagmanager/v$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/v;->a(Ljava/util/List;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic UH:Ljava/util/List;

.field final synthetic UI:J

.field final synthetic UJ:Lcom/google/android/gms/tagmanager/v;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/v;Ljava/util/List;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/v$1;->UJ:Lcom/google/android/gms/tagmanager/v;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/v$1;->UH:Ljava/util/List;

    iput-wide p3, p0, Lcom/google/android/gms/tagmanager/v$1;->UI:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/v$1;->UJ:Lcom/google/android/gms/tagmanager/v;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/v$1;->UH:Ljava/util/List;

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/v$1;->UI:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/tagmanager/v;->a(Lcom/google/android/gms/tagmanager/v;Ljava/util/List;J)V

    return-void
.end method
