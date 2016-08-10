.class public abstract Lcom/google/android/gms/internal/fy;
.super Lcom/google/android/gms/internal/eg;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/eg;-><init>()V

    return-void
.end method

.method protected static c(Ljava/lang/Integer;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/fo;->ab(I)Z

    move-result v0

    goto :goto_0
.end method
