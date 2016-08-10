.class public final Lcom/google/android/gms/internal/kh;
.super Ljava/lang/Object;


# static fields
.field public static final aaj:[I

.field public static final aak:[J

.field public static final aal:[F

.field public static final aam:[D

.field public static final aan:[Z

.field public static final aao:[Ljava/lang/String;

.field public static final aap:[[B

.field public static final aaq:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [I

    sput-object v0, Lcom/google/android/gms/internal/kh;->aaj:[I

    new-array v0, v1, [J

    sput-object v0, Lcom/google/android/gms/internal/kh;->aak:[J

    new-array v0, v1, [F

    sput-object v0, Lcom/google/android/gms/internal/kh;->aal:[F

    new-array v0, v1, [D

    sput-object v0, Lcom/google/android/gms/internal/kh;->aam:[D

    new-array v0, v1, [Z

    sput-object v0, Lcom/google/android/gms/internal/kh;->aan:[Z

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/kh;->aao:[Ljava/lang/String;

    new-array v0, v1, [[B

    sput-object v0, Lcom/google/android/gms/internal/kh;->aap:[[B

    new-array v0, v1, [B

    sput-object v0, Lcom/google/android/gms/internal/kh;->aaq:[B

    return-void
.end method

.method public static b(Lcom/google/android/gms/internal/jy;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jy;->cv(I)Z

    move-result v0

    return v0
.end method

.method public static final c(Lcom/google/android/gms/internal/jy;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->getPosition()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jy;->cv(I)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->kJ()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jy;->ky()I

    move-result v2

    if-eq v2, p1, :cond_1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/jy;->cy(I)V

    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jy;->cv(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static cJ(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method public static cK(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method

.method static i(II)I
    .locals 1

    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method
