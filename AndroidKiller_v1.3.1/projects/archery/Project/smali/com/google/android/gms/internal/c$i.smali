.class public final Lcom/google/android/gms/internal/c$i;
.super Lcom/google/android/gms/internal/ka;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ka",
        "<",
        "Lcom/google/android/gms/internal/c$i;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile fR:[Lcom/google/android/gms/internal/c$i;


# instance fields
.field public fS:Lcom/google/android/gms/internal/d$a;

.field public fT:Lcom/google/android/gms/internal/c$d;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ka;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/c$i;->p()Lcom/google/android/gms/internal/c$i;

    return-void
.end method

.method public static o()[Lcom/google/android/gms/internal/c$i;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/c$i;->fR:[Lcom/google/android/gms/internal/c$i;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/kc;->aah:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/c$i;->fR:[Lcom/google/android/gms/internal/c$i;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/c$i;

    sput-object v0, Lcom/google/android/gms/internal/c$i;->fR:[Lcom/google/android/gms/internal/c$i;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/c$i;->fR:[Lcom/google/android/gms/internal/c$i;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/jz;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/c$i;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/c$i;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/jz;->b(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/c$i;->fS:Lcom/google/android/gms/internal/d$a;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/c$i;->fS:Lcom/google/android/gms/internal/d$a;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/jz;->a(ILcom/google/android/gms/internal/ke;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/c$i;->fT:Lcom/google/android/gms/internal/c$d;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/c$i;->fT:Lcom/google/android/gms/internal/c$d;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/jz;->a(ILcom/google/android/gms/internal/ke;)V

    :cond_2
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/c$i;->j(Lcom/google/android/gms/internal/jy;)Lcom/google/android/gms/internal/c$i;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/ka;->c()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/c$i;->name:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/c$i;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/jz;->g(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/c$i;->fS:Lcom/google/android/gms/internal/d$a;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/c$i;->fS:Lcom/google/android/gms/internal/d$a;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/jz;->b(ILcom/google/android/gms/internal/ke;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/c$i;->fT:Lcom/google/android/gms/internal/c$d;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/c$i;->fT:Lcom/google/android/gms/internal/c$d;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/jz;->b(ILcom/google/android/gms/internal/ke;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iput v0, p0, Lcom/google/android/gms/internal/c$i;->DY:I

    return v0
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
    instance-of v2, p1, Lcom/google/android/gms/internal/c$i;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/c$i;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/gms/internal/c$i;->name:Ljava/lang/String;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/google/android/gms/internal/c$i;->name:Ljava/lang/String;

    if-nez v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/c$i;->fS:Lcom/google/android/gms/internal/d$a;

    if-nez v2, :cond_8

    iget-object v2, p1, Lcom/google/android/gms/internal/c$i;->fS:Lcom/google/android/gms/internal/d$a;

    if-nez v2, :cond_0

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/c$i;->fT:Lcom/google/android/gms/internal/c$d;

    if-nez v2, :cond_9

    iget-object v2, p1, Lcom/google/android/gms/internal/c$i;->fT:Lcom/google/android/gms/internal/c$d;

    if-nez v2, :cond_0

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/c$i;->aae:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/c$i;->aae:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_5
    iget-object v2, p1, Lcom/google/android/gms/internal/c$i;->aae:Ljava/util/List;

    if-eqz v2, :cond_6

    iget-object v2, p1, Lcom/google/android/gms/internal/c$i;->aae:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/internal/c$i;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/c$i;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/internal/c$i;->fS:Lcom/google/android/gms/internal/d$a;

    iget-object v3, p1, Lcom/google/android/gms/internal/c$i;->fS:Lcom/google/android/gms/internal/d$a;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/d$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/google/android/gms/internal/c$i;->fT:Lcom/google/android/gms/internal/c$d;

    iget-object v3, p1, Lcom/google/android/gms/internal/c$i;->fT:Lcom/google/android/gms/internal/c$d;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/c$d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/c$i;->aae:Ljava/util/List;

    iget-object v1, p1, Lcom/google/android/gms/internal/c$i;->aae:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/c$i;->name:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/c$i;->fS:Lcom/google/android/gms/internal/d$a;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/c$i;->fT:Lcom/google/android/gms/internal/c$d;

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/c$i;->aae:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/c$i;->aae:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    :goto_3
    add-int/2addr v0, v1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/c$i;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/c$i;->fS:Lcom/google/android/gms/internal/d$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/d$a;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/c$i;->fT:Lcom/google/android/gms/internal/c$d;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/c$d;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/c$i;->aae:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3
.end method

.method public j(Lcom/google/android/gms/internal/jy;)Lcom/google/android/gms/internal/c$i;
    .locals 1
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/c$i;->a(Lcom/google/android/gms/internal/jy;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/jy;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/c$i;->name:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/c$i;->fS:Lcom/google/android/gms/internal/d$a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/d$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/d$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/c$i;->fS:Lcom/google/android/gms/internal/d$a;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/c$i;->fS:Lcom/google/android/gms/internal/d$a;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/internal/ke;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/c$i;->fT:Lcom/google/android/gms/internal/c$d;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/c$d;

    invoke-direct {v0}, Lcom/google/android/gms/internal/c$d;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/c$i;->fT:Lcom/google/android/gms/internal/c$d;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/c$i;->fT:Lcom/google/android/gms/internal/c$d;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/jy;->a(Lcom/google/android/gms/internal/ke;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public p()Lcom/google/android/gms/internal/c$i;
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/c$i;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/c$i;->fS:Lcom/google/android/gms/internal/d$a;

    iput-object v1, p0, Lcom/google/android/gms/internal/c$i;->fT:Lcom/google/android/gms/internal/c$d;

    iput-object v1, p0, Lcom/google/android/gms/internal/c$i;->aae:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/c$i;->DY:I

    return-object p0
.end method
