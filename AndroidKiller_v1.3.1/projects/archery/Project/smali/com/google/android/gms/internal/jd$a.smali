.class public final Lcom/google/android/gms/internal/jd$a;
.super Lcom/google/android/gms/internal/ka;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/jd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ka",
        "<",
        "Lcom/google/android/gms/internal/jd$a;",
        ">;"
    }
.end annotation


# instance fields
.field public Yb:J

.field public Yc:Lcom/google/android/gms/internal/c$j;

.field public fV:Lcom/google/android/gms/internal/c$f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ka;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jd$a;->kw()Lcom/google/android/gms/internal/jd$a;

    return-void
.end method

.method public static l([B)Lcom/google/android/gms/internal/jd$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/kd;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/jd$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/jd$a;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ke;->a(Lcom/google/android/gms/internal/ke;[B)Lcom/google/android/gms/internal/ke;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jd$a;

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

    iget-wide v1, p0, Lcom/google/android/gms/internal/jd$a;->Yb:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/internal/jz;->b(IJ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/jd$a;->fV:Lcom/google/android/gms/internal/c$f;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/jd$a;->fV:Lcom/google/android/gms/internal/c$f;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/jz;->a(ILcom/google/android/gms/internal/ke;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/jd$a;->Yc:Lcom/google/android/gms/internal/c$j;

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/jd$a;->Yc:Lcom/google/android/gms/internal/c$j;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/jz;->a(ILcom/google/android/gms/internal/ke;)V

    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ka;->a(Lcom/google/android/gms/internal/jz;)V

    return-void
.end method

.method public synthetic b(Lcom/google/android/gms/internal/jy;)Lcom/google/android/gms/internal/ke;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jd$a;->n(Lcom/google/android/gms/internal/jy;)Lcom/google/android/gms/internal/jd$a;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/ka;->c()I

    move-result v0

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/jd$a;->Yb:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/jz;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/jd$a;->fV:Lcom/google/android/gms/internal/c$f;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/jd$a;->fV:Lcom/google/android/gms/internal/c$f;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/jz;->b(ILcom/google/android/gms/internal/ke;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/jd$a;->Yc:Lcom/google/android/gms/internal/c$j;

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/jd$a;->Yc:Lcom/google/android/gms/internal/c$j;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/jz;->b(ILcom/google/android/gms/internal/ke;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iput v0, p0, Lcom/google/android/gms/internal/jd$a;->DY:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    move v0, v1

    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/jd$a;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/jd$a;

    .end local p1    # "o":Ljava/lang/Object;
    iget-wide v2, p0, Lcom/google/android/gms/internal/jd$a;->Yb:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/jd$a;->Yb:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/jd$a;->fV:Lcom/google/android/gms/internal/c$f;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/google/android/gms/internal/jd$a;->fV:Lcom/google/android/gms/internal/c$f;

    if-nez v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/jd$a;->Yc:Lcom/google/android/gms/internal/c$j;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/google/android/gms/internal/jd$a;->Yc:Lcom/google/android/gms/internal/c$j;

    if-nez v2, :cond_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/jd$a;->aae:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/jd$a;->aae:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_4
    iget-object v2, p1, Lcom/google/android/gms/internal/jd$a;->aae:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/google/android/gms/internal/jd$a;->aae:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/jd$a;->fV:Lcom/google/android/gms/internal/c$f;

    iget-object v3, p1, Lcom/google/android/gms/internal/jd$a;->fV:Lcom/google/android/gms/internal/c$f;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/c$f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/jd$a;->Yc:Lcom/google/android/gms/internal/c$j;

    iget-object v3, p1, Lcom/google/android/gms/internal/jd$a;->Yc:Lcom/google/android/gms/internal/c$j;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/c$j;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/jd$a;->aae:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/internal/jd$a;->aae:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/internal/jd$a;->Yb:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/jd$a;->Yb:J

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/jd$a;->fV:Lcom/google/android/gms/internal/c$f;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/jd$a;->Yc:Lcom/google/android/gms/internal/c$j;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/jd$a;->aae:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/jd$a;->aae:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/jd$a;->fV:Lcom/google/android/gms/internal/c$f;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/c$f;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/jd$a;->Yc:Lcom/google/android/gms/internal/c$j;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/c$j;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/jd$a;->aae:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public kw()Lcom/google/android/gms/internal/jd$a;
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/jd$a;->Yb:J

    iput-object v2, p0, Lcom/google/android/gms/internal/jd$a;->fV:Lcom/google/android/gms/internal/c$f;

    iput-object v2, p0, Lcom/google/android/gms/internal/jd$a;->Yc:Lcom/google/android/gms/internal/c$j;

    iput-object v2, p0, Lcom/google/android/gms/internal/jd$a;->aae:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/jd$a;->DY:I

    return-object p0
.end method

.method public n(Lcom/google/android/gms/internal/jy;)Lcom/google/android/gms/internal/jd$a;
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/jd$a;->a(Lcom/google/android/gms/internal/jy;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kA()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/jd$a;->Yb:J

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/jd$a;->fV:Lcom/google/android/gms/internal/c$f;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/c$f;

    invoke-direct {v0}, Lcom/google/android/gms/internal/c$f;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/jd$a;->fV:Lcom/google/android/gms/internal/c$f;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/jd$a;->fV:Lcom/google/android/gms/internal/c$f;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/internal/ke;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/jd$a;->Yc:Lcom/google/android/gms/internal/c$j;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/c$j;

    invoke-direct {v0}, Lcom/google/android/gms/internal/c$j;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/jd$a;->Yc:Lcom/google/android/gms/internal/c$j;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/jd$a;->Yc:Lcom/google/android/gms/internal/c$j;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/internal/ke;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method
