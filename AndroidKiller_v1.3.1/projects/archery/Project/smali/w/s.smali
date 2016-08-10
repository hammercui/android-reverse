.class public final Lw/s;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lw/s;->a:Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lw/s;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 4

    const/16 v3, 0x2714

    const/4 v0, 0x0

    :try_start_0
    const-string v1, ""

    sput-object v1, Lw/s;->a:Ljava/lang/String;

    invoke-static {p0, p1}, Lw/t;->a(Ljava/io/InputStream;Ljava/lang/String;)Lw/t;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    iget v2, v1, Lw/t;->a:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-interface {v0}, Lw/u;->a()Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, v1, Lw/t;->c:Ljava/lang/String;

    sput-object v1, Lw/s;->a:Ljava/lang/String;
    :try_end_0
    .catch Lw/r; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    return v0

    :pswitch_0
    :try_start_2
    new-instance v0, Lw/w;

    invoke-direct {v0, v1}, Lw/w;-><init>(Lw/t;)V
    :try_end_2
    .catch Lw/r; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v1, Lw/r;

    invoke-virtual {v0}, Lw/r;->a()I

    move-result v2

    invoke-virtual {v0}, Lw/r;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lw/r;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    throw v0

    :pswitch_1
    :try_start_5
    new-instance v0, Lw/q;

    invoke-direct {v0, v1}, Lw/q;-><init>(Lw/t;)V
    :try_end_5
    .catch Lw/r; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Lw/r;

    const/16 v2, 0x2777

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lw/r;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Lw/r;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lw/r;-><init>(ILjava/lang/String;)V

    throw v1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Lw/r;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lw/r;-><init>(ILjava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
