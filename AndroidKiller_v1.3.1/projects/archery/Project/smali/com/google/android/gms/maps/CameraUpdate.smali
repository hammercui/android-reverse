.class public final Lcom/google/android/gms/maps/CameraUpdate;
.super Ljava/lang/Object;


# instance fields
.field private final OI:Lcom/google/android/gms/dynamic/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/dynamic/b;)V
    .locals 1
    .param p1, "remoteObject"    # Lcom/google/android/gms/dynamic/b;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/er;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/dynamic/b;

    iput-object v0, p0, Lcom/google/android/gms/maps/CameraUpdate;->OI:Lcom/google/android/gms/dynamic/b;

    return-void
.end method


# virtual methods
.method gK()Lcom/google/android/gms/dynamic/b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/CameraUpdate;->OI:Lcom/google/android/gms/dynamic/b;

    return-object v0
.end method
