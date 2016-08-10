.class Lcom/google/android/gms/analytics/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/j;


# instance fields
.field qR:Ljava/lang/String;

.field qS:Ljava/lang/String;

.field tA:I

.field ty:Ljava/lang/String;

.field tz:I


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/android/gms/analytics/w;->tz:I

    iput v0, p0, Lcom/google/android/gms/analytics/w;->tA:I

    return-void
.end method


# virtual methods
.method public bV()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/w;->qR:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bW()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/w;->qR:Ljava/lang/String;

    return-object v0
.end method

.method public bX()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/w;->qS:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bY()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/w;->qS:Ljava/lang/String;

    return-object v0
.end method

.method public bZ()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/w;->ty:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ca()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/w;->ty:Ljava/lang/String;

    return-object v0
.end method

.method public cb()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/analytics/w;->tz:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cc()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/analytics/w;->tz:I

    return v0
.end method

.method public cd()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/analytics/w;->tA:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ce()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/analytics/w;->tA:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
