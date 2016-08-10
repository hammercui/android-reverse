.class public final Lcom/google/android/gms/internal/c$f;
.super Lcom/google/android/gms/internal/ka;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ka",
        "<",
        "Lcom/google/android/gms/internal/c$f;",
        ">;"
    }
.end annotation


# instance fields
.field public fg:[Ljava/lang/String;

.field public fh:[Ljava/lang/String;

.field public fi:[Lcom/google/android/gms/internal/d$a;

.field public fj:[Lcom/google/android/gms/internal/c$e;

.field public fk:[Lcom/google/android/gms/internal/c$b;

.field public fl:[Lcom/google/android/gms/internal/c$b;

.field public fm:[Lcom/google/android/gms/internal/c$b;

.field public fn:[Lcom/google/android/gms/internal/c$g;

.field public fo:Ljava/lang/String;

.field public fp:Ljava/lang/String;

.field public fq:Ljava/lang/String;

.field public fr:Ljava/lang/String;

.field public fs:Lcom/google/android/gms/internal/c$a;

.field public ft:F

.field public fu:Z

.field public fv:[Ljava/lang/String;

.field public fw:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ka;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/c$f;->k()Lcom/google/android/gms/internal/c$f;

    return-void
.end method

.method public static a([B)Lcom/google/android/gms/internal/c$f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/kd;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/c$f;

    invoke-direct {v0}, Lcom/google/android/gms/internal/c$f;-><init>()V

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ke;->a(Lcom/google/android/gms/internal/ke;[B)Lcom/google/android/gms/internal/ke;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/c$f;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/jz;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fh:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fh:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fh:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fh:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/jz;->b(ILjava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fi:[Lcom/google/android/gms/internal/d$a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fi:[Lcom/google/android/gms/internal/d$a;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fi:[Lcom/google/android/gms/internal/d$a;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fi:[Lcom/google/android/gms/internal/d$a;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/jz;->a(ILcom/google/android/gms/internal/ke;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fj:[Lcom/google/android/gms/internal/c$e;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fj:[Lcom/google/android/gms/internal/c$e;

    array-length v0, v0

    if-lez v0, :cond_5

    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fj:[Lcom/google/android/gms/internal/c$e;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fj:[Lcom/google/android/gms/internal/c$e;

    aget-object v2, v2, v0

    if-eqz v2, :cond_4

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/jz;->a(ILcom/google/android/gms/internal/ke;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fk:[Lcom/google/android/gms/internal/c$b;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fk:[Lcom/google/android/gms/internal/c$b;

    array-length v0, v0

    if-lez v0, :cond_7

    move v0, v1

    :goto_3
    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fk:[Lcom/google/android/gms/internal/c$b;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fk:[Lcom/google/android/gms/internal/c$b;

    aget-object v2, v2, v0

    if-eqz v2, :cond_6

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/jz;->a(ILcom/google/android/gms/internal/ke;)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fl:[Lcom/google/android/gms/internal/c$b;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fl:[Lcom/google/android/gms/internal/c$b;

    array-length v0, v0

    if-lez v0, :cond_9

    move v0, v1

    :goto_4
    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fl:[Lcom/google/android/gms/internal/c$b;

    array-length v2, v2

    if-ge v0, v2, :cond_9

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fl:[Lcom/google/android/gms/internal/c$b;

    aget-object v2, v2, v0

    if-eqz v2, :cond_8

    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/jz;->a(ILcom/google/android/gms/internal/ke;)V

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fm:[Lcom/google/android/gms/internal/c$b;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fm:[Lcom/google/android/gms/internal/c$b;

    array-length v0, v0

    if-lez v0, :cond_b

    move v0, v1

    :goto_5
    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fm:[Lcom/google/android/gms/internal/c$b;

    array-length v2, v2

    if-ge v0, v2, :cond_b

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fm:[Lcom/google/android/gms/internal/c$b;

    aget-object v2, v2, v0

    if-eqz v2, :cond_a

    const/4 v3, 0x6

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/jz;->a(ILcom/google/android/gms/internal/ke;)V

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fn:[Lcom/google/android/gms/internal/c$g;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fn:[Lcom/google/android/gms/internal/c$g;

    array-length v0, v0

    if-lez v0, :cond_d

    move v0, v1

    :goto_6
    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fn:[Lcom/google/android/gms/internal/c$g;

    array-length v2, v2

    if-ge v0, v2, :cond_d

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fn:[Lcom/google/android/gms/internal/c$g;

    aget-object v2, v2, v0

    if-eqz v2, :cond_c

    const/4 v3, 0x7

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/jz;->a(ILcom/google/android/gms/internal/ke;)V

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fo:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const/16 v0, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fo:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/jz;->b(ILjava/lang/String;)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fp:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const/16 v0, 0xa

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fp:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/jz;->b(ILjava/lang/String;)V

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fq:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const/16 v0, 0xc

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fq:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/jz;->b(ILjava/lang/String;)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fr:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const/16 v0, 0xd

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fr:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/jz;->b(ILjava/lang/String;)V

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fs:Lcom/google/android/gms/internal/c$a;

    if-eqz v0, :cond_12

    const/16 v0, 0xe

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fs:Lcom/google/android/gms/internal/c$a;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/jz;->a(ILcom/google/android/gms/internal/ke;)V

    :cond_12
    iget v0, p0, Lcom/google/android/gms/internal/c$f;->ft:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v0, v2, :cond_13

    const/16 v0, 0xf

    iget v2, p0, Lcom/google/android/gms/internal/c$f;->ft:F

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/jz;->a(IF)V

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fv:[Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fv:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_15

    move v0, v1

    :goto_7
    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fv:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_15

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fv:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_14

    const/16 v3, 0x10

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/jz;->b(ILjava/lang/String;)V

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_15
    iget v0, p0, Lcom/google/android/gms/internal/c$f;->fw:I

    if-eqz v0, :cond_16

    const/16 v0, 0x11

    iget v2, p0, Lcom/google/android/gms/internal/c$f;->fw:I

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/jz;->f(II)V

    :cond_16
    iget-boolean v0, p0, Lcom/google/android/gms/internal/c$f;->fu:Z

    if-eqz v0, :cond_17

    const/16 v0, 0x12

    iget-boolean v2, p0, Lcom/google/android/gms/internal/c$f;->fu:Z

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/jz;->a(IZ)V

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fg:[Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fg:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_19

    :goto_8
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fg:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fg:[Ljava/lang/String;

    aget-object v0, v0, v1

    if-eqz v0, :cond_18

    const/16 v2, 0x13

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/jz;->b(ILjava/lang/String;)V

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_19
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/c$f;->g(Lcom/google/android/gms/internal/jy;)Lcom/google/android/gms/internal/c$f;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 6

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/ka;->c()I

    move-result v4

    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fh:[Ljava/lang/String;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fh:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_22

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_0
    iget-object v5, p0, Lcom/google/android/gms/internal/c$f;->fh:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_1

    iget-object v5, p0, Lcom/google/android/gms/internal/c$f;->fh:[Ljava/lang/String;

    aget-object v5, v5, v0

    if-eqz v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/jz;->bQ(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v2, v5

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int v0, v4, v2

    mul-int/lit8 v2, v3, 0x1

    add-int/2addr v0, v2

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fi:[Lcom/google/android/gms/internal/d$a;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fi:[Lcom/google/android/gms/internal/d$a;

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v0

    move v0, v1

    :goto_2
    iget-object v3, p0, Lcom/google/android/gms/internal/c$f;->fi:[Lcom/google/android/gms/internal/d$a;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/c$f;->fi:[Lcom/google/android/gms/internal/d$a;

    aget-object v3, v3, v0

    if-eqz v3, :cond_2

    const/4 v4, 0x2

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/jz;->b(ILcom/google/android/gms/internal/ke;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v0, v2

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fj:[Lcom/google/android/gms/internal/c$e;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fj:[Lcom/google/android/gms/internal/c$e;

    array-length v2, v2

    if-lez v2, :cond_7

    move v2, v0

    move v0, v1

    :goto_3
    iget-object v3, p0, Lcom/google/android/gms/internal/c$f;->fj:[Lcom/google/android/gms/internal/c$e;

    array-length v3, v3

    if-ge v0, v3, :cond_6

    iget-object v3, p0, Lcom/google/android/gms/internal/c$f;->fj:[Lcom/google/android/gms/internal/c$e;

    aget-object v3, v3, v0

    if-eqz v3, :cond_5

    const/4 v4, 0x3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/jz;->b(ILcom/google/android/gms/internal/ke;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    move v0, v2

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fk:[Lcom/google/android/gms/internal/c$b;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fk:[Lcom/google/android/gms/internal/c$b;

    array-length v2, v2

    if-lez v2, :cond_a

    move v2, v0

    move v0, v1

    :goto_4
    iget-object v3, p0, Lcom/google/android/gms/internal/c$f;->fk:[Lcom/google/android/gms/internal/c$b;

    array-length v3, v3

    if-ge v0, v3, :cond_9

    iget-object v3, p0, Lcom/google/android/gms/internal/c$f;->fk:[Lcom/google/android/gms/internal/c$b;

    aget-object v3, v3, v0

    if-eqz v3, :cond_8

    const/4 v4, 0x4

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/jz;->b(ILcom/google/android/gms/internal/ke;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    move v0, v2

    :cond_a
    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fl:[Lcom/google/android/gms/internal/c$b;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fl:[Lcom/google/android/gms/internal/c$b;

    array-length v2, v2

    if-lez v2, :cond_d

    move v2, v0

    move v0, v1

    :goto_5
    iget-object v3, p0, Lcom/google/android/gms/internal/c$f;->fl:[Lcom/google/android/gms/internal/c$b;

    array-length v3, v3

    if-ge v0, v3, :cond_c

    iget-object v3, p0, Lcom/google/android/gms/internal/c$f;->fl:[Lcom/google/android/gms/internal/c$b;

    aget-object v3, v3, v0

    if-eqz v3, :cond_b

    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/jz;->b(ILcom/google/android/gms/internal/ke;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_c
    move v0, v2

    :cond_d
    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fm:[Lcom/google/android/gms/internal/c$b;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fm:[Lcom/google/android/gms/internal/c$b;

    array-length v2, v2

    if-lez v2, :cond_10

    move v2, v0

    move v0, v1

    :goto_6
    iget-object v3, p0, Lcom/google/android/gms/internal/c$f;->fm:[Lcom/google/android/gms/internal/c$b;

    array-length v3, v3

    if-ge v0, v3, :cond_f

    iget-object v3, p0, Lcom/google/android/gms/internal/c$f;->fm:[Lcom/google/android/gms/internal/c$b;

    aget-object v3, v3, v0

    if-eqz v3, :cond_e

    const/4 v4, 0x6

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/jz;->b(ILcom/google/android/gms/internal/ke;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_f
    move v0, v2

    :cond_10
    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fn:[Lcom/google/android/gms/internal/c$g;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fn:[Lcom/google/android/gms/internal/c$g;

    array-length v2, v2

    if-lez v2, :cond_13

    move v2, v0

    move v0, v1

    :goto_7
    iget-object v3, p0, Lcom/google/android/gms/internal/c$f;->fn:[Lcom/google/android/gms/internal/c$g;

    array-length v3, v3

    if-ge v0, v3, :cond_12

    iget-object v3, p0, Lcom/google/android/gms/internal/c$f;->fn:[Lcom/google/android/gms/internal/c$g;

    aget-object v3, v3, v0

    if-eqz v3, :cond_11

    const/4 v4, 0x7

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/jz;->b(ILcom/google/android/gms/internal/ke;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_12
    move v0, v2

    :cond_13
    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fo:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/android/gms/internal/c$f;->fo:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/jz;->g(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_14
    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fp:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/google/android/gms/internal/c$f;->fp:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/jz;->g(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_15
    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fq:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    const/16 v2, 0xc

    iget-object v3, p0, Lcom/google/android/gms/internal/c$f;->fq:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/jz;->g(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_16
    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fr:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    const/16 v2, 0xd

    iget-object v3, p0, Lcom/google/android/gms/internal/c$f;->fr:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/jz;->g(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_17
    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fs:Lcom/google/android/gms/internal/c$a;

    if-eqz v2, :cond_18

    const/16 v2, 0xe

    iget-object v3, p0, Lcom/google/android/gms/internal/c$f;->fs:Lcom/google/android/gms/internal/c$a;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/jz;->b(ILcom/google/android/gms/internal/ke;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_18
    iget v2, p0, Lcom/google/android/gms/internal/c$f;->ft:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_19

    const/16 v2, 0xf

    iget v3, p0, Lcom/google/android/gms/internal/c$f;->ft:F

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/jz;->b(IF)I

    move-result v2

    add-int/2addr v0, v2

    :cond_19
    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fv:[Ljava/lang/String;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fv:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_1c

    move v2, v1

    move v3, v1

    move v4, v1

    :goto_8
    iget-object v5, p0, Lcom/google/android/gms/internal/c$f;->fv:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_1b

    iget-object v5, p0, Lcom/google/android/gms/internal/c$f;->fv:[Ljava/lang/String;

    aget-object v5, v5, v2

    if-eqz v5, :cond_1a

    add-int/lit8 v4, v4, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/jz;->bQ(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1b
    add-int/2addr v0, v3

    mul-int/lit8 v2, v4, 0x2

    add-int/2addr v0, v2

    :cond_1c
    iget v2, p0, Lcom/google/android/gms/internal/c$f;->fw:I

    if-eqz v2, :cond_1d

    const/16 v2, 0x11

    iget v3, p0, Lcom/google/android/gms/internal/c$f;->fw:I

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/jz;->g(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1d
    iget-boolean v2, p0, Lcom/google/android/gms/internal/c$f;->fu:Z

    if-eqz v2, :cond_1e

    const/16 v2, 0x12

    iget-boolean v3, p0, Lcom/google/android/gms/internal/c$f;->fu:Z

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/jz;->b(IZ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1e
    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fg:[Ljava/lang/String;

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fg:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_21

    move v2, v1

    move v3, v1

    :goto_9
    iget-object v4, p0, Lcom/google/android/gms/internal/c$f;->fg:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_20

    iget-object v4, p0, Lcom/google/android/gms/internal/c$f;->fg:[Ljava/lang/String;

    aget-object v4, v4, v1

    if-eqz v4, :cond_1f

    add-int/lit8 v3, v3, 0x1

    invoke-static {v4}, Lcom/google/android/gms/internal/jz;->bQ(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_20
    add-int/2addr v0, v2

    mul-int/lit8 v1, v3, 0x2

    add-int/2addr v0, v1

    :cond_21
    iput v0, p0, Lcom/google/android/gms/internal/c$f;->DY:I

    return v0

    :cond_22
    move v0, v4

    goto/16 :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
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
    instance-of v2, p1, Lcom/google/android/gms/internal/c$f;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/c$f;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fg:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/c$f;->fg:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/kc;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fh:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/c$f;->fh:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/kc;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fi:[Lcom/google/android/gms/internal/d$a;

    iget-object v3, p1, Lcom/google/android/gms/internal/c$f;->fi:[Lcom/google/android/gms/internal/d$a;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/kc;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fj:[Lcom/google/android/gms/internal/c$e;

    iget-object v3, p1, Lcom/google/android/gms/internal/c$f;->fj:[Lcom/google/android/gms/internal/c$e;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/kc;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fk:[Lcom/google/android/gms/internal/c$b;

    iget-object v3, p1, Lcom/google/android/gms/internal/c$f;->fk:[Lcom/google/android/gms/internal/c$b;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/kc;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fl:[Lcom/google/android/gms/internal/c$b;

    iget-object v3, p1, Lcom/google/android/gms/internal/c$f;->fl:[Lcom/google/android/gms/internal/c$b;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/kc;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fm:[Lcom/google/android/gms/internal/c$b;

    iget-object v3, p1, Lcom/google/android/gms/internal/c$f;->fm:[Lcom/google/android/gms/internal/c$b;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/kc;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fn:[Lcom/google/android/gms/internal/c$g;

    iget-object v3, p1, Lcom/google/android/gms/internal/c$f;->fn:[Lcom/google/android/gms/internal/c$g;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/kc;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fo:Ljava/lang/String;

    if-nez v2, :cond_9

    iget-object v2, p1, Lcom/google/android/gms/internal/c$f;->fo:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fp:Ljava/lang/String;

    if-nez v2, :cond_a

    iget-object v2, p1, Lcom/google/android/gms/internal/c$f;->fp:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fq:Ljava/lang/String;

    if-nez v2, :cond_b

    iget-object v2, p1, Lcom/google/android/gms/internal/c$f;->fq:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fr:Ljava/lang/String;

    if-nez v2, :cond_c

    iget-object v2, p1, Lcom/google/android/gms/internal/c$f;->fr:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fs:Lcom/google/android/gms/internal/c$a;

    if-nez v2, :cond_d

    iget-object v2, p1, Lcom/google/android/gms/internal/c$f;->fs:Lcom/google/android/gms/internal/c$a;

    if-nez v2, :cond_0

    :cond_6
    iget v2, p0, Lcom/google/android/gms/internal/c$f;->ft:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/google/android/gms/internal/c$f;->ft:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/c$f;->fu:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/c$f;->fu:Z

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fv:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/c$f;->fv:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/kc;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/android/gms/internal/c$f;->fw:I

    iget v3, p1, Lcom/google/android/gms/internal/c$f;->fw:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->aae:Ljava/util/List;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->aae:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_7
    iget-object v2, p1, Lcom/google/android/gms/internal/c$f;->aae:Ljava/util/List;

    if-eqz v2, :cond_8

    iget-object v2, p1, Lcom/google/android/gms/internal/c$f;->aae:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_8
    move v0, v1

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fo:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/c$f;->fo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :cond_a
    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fp:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/c$f;->fp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_0

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fq:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/c$f;->fq:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_0

    :cond_c
    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fr:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/c$f;->fr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_0

    :cond_d
    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fs:Lcom/google/android/gms/internal/c$a;

    iget-object v3, p1, Lcom/google/android/gms/internal/c$f;->fs:Lcom/google/android/gms/internal/c$a;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/c$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->aae:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/internal/c$f;->aae:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public g(Lcom/google/android/gms/internal/jy;)Lcom/google/android/gms/internal/c$f;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->ky()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/c$f;->a(Lcom/google/android/gms/internal/jy;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/kh;->c(Lcom/google/android/gms/internal/jy;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fh:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/c$f;->fh:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->ky()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fh:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/c$f;->fh:[Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/kh;->c(Lcom/google/android/gms/internal/jy;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fi:[Lcom/google/android/gms/internal/d$a;

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/d$a;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/c$f;->fi:[Lcom/google/android/gms/internal/d$a;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    new-instance v3, Lcom/google/android/gms/internal/d$a;

    invoke-direct {v3}, Lcom/google/android/gms/internal/d$a;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/internal/ke;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->ky()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fi:[Lcom/google/android/gms/internal/d$a;

    array-length v0, v0

    goto :goto_3

    :cond_6
    new-instance v3, Lcom/google/android/gms/internal/d$a;

    invoke-direct {v3}, Lcom/google/android/gms/internal/d$a;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/internal/ke;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/c$f;->fi:[Lcom/google/android/gms/internal/d$a;

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/kh;->c(Lcom/google/android/gms/internal/jy;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fj:[Lcom/google/android/gms/internal/c$e;

    if-nez v0, :cond_8

    move v0, v1

    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/c$e;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/internal/c$f;->fj:[Lcom/google/android/gms/internal/c$e;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    new-instance v3, Lcom/google/android/gms/internal/c$e;

    invoke-direct {v3}, Lcom/google/android/gms/internal/c$e;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/internal/ke;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->ky()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fj:[Lcom/google/android/gms/internal/c$e;

    array-length v0, v0

    goto :goto_5

    :cond_9
    new-instance v3, Lcom/google/android/gms/internal/c$e;

    invoke-direct {v3}, Lcom/google/android/gms/internal/c$e;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/internal/ke;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/c$f;->fj:[Lcom/google/android/gms/internal/c$e;

    goto/16 :goto_0

    :sswitch_4
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/kh;->c(Lcom/google/android/gms/internal/jy;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fk:[Lcom/google/android/gms/internal/c$b;

    if-nez v0, :cond_b

    move v0, v1

    :goto_7
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/c$b;

    if-eqz v0, :cond_a

    iget-object v3, p0, Lcom/google/android/gms/internal/c$f;->fk:[Lcom/google/android/gms/internal/c$b;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    :goto_8
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_c

    new-instance v3, Lcom/google/android/gms/internal/c$b;

    invoke-direct {v3}, Lcom/google/android/gms/internal/c$b;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/internal/ke;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->ky()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fk:[Lcom/google/android/gms/internal/c$b;

    array-length v0, v0

    goto :goto_7

    :cond_c
    new-instance v3, Lcom/google/android/gms/internal/c$b;

    invoke-direct {v3}, Lcom/google/android/gms/internal/c$b;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/internal/ke;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/c$f;->fk:[Lcom/google/android/gms/internal/c$b;

    goto/16 :goto_0

    :sswitch_5
    const/16 v0, 0x2a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/kh;->c(Lcom/google/android/gms/internal/jy;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fl:[Lcom/google/android/gms/internal/c$b;

    if-nez v0, :cond_e

    move v0, v1

    :goto_9
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/c$b;

    if-eqz v0, :cond_d

    iget-object v3, p0, Lcom/google/android/gms/internal/c$f;->fl:[Lcom/google/android/gms/internal/c$b;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    :goto_a
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_f

    new-instance v3, Lcom/google/android/gms/internal/c$b;

    invoke-direct {v3}, Lcom/google/android/gms/internal/c$b;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/internal/ke;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->ky()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fl:[Lcom/google/android/gms/internal/c$b;

    array-length v0, v0

    goto :goto_9

    :cond_f
    new-instance v3, Lcom/google/android/gms/internal/c$b;

    invoke-direct {v3}, Lcom/google/android/gms/internal/c$b;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/internal/ke;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/c$f;->fl:[Lcom/google/android/gms/internal/c$b;

    goto/16 :goto_0

    :sswitch_6
    const/16 v0, 0x32

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/kh;->c(Lcom/google/android/gms/internal/jy;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fm:[Lcom/google/android/gms/internal/c$b;

    if-nez v0, :cond_11

    move v0, v1

    :goto_b
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/c$b;

    if-eqz v0, :cond_10

    iget-object v3, p0, Lcom/google/android/gms/internal/c$f;->fm:[Lcom/google/android/gms/internal/c$b;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_10
    :goto_c
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_12

    new-instance v3, Lcom/google/android/gms/internal/c$b;

    invoke-direct {v3}, Lcom/google/android/gms/internal/c$b;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/internal/ke;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->ky()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fm:[Lcom/google/android/gms/internal/c$b;

    array-length v0, v0

    goto :goto_b

    :cond_12
    new-instance v3, Lcom/google/android/gms/internal/c$b;

    invoke-direct {v3}, Lcom/google/android/gms/internal/c$b;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/internal/ke;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/c$f;->fm:[Lcom/google/android/gms/internal/c$b;

    goto/16 :goto_0

    :sswitch_7
    const/16 v0, 0x3a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/kh;->c(Lcom/google/android/gms/internal/jy;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fn:[Lcom/google/android/gms/internal/c$g;

    if-nez v0, :cond_14

    move v0, v1

    :goto_d
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/c$g;

    if-eqz v0, :cond_13

    iget-object v3, p0, Lcom/google/android/gms/internal/c$f;->fn:[Lcom/google/android/gms/internal/c$g;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_13
    :goto_e
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_15

    new-instance v3, Lcom/google/android/gms/internal/c$g;

    invoke-direct {v3}, Lcom/google/android/gms/internal/c$g;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/internal/ke;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->ky()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fn:[Lcom/google/android/gms/internal/c$g;

    array-length v0, v0

    goto :goto_d

    :cond_15
    new-instance v3, Lcom/google/android/gms/internal/c$g;

    invoke-direct {v3}, Lcom/google/android/gms/internal/c$g;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/internal/ke;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/c$f;->fn:[Lcom/google/android/gms/internal/c$g;

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$f;->fo:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$f;->fp:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$f;->fq:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$f;->fr:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_c
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fs:Lcom/google/android/gms/internal/c$a;

    if-nez v0, :cond_16

    new-instance v0, Lcom/google/android/gms/internal/c$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/c$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/c$f;->fs:Lcom/google/android/gms/internal/c$a;

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fs:Lcom/google/android/gms/internal/c$a;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/internal/ke;)V

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/c$f;->ft:F

    goto/16 :goto_0

    :sswitch_e
    const/16 v0, 0x82

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/kh;->c(Lcom/google/android/gms/internal/jy;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fv:[Ljava/lang/String;

    if-nez v0, :cond_18

    move v0, v1

    :goto_f
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v3, p0, Lcom/google/android/gms/internal/c$f;->fv:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_17
    :goto_10
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_19

    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->ky()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fv:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_f

    :cond_19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/c$f;->fv:[Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kB()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/c$f;->fw:I

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->kC()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/c$f;->fu:Z

    goto/16 :goto_0

    :sswitch_11
    const/16 v0, 0x9a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/kh;->c(Lcom/google/android/gms/internal/jy;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fg:[Ljava/lang/String;

    if-nez v0, :cond_1b

    move v0, v1

    :goto_11
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v3, p0, Lcom/google/android/gms/internal/c$f;->fg:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1a
    :goto_12
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1c

    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->ky()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fg:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_11

    :cond_1c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/c$f;->fg:[Ljava/lang/String;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x4a -> :sswitch_8
        0x52 -> :sswitch_9
        0x62 -> :sswitch_a
        0x6a -> :sswitch_b
        0x72 -> :sswitch_c
        0x7d -> :sswitch_d
        0x82 -> :sswitch_e
        0x88 -> :sswitch_f
        0x90 -> :sswitch_10
        0x9a -> :sswitch_11
    .end sparse-switch
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fg:[Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/kc;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fh:[Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/kc;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fi:[Lcom/google/android/gms/internal/d$a;

    invoke-static {v2}, Lcom/google/android/gms/internal/kc;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fj:[Lcom/google/android/gms/internal/c$e;

    invoke-static {v2}, Lcom/google/android/gms/internal/kc;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fk:[Lcom/google/android/gms/internal/c$b;

    invoke-static {v2}, Lcom/google/android/gms/internal/kc;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fl:[Lcom/google/android/gms/internal/c$b;

    invoke-static {v2}, Lcom/google/android/gms/internal/kc;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fm:[Lcom/google/android/gms/internal/c$b;

    invoke-static {v2}, Lcom/google/android/gms/internal/kc;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fn:[Lcom/google/android/gms/internal/c$g;

    invoke-static {v2}, Lcom/google/android/gms/internal/kc;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fo:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fp:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fq:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fr:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fs:Lcom/google/android/gms/internal/c$a;

    if-nez v0, :cond_5

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/c$f;->ft:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/c$f;->fu:Z

    if-eqz v0, :cond_6

    const/16 v0, 0x4cf

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->fv:[Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/kc;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/internal/c$f;->fw:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->aae:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/c$f;->aae:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_0
    :goto_6
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fp:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fq:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/c$f;->fs:Lcom/google/android/gms/internal/c$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/c$a;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_6
    const/16 v0, 0x4d5

    goto :goto_5

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/c$f;->aae:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_6
.end method

.method public k()Lcom/google/android/gms/internal/c$f;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/internal/kh;->aao:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/c$f;->fg:[Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/kh;->aao:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/c$f;->fh:[Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/d$a;->r()[Lcom/google/android/gms/internal/d$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$f;->fi:[Lcom/google/android/gms/internal/d$a;

    invoke-static {}, Lcom/google/android/gms/internal/c$e;->i()[Lcom/google/android/gms/internal/c$e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$f;->fj:[Lcom/google/android/gms/internal/c$e;

    invoke-static {}, Lcom/google/android/gms/internal/c$b;->d()[Lcom/google/android/gms/internal/c$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$f;->fk:[Lcom/google/android/gms/internal/c$b;

    invoke-static {}, Lcom/google/android/gms/internal/c$b;->d()[Lcom/google/android/gms/internal/c$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$f;->fl:[Lcom/google/android/gms/internal/c$b;

    invoke-static {}, Lcom/google/android/gms/internal/c$b;->d()[Lcom/google/android/gms/internal/c$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$f;->fm:[Lcom/google/android/gms/internal/c$b;

    invoke-static {}, Lcom/google/android/gms/internal/c$g;->l()[Lcom/google/android/gms/internal/c$g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$f;->fn:[Lcom/google/android/gms/internal/c$g;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/c$f;->fo:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/c$f;->fp:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/google/android/gms/internal/c$f;->fq:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/c$f;->fr:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/c$f;->fs:Lcom/google/android/gms/internal/c$a;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/c$f;->ft:F

    iput-boolean v1, p0, Lcom/google/android/gms/internal/c$f;->fu:Z

    sget-object v0, Lcom/google/android/gms/internal/kh;->aao:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/c$f;->fv:[Ljava/lang/String;

    iput v1, p0, Lcom/google/android/gms/internal/c$f;->fw:I

    iput-object v2, p0, Lcom/google/android/gms/internal/c$f;->aae:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/c$f;->DY:I

    return-object p0
.end method
