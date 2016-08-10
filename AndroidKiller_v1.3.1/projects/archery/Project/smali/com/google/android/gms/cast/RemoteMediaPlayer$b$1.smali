.class Lcom/google/android/gms/cast/RemoteMediaPlayer$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/dx;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/cast/RemoteMediaPlayer$b;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic xz:Lcom/google/android/gms/cast/RemoteMediaPlayer$b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/RemoteMediaPlayer$b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$b$1;->xz:Lcom/google/android/gms/cast/RemoteMediaPlayer$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JILorg/json/JSONObject;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$b$1;->xz:Lcom/google/android/gms/cast/RemoteMediaPlayer$b;

    new-instance v1, Lcom/google/android/gms/cast/RemoteMediaPlayer$c;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v2, p3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {v1, v2, p4}, Lcom/google/android/gms/cast/RemoteMediaPlayer$c;-><init>(Lcom/google/android/gms/common/api/Status;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$b;->a(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public k(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$b$1;->xz:Lcom/google/android/gms/cast/RemoteMediaPlayer$b;

    iget-object v1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$b$1;->xz:Lcom/google/android/gms/cast/RemoteMediaPlayer$b;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/RemoteMediaPlayer$b;->j(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$b;->a(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
