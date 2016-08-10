.class public final Lw/t;
.super Ljava/lang/Object;


# static fields
.field private static g:[B


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/io/InputStream;

.field public e:Ljava/lang/String;

.field f:[B

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lw/t;->g:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x4dt
        0x4at
    .end array-data
.end method

.method private constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lw/t;->h:I

    iput v1, p0, Lw/t;->a:I

    iput v1, p0, Lw/t;->i:I

    const-string v0, ""

    iput-object v0, p0, Lw/t;->b:Ljava/lang/String;

    iput v1, p0, Lw/t;->j:I

    const-string v0, ""

    iput-object v0, p0, Lw/t;->c:Ljava/lang/String;

    iput-object v2, p0, Lw/t;->d:Ljava/io/InputStream;

    const-string v0, ""

    iput-object v0, p0, Lw/t;->e:Ljava/lang/String;

    iput-object v2, p0, Lw/t;->f:[B

    iput p2, p0, Lw/t;->a:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lw/t;->i:I

    iput-object p3, p0, Lw/t;->b:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lw/t;->j:I

    iput-object p4, p0, Lw/t;->c:Ljava/lang/String;

    iput-object p5, p0, Lw/t;->d:Ljava/io/InputStream;

    iput-object p6, p0, Lw/t;->e:Ljava/lang/String;

    iget v0, p0, Lw/t;->i:I

    iget v1, p0, Lw/t;->j:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x16

    iput v0, p0, Lw/t;->h:I

    iget v0, p0, Lw/t;->h:I

    rem-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    iget v0, p0, Lw/t;->h:I

    iget v1, p0, Lw/t;->h:I

    rem-int/lit8 v1, v1, 0x20

    rsub-int/lit8 v1, v1, 0x20

    add-int/2addr v0, v1

    iput v0, p0, Lw/t;->h:I

    :cond_0
    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/lang/String;)Lw/t;
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    :try_start_0
    new-instance v5, Ljava/io/BufferedInputStream;

    const/16 v1, 0x4000

    invoke-direct {v5, p0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    const/16 v1, 0x1000

    invoke-virtual {v5, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    const/16 v1, 0x200

    new-array v3, v1, [B

    invoke-static {v5, v3}, Lw/d;->a(Ljava/io/InputStream;[B)I

    const/4 v1, 0x0

    aget-byte v1, v3, v1

    sget-object v2, Lw/t;->g:[B

    const/4 v4, 0x0

    aget-byte v2, v2, v4

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    aget-byte v1, v3, v1

    sget-object v2, Lw/t;->g:[B

    const/4 v4, 0x1

    aget-byte v2, v2, v4

    if-ne v1, v2, :cond_1

    const/4 v0, 0x2

    const/4 v1, 0x4

    invoke-static {v3, v0, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    const/4 v0, 0x6

    const/4 v1, 0x4

    invoke-static {v3, v0, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    const/16 v0, 0xa

    const/4 v2, 0x4

    invoke-static {v3, v0, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    const/16 v0, 0xe

    const/4 v4, 0x4

    invoke-static {v3, v0, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    new-instance v4, Ljava/lang/String;

    const/16 v6, 0x12

    invoke-direct {v4, v3, v6, v0}, Ljava/lang/String;-><init>([BII)V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v0, v0, 0x12

    const/4 v6, 0x4

    invoke-static {v3, v0, v6}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    add-int/lit8 v0, v0, 0x4

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3, v0, v6}, Ljava/lang/String;-><init>([BII)V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/2addr v0, v6

    rem-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_0

    rem-int/lit8 v6, v0, 0x20

    rsub-int/lit8 v6, v6, 0x20

    add-int/2addr v0, v6

    :cond_0
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->reset()V

    int-to-long v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/io/BufferedInputStream;->skip(J)J

    new-instance v0, Lw/t;

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lw/t;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lw/r;

    const/16 v2, 0x2710

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lw/r;-><init>(ILjava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lw/r;

    const/16 v2, 0x2711

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lw/r;-><init>(ILjava/lang/String;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lw/r;

    const/16 v2, 0x2712

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lw/r;-><init>(ILjava/lang/String;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Lw/r;

    const/16 v2, 0x2713

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lw/r;-><init>(ILjava/lang/String;)V

    throw v1

    :catch_4
    move-exception v0

    new-instance v1, Lw/r;

    const/16 v2, 0x2715

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lw/r;-><init>(ILjava/lang/String;)V

    throw v1
.end method
