.class final Lcom/google/android/gms/internal/hi$b;
.super Lcom/google/android/gms/internal/hf$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/hi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private Lv:Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;

.field private Lw:Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;

.field private Lx:Lcom/google/android/gms/internal/hi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;Lcom/google/android/gms/internal/hi;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/hf$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/hi$b;->Lv:Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/hi$b;->Lw:Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;

    iput-object p2, p0, Lcom/google/android/gms/internal/hi$b;->Lx:Lcom/google/android/gms/internal/hi;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;Lcom/google/android/gms/internal/hi;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/hf$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/hi$b;->Lw:Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/hi$b;->Lv:Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;

    iput-object p2, p0, Lcom/google/android/gms/internal/hi$b;->Lx:Lcom/google/android/gms/internal/hi;

    return-void
.end method


# virtual methods
.method public onAddGeofencesResult(I[Ljava/lang/String;)V
    .locals 5
    .param p1, "statusCode"    # I
    .param p2, "geofenceRequestIds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/hi$b;->Lx:Lcom/google/android/gms/internal/hi;

    if-nez v0, :cond_0

    const-string v0, "LocationClientImpl"

    const-string v1, "onAddGeofenceResult called multiple times"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hi$b;->Lx:Lcom/google/android/gms/internal/hi;

    new-instance v1, Lcom/google/android/gms/internal/hi$a;

    iget-object v2, p0, Lcom/google/android/gms/internal/hi$b;->Lx:Lcom/google/android/gms/internal/hi;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/google/android/gms/internal/hi$b;->Lv:Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/google/android/gms/internal/hi$a;-><init>(Lcom/google/android/gms/internal/hi;Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;I[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hi;->a(Lcom/google/android/gms/internal/eh$b;)V

    iput-object v4, p0, Lcom/google/android/gms/internal/hi$b;->Lx:Lcom/google/android/gms/internal/hi;

    iput-object v4, p0, Lcom/google/android/gms/internal/hi$b;->Lv:Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;

    iput-object v4, p0, Lcom/google/android/gms/internal/hi$b;->Lw:Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;

    goto :goto_0
.end method

.method public onRemoveGeofencesByPendingIntentResult(ILandroid/app/PendingIntent;)V
    .locals 8
    .param p1, "statusCode"    # I
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v7, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/hi$b;->Lx:Lcom/google/android/gms/internal/hi;

    if-nez v0, :cond_0

    const-string v0, "LocationClientImpl"

    const-string v1, "onRemoveGeofencesByPendingIntentResult called multiple times"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/google/android/gms/internal/hi$b;->Lx:Lcom/google/android/gms/internal/hi;

    new-instance v0, Lcom/google/android/gms/internal/hi$d;

    iget-object v1, p0, Lcom/google/android/gms/internal/hi$b;->Lx:Lcom/google/android/gms/internal/hi;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/hi$b;->Lw:Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/hi$d;-><init>(Lcom/google/android/gms/internal/hi;ILcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;ILandroid/app/PendingIntent;)V

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/hi;->a(Lcom/google/android/gms/internal/eh$b;)V

    iput-object v7, p0, Lcom/google/android/gms/internal/hi$b;->Lx:Lcom/google/android/gms/internal/hi;

    iput-object v7, p0, Lcom/google/android/gms/internal/hi$b;->Lv:Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;

    iput-object v7, p0, Lcom/google/android/gms/internal/hi$b;->Lw:Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;

    goto :goto_0
.end method

.method public onRemoveGeofencesByRequestIdsResult(I[Ljava/lang/String;)V
    .locals 8
    .param p1, "statusCode"    # I
    .param p2, "geofenceRequestIds"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/hi$b;->Lx:Lcom/google/android/gms/internal/hi;

    if-nez v0, :cond_0

    const-string v0, "LocationClientImpl"

    const-string v1, "onRemoveGeofencesByRequestIdsResult called multiple times"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/google/android/gms/internal/hi$b;->Lx:Lcom/google/android/gms/internal/hi;

    new-instance v0, Lcom/google/android/gms/internal/hi$d;

    iget-object v1, p0, Lcom/google/android/gms/internal/hi$b;->Lx:Lcom/google/android/gms/internal/hi;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/hi$b;->Lw:Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/hi$d;-><init>(Lcom/google/android/gms/internal/hi;ILcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;I[Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/hi;->a(Lcom/google/android/gms/internal/eh$b;)V

    iput-object v7, p0, Lcom/google/android/gms/internal/hi$b;->Lx:Lcom/google/android/gms/internal/hi;

    iput-object v7, p0, Lcom/google/android/gms/internal/hi$b;->Lv:Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;

    iput-object v7, p0, Lcom/google/android/gms/internal/hi$b;->Lw:Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;

    goto :goto_0
.end method
