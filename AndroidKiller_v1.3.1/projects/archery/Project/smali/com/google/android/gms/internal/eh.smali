.class public abstract Lcom/google/android/gms/internal/eh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient;
.implements Lcom/google/android/gms/common/api/Api$a;
.implements Lcom/google/android/gms/internal/ei$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/eh$e;,
        Lcom/google/android/gms/internal/eh$h;,
        Lcom/google/android/gms/internal/eh$g;,
        Lcom/google/android/gms/internal/eh$c;,
        Lcom/google/android/gms/internal/eh$d;,
        Lcom/google/android/gms/internal/eh$b;,
        Lcom/google/android/gms/internal/eh$a;,
        Lcom/google/android/gms/internal/eh$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/GooglePlayServicesClient;",
        "Lcom/google/android/gms/common/api/Api$a;",
        "Lcom/google/android/gms/internal/ei$b;"
    }
.end annotation


# static fields
.field public static final BB:[Ljava/lang/String;


# instance fields
.field BA:Z

.field private Bv:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final Bw:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/eh",
            "<TT;>.b<*>;>;"
        }
    .end annotation
.end field

.field private Bx:Lcom/google/android/gms/internal/eh$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/eh",
            "<TT;>.f;"
        }
    .end annotation
.end field

.field private volatile By:I

.field private final Bz:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field private final zs:Landroid/os/Looper;

.field private final zx:Lcom/google/android/gms/internal/ei;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "service_esmobile"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "service_googleme"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/eh;->BB:[Ljava/lang/String;

    return-void
.end method

.method protected varargs constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/eh;->Bw:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/eh;->By:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/eh;->BA:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/er;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/eh;->mContext:Landroid/content/Context;

    const-string v0, "Looper must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/er;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    iput-object v0, p0, Lcom/google/android/gms/internal/eh;->zs:Landroid/os/Looper;

    new-instance v0, Lcom/google/android/gms/internal/ei;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/android/gms/internal/ei;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ei$b;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/eh;->zx:Lcom/google/android/gms/internal/ei;

    new-instance v0, Lcom/google/android/gms/internal/eh$a;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/eh$a;-><init>(Lcom/google/android/gms/internal/eh;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/eh;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p5}, Lcom/google/android/gms/internal/eh;->b([Ljava/lang/String;)V

    iput-object p5, p0, Lcom/google/android/gms/internal/eh;->Bz:[Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/internal/er;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/eh;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    invoke-static {p4}, Lcom/google/android/gms/internal/er;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/eh;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method protected varargs constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;[Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/eh$c;

    invoke-direct {v3, p2}, Lcom/google/android/gms/internal/eh$c;-><init>(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    new-instance v4, Lcom/google/android/gms/internal/eh$g;

    invoke-direct {v4, p3}, Lcom/google/android/gms/internal/eh$g;-><init>(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/eh;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/eh;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/eh;->By:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/eh;Landroid/os/IInterface;)Landroid/os/IInterface;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/eh;->Bv:Landroid/os/IInterface;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/eh;Lcom/google/android/gms/internal/eh$f;)Lcom/google/android/gms/internal/eh$f;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/eh;->Bx:Lcom/google/android/gms/internal/eh$f;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/eh;)Lcom/google/android/gms/internal/ei;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/eh;->zx:Lcom/google/android/gms/internal/ei;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/eh;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/eh;->Bw:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/eh;)Landroid/os/IInterface;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/eh;->Bv:Landroid/os/IInterface;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/eh;)Lcom/google/android/gms/internal/eh$f;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/eh;->Bx:Lcom/google/android/gms/internal/eh$f;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/eh;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/eh;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public O(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/eh;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/eh;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/eh;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/eh;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    new-instance v3, Lcom/google/android/gms/internal/eh$h;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/google/android/gms/internal/eh$h;-><init>(Lcom/google/android/gms/internal/eh;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/eh$b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/eh",
            "<TT;>.b<*>;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/eh;->Bw:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/eh;->Bw:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/eh;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/eh;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected abstract a(Lcom/google/android/gms/internal/en;Lcom/google/android/gms/internal/eh$e;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected abstract aF()Ljava/lang/String;
.end method

.method protected abstract aG()Ljava/lang/String;
.end method

.method protected varargs b([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected final bm()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/eh;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public cY()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public connect()V
    .locals 4

    const/4 v3, 0x3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/eh;->BA:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/eh;->By:I

    iget-object v0, p0, Lcom/google/android/gms/internal/eh;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    iput v1, p0, Lcom/google/android/gms/internal/eh;->By:I

    iget-object v1, p0, Lcom/google/android/gms/internal/eh;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/eh;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/eh;->Bx:Lcom/google/android/gms/internal/eh$f;

    if-eqz v0, :cond_2

    const-string v0, "GmsClient"

    const-string v1, "Calling connect() while still connected, missing disconnect()."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/eh;->Bv:Landroid/os/IInterface;

    iget-object v0, p0, Lcom/google/android/gms/internal/eh;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ej;->y(Landroid/content/Context;)Lcom/google/android/gms/internal/ej;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/eh;->aF()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/eh;->Bx:Lcom/google/android/gms/internal/eh$f;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ej;->b(Ljava/lang/String;Lcom/google/android/gms/internal/eh$f;)V

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/eh$f;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/eh$f;-><init>(Lcom/google/android/gms/internal/eh;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/eh;->Bx:Lcom/google/android/gms/internal/eh$f;

    iget-object v0, p0, Lcom/google/android/gms/internal/eh;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ej;->y(Landroid/content/Context;)Lcom/google/android/gms/internal/ej;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/eh;->aF()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/eh;->Bx:Lcom/google/android/gms/internal/eh$f;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ej;->a(Ljava/lang/String;Lcom/google/android/gms/internal/eh$f;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GmsClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to connect to service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/eh;->aF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/eh;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/eh;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public dC()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/eh;->BA:Z

    return v0
.end method

.method public disconnect()V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/eh;->BA:Z

    iget-object v2, p0, Lcom/google/android/gms/internal/eh;->Bw:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/eh;->Bw:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/eh;->Bw:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/eh$b;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/eh$b;->ed()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/eh;->Bw:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/eh;->By:I

    iput-object v4, p0, Lcom/google/android/gms/internal/eh;->Bv:Landroid/os/IInterface;

    iget-object v0, p0, Lcom/google/android/gms/internal/eh;->Bx:Lcom/google/android/gms/internal/eh$f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/eh;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ej;->y(Landroid/content/Context;)Lcom/google/android/gms/internal/ej;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/eh;->aF()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/eh;->Bx:Lcom/google/android/gms/internal/eh$f;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ej;->b(Ljava/lang/String;Lcom/google/android/gms/internal/eh$f;)V

    iput-object v4, p0, Lcom/google/android/gms/internal/eh;->Bx:Lcom/google/android/gms/internal/eh$f;

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final ea()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/eh;->Bz:[Ljava/lang/String;

    return-object v0
.end method

.method protected final eb()Landroid/os/IInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/eh;->bm()V

    iget-object v0, p0, Lcom/google/android/gms/internal/eh;->Bv:Landroid/os/IInterface;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/eh;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/eh;->zs:Landroid/os/Looper;

    return-object v0
.end method

.method public isConnected()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/eh;->By:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnecting()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/eh;->By:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnectionCallbacksRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Z
    .locals 2
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/eh;, "Lcom/google/android/gms/internal/eh<TT;>;"
    iget-object v0, p0, Lcom/google/android/gms/internal/eh;->zx:Lcom/google/android/gms/internal/ei;

    new-instance v1, Lcom/google/android/gms/internal/eh$c;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/eh$c;-><init>(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ei;->isConnectionCallbacksRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Z

    move-result v0

    return v0
.end method

.method public isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/eh;, "Lcom/google/android/gms/internal/eh<TT;>;"
    iget-object v0, p0, Lcom/google/android/gms/internal/eh;->zx:Lcom/google/android/gms/internal/ei;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ei;->isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z

    move-result v0

    return v0
.end method

.method protected abstract p(Landroid/os/IBinder;)Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method public registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
    .locals 2
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/eh;, "Lcom/google/android/gms/internal/eh<TT;>;"
    iget-object v0, p0, Lcom/google/android/gms/internal/eh;->zx:Lcom/google/android/gms/internal/ei;

    new-instance v1, Lcom/google/android/gms/internal/eh$c;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/eh$c;-><init>(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ei;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    return-void
.end method

.method public registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/eh;, "Lcom/google/android/gms/internal/eh<TT;>;"
    iget-object v0, p0, Lcom/google/android/gms/internal/eh;->zx:Lcom/google/android/gms/internal/ei;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ei;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    return-void
.end method

.method public registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/eh;, "Lcom/google/android/gms/internal/eh<TT;>;"
    iget-object v0, p0, Lcom/google/android/gms/internal/eh;->zx:Lcom/google/android/gms/internal/ei;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ei;->registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/eh;, "Lcom/google/android/gms/internal/eh<TT;>;"
    iget-object v0, p0, Lcom/google/android/gms/internal/eh;->zx:Lcom/google/android/gms/internal/ei;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ei;->registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
    .locals 2
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/eh;, "Lcom/google/android/gms/internal/eh<TT;>;"
    iget-object v0, p0, Lcom/google/android/gms/internal/eh;->zx:Lcom/google/android/gms/internal/ei;

    new-instance v1, Lcom/google/android/gms/internal/eh$c;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/eh$c;-><init>(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ei;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    return-void
.end method

.method public unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    .prologue
    .local p0, "this":Lcom/google/android/gms/internal/eh;, "Lcom/google/android/gms/internal/eh<TT;>;"
    iget-object v0, p0, Lcom/google/android/gms/internal/eh;->zx:Lcom/google/android/gms/internal/ei;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ei;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method

.method protected final x(Landroid/os/IBinder;)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/en$a;->z(Landroid/os/IBinder;)Lcom/google/android/gms/internal/en;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/eh$e;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/eh$e;-><init>(Lcom/google/android/gms/internal/eh;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/eh;->a(Lcom/google/android/gms/internal/en;Lcom/google/android/gms/internal/eh$e;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GmsClient"

    const-string v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
