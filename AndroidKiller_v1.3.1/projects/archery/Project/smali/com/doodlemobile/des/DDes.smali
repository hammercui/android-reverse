.class public Lcom/doodlemobile/des/DDes;
.super Ljava/lang/Object;
.source "DDes.java"


# static fields
.field public static key:Ljava/security/Key;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "1234567890ABCDEF"

    invoke-static {v0}, Lcom/doodlemobile/des/DDes;->getKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v0

    sput-object v0, Lcom/doodlemobile/des/DDes;->key:Ljava/security/Key;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDesCode([B)[B
    .locals 5
    .param p0, "byteD"    # [B

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 84
    .local v0, "byteFina":[B
    :try_start_0
    const-string v3, "DES/ECB/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 85
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    sget-object v4, Lcom/doodlemobile/des/DDes;->key:Ljava/security/Key;

    invoke-virtual {v1, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 86
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 90
    const/4 v1, 0x0

    .line 92
    :goto_0
    return-object v0

    .line 87
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v2

    .line 88
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    const/4 v1, 0x0

    .restart local v1    # "cipher":Ljavax/crypto/Cipher;
    goto :goto_0

    .line 89
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 90
    const/4 v1, 0x0

    .line 91
    .restart local v1    # "cipher":Ljavax/crypto/Cipher;
    throw v3
.end method

.method public static getDesString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "strMi"    # Ljava/lang/String;

    .prologue
    .line 47
    const/4 v1, 0x0

    .line 48
    .local v1, "byteMing":[B
    const/4 v0, 0x0

    .line 49
    .local v0, "byteMi":[B
    const-string v3, ""

    .line 52
    .local v3, "strMing":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/doodlemobile/des/DBase64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 53
    invoke-static {v0}, Lcom/doodlemobile/des/DDes;->getDesCode([B)[B

    move-result-object v1

    .line 54
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF8"

    invoke-direct {v4, v1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .end local v3    # "strMing":Ljava/lang/String;
    .local v4, "strMing":Ljava/lang/String;
    const/4 v1, 0x0

    .line 59
    const/4 v0, 0x0

    move-object v3, v4

    .line 61
    .end local v4    # "strMing":Ljava/lang/String;
    .restart local v3    # "strMing":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 55
    :catch_0
    move-exception v2

    .line 56
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    const/4 v1, 0x0

    .line 59
    const/4 v0, 0x0

    goto :goto_0

    .line 57
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 58
    const/4 v1, 0x0

    .line 59
    const/4 v0, 0x0

    .line 60
    throw v5
.end method

.method private static getEncCode([B)[B
    .locals 5
    .param p0, "byteS"    # [B

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 68
    .local v0, "byteFina":[B
    :try_start_0
    const-string v3, "DES/ECB/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 69
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x1

    sget-object v4, Lcom/doodlemobile/des/DDes;->key:Ljava/security/Key;

    invoke-virtual {v1, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 71
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 75
    const/4 v1, 0x0

    .line 77
    :goto_0
    return-object v0

    .line 72
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    :catch_0
    move-exception v2

    .line 73
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    const/4 v1, 0x0

    .restart local v1    # "cipher":Ljavax/crypto/Cipher;
    goto :goto_0

    .line 74
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 75
    const/4 v1, 0x0

    .line 76
    .restart local v1    # "cipher":Ljavax/crypto/Cipher;
    throw v3
.end method

.method public static getEncString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "strMing"    # Ljava/lang/String;

    .prologue
    .line 29
    const/4 v0, 0x0

    .line 30
    .local v0, "byteMi":[B
    const/4 v1, 0x0

    .line 31
    .local v1, "byteMing":[B
    const-string v3, ""

    .line 33
    .local v3, "strMi":Ljava/lang/String;
    :try_start_0
    const-string v5, "UTF8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 34
    invoke-static {v1}, Lcom/doodlemobile/des/DDes;->getEncCode([B)[B

    move-result-object v0

    .line 36
    new-instance v4, Ljava/lang/String;

    invoke-static {v0}, Lcom/doodlemobile/des/DBase64;->encode([B)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .end local v3    # "strMi":Ljava/lang/String;
    .local v4, "strMi":Ljava/lang/String;
    const/4 v1, 0x0

    .line 41
    const/4 v0, 0x0

    move-object v3, v4

    .line 43
    .end local v4    # "strMi":Ljava/lang/String;
    .restart local v3    # "strMi":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 37
    :catch_0
    move-exception v2

    .line 38
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    const/4 v1, 0x0

    .line 41
    const/4 v0, 0x0

    goto :goto_0

    .line 39
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 40
    const/4 v1, 0x0

    .line 41
    const/4 v0, 0x0

    .line 42
    throw v5
.end method

.method public static getKey(Ljava/lang/String;)Ljava/security/Key;
    .locals 7
    .param p0, "sKey"    # Ljava/lang/String;

    .prologue
    .line 11
    const/4 v4, 0x0

    .line 13
    .local v4, "key":Ljava/security/Key;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 14
    .local v1, "arrBTmp":[B
    const/16 v6, 0x8

    new-array v0, v6, [B

    .line 16
    .local v0, "arrB":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v1

    if-ge v3, v6, :cond_0

    array-length v6, v0

    if-lt v3, v6, :cond_1

    .line 21
    :cond_0
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "DES"

    invoke-direct {v5, v0, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .end local v4    # "key":Ljava/security/Key;
    .local v5, "key":Ljava/security/Key;
    move-object v4, v5

    .line 25
    .end local v0    # "arrB":[B
    .end local v1    # "arrBTmp":[B
    .end local v3    # "i":I
    .end local v5    # "key":Ljava/security/Key;
    .restart local v4    # "key":Ljava/security/Key;
    :goto_1
    return-object v4

    .line 17
    .restart local v0    # "arrB":[B
    .restart local v1    # "arrBTmp":[B
    .restart local v3    # "i":I
    :cond_1
    aget-byte v6, v1, v3

    aput-byte v6, v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 22
    .end local v0    # "arrB":[B
    .end local v1    # "arrBTmp":[B
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    .line 23
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
