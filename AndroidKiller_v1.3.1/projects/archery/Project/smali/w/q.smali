.class public final Lw/q;
.super Ljava/lang/Object;

# interfaces
.implements Lw/u;


# static fields
.field private static final c:[B


# instance fields
.field private a:Lw/t;

.field private b:Ljavax/crypto/Cipher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lw/q;->c:[B

    return-void

    :array_0
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
    .end array-data
.end method

.method public constructor <init>(Lw/t;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lw/q;->a:Lw/t;

    iput-object v0, p0, Lw/q;->b:Ljavax/crypto/Cipher;

    iput-object p1, p0, Lw/q;->a:Lw/t;

    return-void
.end method

.method private a(ILjava/lang/String;)Ljavax/crypto/Cipher;
    .locals 5

    iget-object v0, p0, Lw/q;->b:Ljavax/crypto/Cipher;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    const-string v1, "SHA1PRNG"

    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->setSeed([B)V

    const/16 v2, 0x80

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v0, "AES/CTR/NOPADDING"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lw/q;->b:Ljavax/crypto/Cipher;

    iget-object v0, p0, Lw/q;->b:Ljavax/crypto/Cipher;

    const/4 v2, 0x2

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v4, Lw/q;->c:[B

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v2, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v0, p0, Lw/q;->b:Ljavax/crypto/Cipher;

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lw/r;

    const/16 v2, 0x27da

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lw/r;-><init>(ILjava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final a()Z
    .locals 9

    const/16 v8, 0x27dc

    const/4 v0, 0x0

    iget-object v1, p0, Lw/q;->a:Lw/t;

    iget-object v3, v1, Lw/t;->d:Ljava/io/InputStream;

    const/4 v1, 0x0

    iget-object v2, p0, Lw/q;->a:Lw/t;

    if-eqz v2, :cond_4

    :try_start_0
    new-instance v4, Ljava/io/File;

    iget-object v2, p0, Lw/q;->a:Lw/t;

    iget-object v2, v2, Lw/t;->e:Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "====AES Dec Key = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lw/q;->a:Lw/t;

    iget-object v6, v6, Lw/t;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lw/r; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    :try_start_1
    iget-object v5, p0, Lw/q;->a:Lw/t;

    iget-object v5, v5, Lw/t;->b:Ljava/lang/String;

    invoke-direct {p0, v1, v5}, Lw/q;->a(ILjava/lang/String;)Ljavax/crypto/Cipher;

    new-instance v1, Ljavax/crypto/CipherOutputStream;

    iget-object v5, p0, Lw/q;->b:Ljavax/crypto/Cipher;

    invoke-direct {v1, v2, v5}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    const/16 v5, 0x2000

    new-array v5, v5, [B

    :goto_0
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-ltz v6, :cond_2

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v7, v6}, Ljavax/crypto/CipherOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lw/r; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_2
    new-instance v2, Lw/r;

    const/16 v3, 0x27d8

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lw/r;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    :cond_1
    throw v0

    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljavax/crypto/CipherOutputStream;->close()V

    invoke-virtual {v4}, Ljava/io/File;->length()J
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Lw/r; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_4
    return v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Lw/r;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v8, v0}, Lw/r;-><init>(ILjava/lang/String;)V

    throw v1

    :catch_2
    move-exception v0

    :goto_3
    :try_start_6
    new-instance v2, Lw/r;

    const/16 v3, 0x27d9

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lw/r;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_3
    move-exception v0

    :goto_4
    new-instance v2, Lw/r;

    const/16 v3, 0x27db

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lw/r;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_4
    move-exception v0

    :goto_5
    new-instance v2, Lw/r;

    invoke-virtual {v0}, Lw/r;->a()I

    move-result v3

    invoke-virtual {v0}, Lw/r;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lw/r;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_5
    move-exception v0

    :goto_6
    new-instance v2, Lw/r;

    const/16 v3, 0x27dd

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lw/r;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Lw/r;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v8, v0}, Lw/r;-><init>(ILjava/lang/String;)V

    throw v1

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_7
    move-exception v0

    move-object v1, v2

    goto :goto_6

    :catch_8
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :catch_9
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catch_a
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_b
    move-exception v0

    goto/16 :goto_1
.end method
