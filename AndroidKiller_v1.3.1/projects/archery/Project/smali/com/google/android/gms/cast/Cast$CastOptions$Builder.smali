.class public final Lcom/google/android/gms/cast/Cast$CastOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/Cast$CastOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private wA:I

.field wy:Lcom/google/android/gms/cast/CastDevice;

.field wz:Lcom/google/android/gms/cast/Cast$Listener;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/Cast$Listener;)V
    .locals 1
    .param p1, "castDevice"    # Lcom/google/android/gms/cast/CastDevice;
    .param p2, "castListener"    # Lcom/google/android/gms/cast/Cast$Listener;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CastDevice parameter cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/er;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CastListener parameter cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/er;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->wy:Lcom/google/android/gms/cast/CastDevice;

    iput-object p2, p0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->wz:Lcom/google/android/gms/cast/Cast$Listener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->wA:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/Cast$Listener;Lcom/google/android/gms/cast/Cast$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/cast/CastDevice;
    .param p2, "x1"    # Lcom/google/android/gms/cast/Cast$Listener;
    .param p3, "x2"    # Lcom/google/android/gms/cast/Cast$1;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;-><init>(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/Cast$Listener;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/cast/Cast$CastOptions$Builder;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->wA:I

    return v0
.end method


# virtual methods
.method public build()Lcom/google/android/gms/cast/Cast$CastOptions;
    .locals 2

    new-instance v0, Lcom/google/android/gms/cast/Cast$CastOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/cast/Cast$CastOptions;-><init>(Lcom/google/android/gms/cast/Cast$CastOptions$Builder;Lcom/google/android/gms/cast/Cast$1;)V

    return-object v0
.end method

.method public setVerboseLoggingEnabled(Z)Lcom/google/android/gms/cast/Cast$CastOptions$Builder;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->wA:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->wA:I

    :goto_0
    return-object p0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->wA:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/gms/cast/Cast$CastOptions$Builder;->wA:I

    goto :goto_0
.end method
