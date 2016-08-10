.class public final Lcom/google/android/gms/internal/iq;
.super Lcom/google/android/gms/common/data/b;

# interfaces
.implements Lcom/google/android/gms/plus/model/moments/Moment;


# instance fields
.field private SJ:Lcom/google/android/gms/internal/io;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method

.method private hV()Lcom/google/android/gms/internal/io;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/iq;->SJ:Lcom/google/android/gms/internal/io;

    if-nez v0, :cond_0

    const-string v0, "momentImpl"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/iq;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v0, Lcom/google/android/gms/internal/io;->CREATOR:Lcom/google/android/gms/internal/ip;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ip;->aH(Landroid/os/Parcel;)Lcom/google/android/gms/internal/io;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/iq;->SJ:Lcom/google/android/gms/internal/io;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/iq;->SJ:Lcom/google/android/gms/internal/io;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iq;->hU()Lcom/google/android/gms/internal/io;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/iq;->hV()Lcom/google/android/gms/internal/io;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/io;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResult()Lcom/google/android/gms/plus/model/moments/ItemScope;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/iq;->hV()Lcom/google/android/gms/internal/io;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/io;->getResult()Lcom/google/android/gms/plus/model/moments/ItemScope;

    move-result-object v0

    return-object v0
.end method

.method public getStartDate()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/iq;->hV()Lcom/google/android/gms/internal/io;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/io;->getStartDate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTarget()Lcom/google/android/gms/plus/model/moments/ItemScope;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/iq;->hV()Lcom/google/android/gms/internal/io;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/io;->getTarget()Lcom/google/android/gms/plus/model/moments/ItemScope;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/iq;->hV()Lcom/google/android/gms/internal/io;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/io;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hU()Lcom/google/android/gms/internal/io;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/iq;->hV()Lcom/google/android/gms/internal/io;

    move-result-object v0

    return-object v0
.end method

.method public hasId()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/iq;->hV()Lcom/google/android/gms/internal/io;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/io;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasResult()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/iq;->hV()Lcom/google/android/gms/internal/io;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/io;->hasId()Z

    move-result v0

    return v0
.end method

.method public hasStartDate()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/iq;->hV()Lcom/google/android/gms/internal/io;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/io;->hasStartDate()Z

    move-result v0

    return v0
.end method

.method public hasTarget()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/iq;->hV()Lcom/google/android/gms/internal/io;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/io;->hasTarget()Z

    move-result v0

    return v0
.end method

.method public hasType()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/iq;->hV()Lcom/google/android/gms/internal/io;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/io;->hasType()Z

    move-result v0

    return v0
.end method
