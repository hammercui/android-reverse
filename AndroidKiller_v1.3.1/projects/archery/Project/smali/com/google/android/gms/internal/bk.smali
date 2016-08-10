.class public final Lcom/google/android/gms/internal/bk;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/bk$1;
    }
.end annotation


# direct methods
.method public static a(Lcom/google/archery/AdRequest$ErrorCode;)I
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/bk$1;->mX:[I

    invoke-virtual {p0}, Lcom/google/archery/AdRequest$ErrorCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Lcom/google/archery/AdRequest$Gender;)I
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/bk$1;->mW:[I

    invoke-virtual {p0}, Lcom/google/archery/AdRequest$Gender;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static b(Lcom/google/android/gms/internal/ab;)Lcom/google/archery/AdSize;
    .locals 4

    new-instance v0, Lcom/google/archery/AdSize;

    iget v1, p0, Lcom/google/android/gms/internal/ab;->width:I

    iget v2, p0, Lcom/google/android/gms/internal/ab;->height:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ab;->ln:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/monkey/a;->a(IILjava/lang/String;)Lcom/google/android/gms/monkey/AdSize;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/archery/AdSize;-><init>(Lcom/google/android/gms/monkey/AdSize;)V

    return-object v0
.end method

.method public static e(Lcom/google/android/gms/internal/z;)Lcom/google/archery/mediation/MediationAdRequest;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/z;->lg:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/gms/internal/z;->lg:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    new-instance v1, Lcom/google/archery/mediation/MediationAdRequest;

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/google/android/gms/internal/z;->le:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    iget v3, p0, Lcom/google/android/gms/internal/z;->lf:I

    invoke-static {v3}, Lcom/google/android/gms/internal/bk;->g(I)Lcom/google/archery/AdRequest$Gender;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/gms/internal/z;->lh:Z

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/archery/mediation/MediationAdRequest;-><init>(Ljava/util/Date;Lcom/google/archery/AdRequest$Gender;Ljava/util/Set;Z)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(I)Lcom/google/archery/AdRequest$Gender;
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/google/archery/AdRequest$Gender;->UNKNOWN:Lcom/google/archery/AdRequest$Gender;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/google/archery/AdRequest$Gender;->FEMALE:Lcom/google/archery/AdRequest$Gender;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/google/archery/AdRequest$Gender;->MALE:Lcom/google/archery/AdRequest$Gender;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final h(I)Lcom/google/archery/AdRequest$ErrorCode;
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/google/archery/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/archery/AdRequest$ErrorCode;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/google/archery/AdRequest$ErrorCode;->INVALID_REQUEST:Lcom/google/archery/AdRequest$ErrorCode;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/google/archery/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/google/archery/AdRequest$ErrorCode;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/google/archery/AdRequest$ErrorCode;->NO_FILL:Lcom/google/archery/AdRequest$ErrorCode;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
