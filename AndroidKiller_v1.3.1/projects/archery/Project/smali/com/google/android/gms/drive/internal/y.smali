.class public final Lcom/google/android/gms/drive/internal/y;
.super Lcom/google/android/gms/internal/ke;


# static fields
.field public static final DU:[Lcom/google/android/gms/drive/internal/y;


# instance fields
.field public DV:Ljava/lang/String;

.field public DW:J

.field public DX:J

.field private DY:I

.field public versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/drive/internal/y;

    sput-object v0, Lcom/google/android/gms/drive/internal/y;->DU:[Lcom/google/android/gms/drive/internal/y;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-wide/16 v1, -0x1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ke;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/drive/internal/y;->versionCode:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/y;->DV:Ljava/lang/String;

    iput-wide v1, p0, Lcom/google/android/gms/drive/internal/y;->DW:J

    iput-wide v1, p0, Lcom/google/android/gms/drive/internal/y;->DX:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/drive/internal/y;->DY:I

    return-void
.end method

.method public static g([B)Lcom/google/android/gms/drive/internal/y;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/kd;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/drive/internal/y;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/y;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ke;->a(Lcom/google/android/gms/internal/ke;[B)Lcom/google/android/gms/internal/ke;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/internal/y;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/jz;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/drive/internal/y;->versionCode:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/jz;->f(II)V

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/drive/internal/y;->DV:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/jz;->b(ILjava/lang/String;)V

    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/android/gms/drive/internal/y;->DW:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/jz;->c(IJ)V

    const/4 v0, 0x4

    iget-wide v1, p0, Lcom/google/android/gms/drive/internal/y;->DX:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/jz;->c(IJ)V

    return-void
.end method

.method public synthetic b(Lcom/google/android/gms/internal/jy;)Lcom/google/android/gms/internal/ke;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/y;->m(Lcom/google/android/gms/internal/jy;)Lcom/google/android/gms/drive/internal/y;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/drive/internal/y;->versionCode:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/jz;->g(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/y;->DV:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/jz;->g(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/y;->DW:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/jz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/y;->DX:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/jz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/drive/internal/y;->DY:I

    return v0
.end method

.method public eW()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/drive/internal/y;->DY:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/y;->c()I

    :cond_0
    iget v0, p0, Lcom/google/android/gms/drive/internal/y;->DY:I

    return v0
.end method

.method public m(Lcom/google/android/gms/internal/jy;)Lcom/google/android/gms/drive/internal/y;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->ky()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/kh;->b(Lcom/google/android/gms/internal/jy;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kB()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/drive/internal/y;->versionCode:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/y;->DV:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kD()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/drive/internal/y;->DW:J

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kD()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/drive/internal/y;->DX:J

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method
