.class public final Lw/w;
.super Ljava/lang/Object;

# interfaces
.implements Lw/u;


# instance fields
.field private a:Lw/t;


# direct methods
.method public constructor <init>(Lw/t;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lw/w;->a:Lw/t;

    iput-object p1, p0, Lw/w;->a:Lw/t;

    return-void
.end method

.method private static a([BI[B)[B
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-byte v1, p0, v0

    array-length v2, p2

    rem-int v2, v0, v2

    aget-byte v2, p2, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final a()Z
    .locals 9

    const/16 v8, 0x2776

    const/4 v0, 0x0

    iget-object v1, p0, Lw/w;->a:Lw/t;

    iget-object v4, v1, Lw/t;->d:Ljava/io/InputStream;

    const/4 v2, 0x0

    const/16 v1, 0x2000

    new-array v3, v1, [B

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lw/w;->a:Lw/t;

    iget-object v5, v5, Lw/t;->e:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lw/r; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lw/w;->a:Lw/t;

    iget-object v2, v2, Lw/t;->b:Ljava/lang/String;

    const-string v5, "utf-8"

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    iget-object v2, p0, Lw/w;->a:Lw/t;

    iget-object v2, v2, Lw/t;->f:[B

    if-eqz v2, :cond_0

    iget-object v2, p0, Lw/w;->a:Lw/t;

    iget-object v6, p0, Lw/w;->a:Lw/t;

    iget-object v6, v6, Lw/t;->f:[B

    iget-object v7, p0, Lw/w;->a:Lw/t;

    iget-object v7, v7, Lw/t;->f:[B

    array-length v7, v7

    invoke-static {v6, v7, v5}, Lw/w;->a([BI[B)[B

    move-result-object v6

    iput-object v6, v2, Lw/t;->f:[B

    iget-object v2, p0, Lw/w;->a:Lw/t;

    iget-object v2, v2, Lw/t;->f:[B

    const/4 v6, 0x0

    iget-object v7, p0, Lw/w;->a:Lw/t;

    iget-object v7, v7, Lw/t;->f:[B

    array-length v7, v7

    invoke-virtual {v1, v2, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-static {v4, v2}, Lw/d;->a(Ljava/io/InputStream;[B)I

    move-result v3

    if-lez v3, :cond_1

    invoke-static {v2, v3, v5}, Lw/w;->a([BI[B)[B

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lw/r; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    :try_start_2
    new-instance v2, Lw/r;

    const/16 v3, 0x2774

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lw/r;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    throw v0

    :cond_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    iget-object v1, p0, Lw/w;->a:Lw/t;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lw/w;->a:Lw/t;

    iget-object v0, v0, Lw/t;->c:Ljava/lang/String;

    iget-object v1, p0, Lw/w;->a:Lw/t;

    iget-object v1, v1, Lw/t;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lw/v;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :cond_2
    return v0

    :catch_1
    move-exception v0

    new-instance v1, Lw/r;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v8, v0}, Lw/r;-><init>(ILjava/lang/String;)V

    throw v1

    :catch_2
    move-exception v0

    move-object v1, v2

    :goto_3
    :try_start_5
    new-instance v2, Lw/r;

    const/16 v3, 0x2775

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lw/r;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_3
    move-exception v0

    move-object v1, v2

    :goto_4
    new-instance v2, Lw/r;

    invoke-virtual {v0}, Lw/r;->a()I

    move-result v3

    invoke-virtual {v0}, Lw/r;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lw/r;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_4
    move-exception v0

    move-object v1, v2

    :goto_5
    new-instance v2, Lw/r;

    const/16 v3, 0x2778

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lw/r;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_5
    move-exception v0

    new-instance v1, Lw/r;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v8, v0}, Lw/r;-><init>(ILjava/lang/String;)V

    throw v1

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_6
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v0

    goto :goto_4

    :catch_8
    move-exception v0

    goto :goto_3

    :catch_9
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method
