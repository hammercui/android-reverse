.class public Lcom/google/android/gms/drive/events/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(ILcom/google/android/gms/drive/DriveId;)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_0

    const-wide/16 v1, 0x4

    shl-int v3, v0, p0

    int-to-long v3, v3

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
