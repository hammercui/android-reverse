.class final Lcom/unity3d/player/a/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/unity3d/player/a/i;

.field private final b:Lcom/unity3d/player/a/f;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/unity3d/player/a/b;


# direct methods
.method constructor <init>(Lcom/unity3d/player/a/i;Lcom/unity3d/player/a/b;Lcom/unity3d/player/a/f;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/player/a/g;->a:Lcom/unity3d/player/a/i;

    iput-object p2, p0, Lcom/unity3d/player/a/g;->f:Lcom/unity3d/player/a/b;

    iput-object p3, p0, Lcom/unity3d/player/a/g;->b:Lcom/unity3d/player/a/f;

    iput p4, p0, Lcom/unity3d/player/a/g;->c:I

    iput-object p5, p0, Lcom/unity3d/player/a/g;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/unity3d/player/a/g;->e:Ljava/lang/String;

    return-void
.end method

.method private a(ILcom/unity3d/player/a/k;)V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/a/g;->a:Lcom/unity3d/player/a/i;

    invoke-virtual {v0, p1, p2}, Lcom/unity3d/player/a/i;->a(ILcom/unity3d/player/a/k;)V

    iget-object v0, p0, Lcom/unity3d/player/a/g;->a:Lcom/unity3d/player/a/i;

    invoke-virtual {v0}, Lcom/unity3d/player/a/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/a/g;->b:Lcom/unity3d/player/a/f;

    invoke-interface {v0}, Lcom/unity3d/player/a/f;->a()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/a/g;->b:Lcom/unity3d/player/a/f;

    invoke-interface {v0}, Lcom/unity3d/player/a/f;->b()V

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/unity3d/player/a/f;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/a/g;->b:Lcom/unity3d/player/a/f;

    return-object v0
.end method

.method public final a(Ljava/security/PublicKey;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    if-eq p2, v5, :cond_0

    if-ne p2, v1, :cond_9

    :cond_0
    :try_start_0
    const-string v0, "SHA1withRSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    invoke-static {p4}, Lcom/unity3d/player/b/a;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/unity3d/player/a/g;->b:Lcom/unity3d/player/a/f;

    invoke-interface {v0}, Lcom/unity3d/player/a/f;->b()V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/unity3d/player/b/b; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    sget-object v0, Lcom/unity3d/player/a/f$a;->d:Lcom/unity3d/player/a/f$a;

    iget-object v0, p0, Lcom/unity3d/player/a/g;->b:Lcom/unity3d/player/a/f;

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    iget-object v0, p0, Lcom/unity3d/player/a/g;->b:Lcom/unity3d/player/a/f;

    invoke-interface {v0}, Lcom/unity3d/player/a/f;->b()V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    invoke-interface {v0, p3}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4

    :catch_4
    move-exception v0

    iget-object v0, p0, Lcom/unity3d/player/a/g;->b:Lcom/unity3d/player/a/f;

    invoke-interface {v0}, Lcom/unity3d/player/a/f;->b()V

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ""

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_3
    const-string v2, "|"

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2

    const/4 v3, 0x6

    if-ge v0, v3, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lcom/unity3d/player/a/k;

    invoke-direct {v0}, Lcom/unity3d/player/a/k;-><init>()V

    iput-object v1, v0, Lcom/unity3d/player/a/k;->g:Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/unity3d/player/a/k;->a:I

    const/4 v1, 0x1

    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/unity3d/player/a/k;->b:I

    const/4 v1, 0x2

    aget-object v1, v2, v1

    iput-object v1, v0, Lcom/unity3d/player/a/k;->c:Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v1, v2, v1

    iput-object v1, v0, Lcom/unity3d/player/a/k;->d:Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v1, v2, v1

    iput-object v1, v0, Lcom/unity3d/player/a/k;->e:Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/unity3d/player/a/k;->f:J
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4

    iget v1, v0, Lcom/unity3d/player/a/k;->a:I

    if-eq v1, p2, :cond_5

    iget-object v0, p0, Lcom/unity3d/player/a/g;->b:Lcom/unity3d/player/a/f;

    invoke-interface {v0}, Lcom/unity3d/player/a/f;->b()V

    goto/16 :goto_0

    :cond_5
    iget v1, v0, Lcom/unity3d/player/a/k;->b:I

    iget v2, p0, Lcom/unity3d/player/a/g;->c:I

    if-eq v1, v2, :cond_6

    iget-object v0, p0, Lcom/unity3d/player/a/g;->b:Lcom/unity3d/player/a/f;

    invoke-interface {v0}, Lcom/unity3d/player/a/f;->b()V

    goto/16 :goto_0

    :cond_6
    iget-object v1, v0, Lcom/unity3d/player/a/k;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/unity3d/player/a/g;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v0, p0, Lcom/unity3d/player/a/g;->b:Lcom/unity3d/player/a/f;

    invoke-interface {v0}, Lcom/unity3d/player/a/f;->b()V

    goto/16 :goto_0

    :cond_7
    iget-object v1, v0, Lcom/unity3d/player/a/k;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/unity3d/player/a/g;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v0, p0, Lcom/unity3d/player/a/g;->b:Lcom/unity3d/player/a/f;

    invoke-interface {v0}, Lcom/unity3d/player/a/f;->b()V

    goto/16 :goto_0

    :cond_8
    iget-object v1, v0, Lcom/unity3d/player/a/k;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/unity3d/player/a/g;->b:Lcom/unity3d/player/a/f;

    invoke-interface {v0}, Lcom/unity3d/player/a/f;->b()V

    goto/16 :goto_0

    :cond_9
    sparse-switch p2, :sswitch_data_0

    iget-object v0, p0, Lcom/unity3d/player/a/g;->b:Lcom/unity3d/player/a/f;

    invoke-interface {v0}, Lcom/unity3d/player/a/f;->b()V

    goto/16 :goto_0

    :sswitch_0
    iget-object v1, p0, Lcom/unity3d/player/a/g;->f:Lcom/unity3d/player/a/b;

    invoke-direct {p0, v5, v0}, Lcom/unity3d/player/a/g;->a(ILcom/unity3d/player/a/k;)V

    goto/16 :goto_0

    :sswitch_1
    invoke-direct {p0, v6, v0}, Lcom/unity3d/player/a/g;->a(ILcom/unity3d/player/a/k;)V

    goto/16 :goto_0

    :sswitch_2
    invoke-direct {p0, v4, v0}, Lcom/unity3d/player/a/g;->a(ILcom/unity3d/player/a/k;)V

    goto/16 :goto_0

    :sswitch_3
    invoke-direct {p0, v4, v0}, Lcom/unity3d/player/a/g;->a(ILcom/unity3d/player/a/k;)V

    goto/16 :goto_0

    :sswitch_4
    invoke-direct {p0, v4, v0}, Lcom/unity3d/player/a/g;->a(ILcom/unity3d/player/a/k;)V

    goto/16 :goto_0

    :sswitch_5
    sget-object v0, Lcom/unity3d/player/a/f$a;->a:Lcom/unity3d/player/a/f$a;

    iget-object v0, p0, Lcom/unity3d/player/a/g;->b:Lcom/unity3d/player/a/f;

    goto/16 :goto_0

    :sswitch_6
    sget-object v0, Lcom/unity3d/player/a/f$a;->b:Lcom/unity3d/player/a/f$a;

    iget-object v0, p0, Lcom/unity3d/player/a/g;->b:Lcom/unity3d/player/a/f;

    goto/16 :goto_0

    :sswitch_7
    sget-object v0, Lcom/unity3d/player/a/f$a;->c:Lcom/unity3d/player/a/f$a;

    iget-object v0, p0, Lcom/unity3d/player/a/g;->b:Lcom/unity3d/player/a/f;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_7
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x101 -> :sswitch_2
        0x102 -> :sswitch_5
        0x103 -> :sswitch_6
    .end sparse-switch
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/unity3d/player/a/g;->c:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/a/g;->d:Ljava/lang/String;

    return-object v0
.end method
