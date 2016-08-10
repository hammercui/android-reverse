.class public Lcom/doodlemobile/des/DBase64;
.super Ljava/lang/Object;
.source "DBase64.java"


# static fields
.field private static final decodingTable:[B

.field private static final encodingTable:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x80

    .line 5
    const/16 v1, 0x40

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/doodlemobile/des/DBase64;->encodingTable:[B

    .line 21
    new-array v1, v3, [B

    sput-object v1, Lcom/doodlemobile/des/DBase64;->decodingTable:[B

    .line 22
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 25
    const/16 v0, 0x41

    :goto_1
    const/16 v1, 0x5a

    if-le v0, v1, :cond_1

    .line 28
    const/16 v0, 0x61

    :goto_2
    const/16 v1, 0x7a

    if-le v0, v1, :cond_2

    .line 31
    const/16 v0, 0x30

    :goto_3
    const/16 v1, 0x39

    if-le v0, v1, :cond_3

    .line 34
    sget-object v1, Lcom/doodlemobile/des/DBase64;->decodingTable:[B

    const/16 v2, 0x2b

    const/16 v3, 0x3e

    aput-byte v3, v1, v2

    .line 35
    sget-object v1, Lcom/doodlemobile/des/DBase64;->decodingTable:[B

    const/16 v2, 0x2f

    const/16 v3, 0x3f

    aput-byte v3, v1, v2

    .line 36
    return-void

    .line 23
    :cond_0
    sget-object v1, Lcom/doodlemobile/des/DBase64;->decodingTable:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 26
    :cond_1
    sget-object v1, Lcom/doodlemobile/des/DBase64;->decodingTable:[B

    add-int/lit8 v2, v0, -0x41

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 29
    :cond_2
    sget-object v1, Lcom/doodlemobile/des/DBase64;->decodingTable:[B

    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0x1a

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 32
    :cond_3
    sget-object v1, Lcom/doodlemobile/des/DBase64;->decodingTable:[B

    add-int/lit8 v2, v0, -0x30

    add-int/lit8 v2, v2, 0x34

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 5
    nop

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 11
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x3d

    .line 155
    invoke-static {p0}, Lcom/doodlemobile/des/DBase64;->discardNonBase64Chars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 156
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_0

    .line 157
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    div-int/lit8 v7, v7, 0x4

    add-int/lit8 v7, v7, -0x1

    mul-int/lit8 v7, v7, 0x3

    add-int/lit8 v7, v7, 0x1

    new-array v4, v7, [B

    .line 163
    .local v4, "bytes":[B
    :goto_0
    const/4 v5, 0x0

    .local v5, "i":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x4

    if-lt v5, v7, :cond_2

    .line 173
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x4

    if-ge v7, v8, :cond_3

    .line 195
    :goto_2
    return-object v4

    .line 158
    .end local v4    # "bytes":[B
    .end local v5    # "i":I
    .end local v6    # "j":I
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-lt v7, v8, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_1

    .line 159
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    div-int/lit8 v7, v7, 0x4

    add-int/lit8 v7, v7, -0x1

    mul-int/lit8 v7, v7, 0x3

    add-int/lit8 v7, v7, 0x2

    new-array v4, v7, [B

    .line 160
    .restart local v4    # "bytes":[B
    goto :goto_0

    .line 161
    .end local v4    # "bytes":[B
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    div-int/lit8 v7, v7, 0x4

    mul-int/lit8 v7, v7, 0x3

    new-array v4, v7, [B

    .restart local v4    # "bytes":[B
    goto :goto_0

    .line 164
    .restart local v5    # "i":I
    .restart local v6    # "j":I
    :cond_2
    sget-object v7, Lcom/doodlemobile/des/DBase64;->decodingTable:[B

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v0, v7, v8

    .line 165
    .local v0, "b1":B
    sget-object v7, Lcom/doodlemobile/des/DBase64;->decodingTable:[B

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v1, v7, v8

    .line 166
    .local v1, "b2":B
    sget-object v7, Lcom/doodlemobile/des/DBase64;->decodingTable:[B

    add-int/lit8 v8, v5, 0x2

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v2, v7, v8

    .line 167
    .local v2, "b3":B
    sget-object v7, Lcom/doodlemobile/des/DBase64;->decodingTable:[B

    add-int/lit8 v8, v5, 0x3

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v3, v7, v8

    .line 168
    .local v3, "b4":B
    shl-int/lit8 v7, v0, 0x2

    shr-int/lit8 v8, v1, 0x4

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    .line 169
    add-int/lit8 v7, v6, 0x1

    shl-int/lit8 v8, v1, 0x4

    shr-int/lit8 v9, v2, 0x2

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 170
    add-int/lit8 v7, v6, 0x2

    shl-int/lit8 v8, v2, 0x6

    or-int/2addr v8, v3

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 163
    add-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v6, 0x3

    goto/16 :goto_1

    .line 176
    .end local v0    # "b1":B
    .end local v1    # "b2":B
    .end local v2    # "b3":B
    .end local v3    # "b4":B
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_4

    .line 177
    sget-object v7, Lcom/doodlemobile/des/DBase64;->decodingTable:[B

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x4

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v0, v7, v8

    .line 178
    .restart local v0    # "b1":B
    sget-object v7, Lcom/doodlemobile/des/DBase64;->decodingTable:[B

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x3

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v1, v7, v8

    .line 179
    .restart local v1    # "b2":B
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    shl-int/lit8 v8, v0, 0x2

    shr-int/lit8 v9, v1, 0x4

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    goto/16 :goto_2

    .line 180
    .end local v0    # "b1":B
    .end local v1    # "b2":B
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_5

    .line 181
    sget-object v7, Lcom/doodlemobile/des/DBase64;->decodingTable:[B

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x4

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v0, v7, v8

    .line 182
    .restart local v0    # "b1":B
    sget-object v7, Lcom/doodlemobile/des/DBase64;->decodingTable:[B

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x3

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v1, v7, v8

    .line 183
    .restart local v1    # "b2":B
    sget-object v7, Lcom/doodlemobile/des/DBase64;->decodingTable:[B

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v2, v7, v8

    .line 184
    .restart local v2    # "b3":B
    array-length v7, v4

    add-int/lit8 v7, v7, -0x2

    shl-int/lit8 v8, v0, 0x2

    shr-int/lit8 v9, v1, 0x4

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 185
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    shl-int/lit8 v8, v1, 0x4

    shr-int/lit8 v9, v2, 0x2

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    goto/16 :goto_2

    .line 187
    .end local v0    # "b1":B
    .end local v1    # "b2":B
    .end local v2    # "b3":B
    :cond_5
    sget-object v7, Lcom/doodlemobile/des/DBase64;->decodingTable:[B

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x4

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v0, v7, v8

    .line 188
    .restart local v0    # "b1":B
    sget-object v7, Lcom/doodlemobile/des/DBase64;->decodingTable:[B

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x3

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v1, v7, v8

    .line 189
    .restart local v1    # "b2":B
    sget-object v7, Lcom/doodlemobile/des/DBase64;->decodingTable:[B

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v2, v7, v8

    .line 190
    .restart local v2    # "b3":B
    sget-object v7, Lcom/doodlemobile/des/DBase64;->decodingTable:[B

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v3, v7, v8

    .line 191
    .restart local v3    # "b4":B
    array-length v7, v4

    add-int/lit8 v7, v7, -0x3

    shl-int/lit8 v8, v0, 0x2

    shr-int/lit8 v9, v1, 0x4

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 192
    array-length v7, v4

    add-int/lit8 v7, v7, -0x2

    shl-int/lit8 v8, v1, 0x4

    shr-int/lit8 v9, v2, 0x2

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 193
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    shl-int/lit8 v8, v2, 0x6

    or-int/2addr v8, v3

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    goto/16 :goto_2
.end method

.method public static decode([B)[B
    .locals 11
    .param p0, "data"    # [B

    .prologue
    const/16 v10, 0x3d

    .line 105
    invoke-static {p0}, Lcom/doodlemobile/des/DBase64;->discardNonBase64Bytes([B)[B

    move-result-object p0

    .line 106
    array-length v7, p0

    const/4 v8, 0x2

    if-lt v7, v8, :cond_0

    array-length v7, p0

    add-int/lit8 v7, v7, -0x2

    aget-byte v7, p0, v7

    if-ne v7, v10, :cond_0

    .line 107
    array-length v7, p0

    div-int/lit8 v7, v7, 0x4

    add-int/lit8 v7, v7, -0x1

    mul-int/lit8 v7, v7, 0x3

    add-int/lit8 v7, v7, 0x1

    new-array v4, v7, [B

    .line 114
    .local v4, "bytes":[B
    :goto_0
    const/4 v5, 0x0

    .local v5, "i":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    array-length v7, p0

    add-int/lit8 v7, v7, -0x4

    if-lt v5, v7, :cond_2

    .line 124
    array-length v7, p0

    const/4 v8, 0x4

    if-ge v7, v8, :cond_3

    .line 146
    :goto_2
    return-object v4

    .line 108
    .end local v4    # "bytes":[B
    .end local v5    # "i":I
    .end local v6    # "j":I
    :cond_0
    array-length v7, p0

    const/4 v8, 0x1

    if-lt v7, v8, :cond_1

    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    aget-byte v7, p0, v7

    if-ne v7, v10, :cond_1

    .line 109
    array-length v7, p0

    div-int/lit8 v7, v7, 0x4

    add-int/lit8 v7, v7, -0x1

    mul-int/lit8 v7, v7, 0x3

    add-int/lit8 v7, v7, 0x2

    new-array v4, v7, [B

    .line 110
    .restart local v4    # "bytes":[B
    goto :goto_0

    .line 111
    .end local v4    # "bytes":[B
    :cond_1
    array-length v7, p0

    div-int/lit8 v7, v7, 0x4

    mul-int/lit8 v7, v7, 0x3

    new-array v4, v7, [B

    .restart local v4    # "bytes":[B
    goto :goto_0

    .line 115
    .restart local v5    # "i":I
    .restart local v6    # "j":I
    :cond_2
    sget-object v7, Lcom/doodlemobile/des/DBase64;->decodingTable:[B

    aget-byte v8, p0, v5

    aget-byte v0, v7, v8

    .line 116
    .local v0, "b1":B
    sget-object v7, Lcom/doodlemobile/des/DBase64;->decodingTable:[B

    add-int/lit8 v8, v5, 0x1

    aget-byte v8, p0, v8

    aget-byte v1, v7, v8

    .line 117
    .local v1, "b2":B
    sget-object v7, Lcom/doodlemobile/des/DBase64;->decodingTable:[B

    add-int/lit8 v8, v5, 0x2

    aget-byte v8, p0, v8

    aget-byte v2, v7, v8

    .line 118
    .local v2, "b3":B
    sget-object v7, Lcom/doodlemobile/des/DBase64;->decodingTable:[B

    add-int/lit8 v8, v5, 0x3

    aget-byte v8, p0, v8

    aget-byte v3, v7, v8

    .line 119
    .local v3, "b4":B
    shl-int/lit8 v7, v0, 0x2

    shr-int/lit8 v8, v1, 0x4

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    .line 120
    add-int/lit8 v7, v6, 0x1

    shl-int/lit8 v8, v1, 0x4

    shr-int/lit8 v9, v2, 0x2

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 121
    add-int/lit8 v7, v6, 0x2

    shl-int/lit8 v8, v2, 0x6

    or-int/2addr v8, v3

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 114
    add-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v6, 0x3

    goto :goto_1

    .line 127
    .end local v0    # "b1":B
    .end local v1    # "b2":B
    .end local v2    # "b3":B
    .end local v3    # "b4":B
    :cond_3
    array-length v7, p0

    add-int/lit8 v7, v7, -0x2

    aget-byte v7, p0, v7

    if-ne v7, v10, :cond_4

    .line 128
    sget-object v7, Lcom/doodlemobile/des/DBase64;->decodingTable:[B

    array-length v8, p0

    add-int/lit8 v8, v8, -0x4

    aget-byte v8, p0, v8

    aget-byte v0, v7, v8

    .line 129
    .restart local v0    # "b1":B
    sget-object v7, Lcom/doodlemobile/des/DBase64;->decodingTable:[B

    array-length v8, p0

    add-int/lit8 v8, v8, -0x3

    aget-byte v8, p0, v8

    aget-byte v1, v7, v8

    .line 130
    .restart local v1    # "b2":B
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    shl-int/lit8 v8, v0, 0x2

    shr-int/lit8 v9, v1, 0x4

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    goto/16 :goto_2

    .line 131
    .end local v0    # "b1":B
    .end local v1    # "b2":B
    :cond_4
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    aget-byte v7, p0, v7

    if-ne v7, v10, :cond_5

    .line 132
    sget-object v7, Lcom/doodlemobile/des/DBase64;->decodingTable:[B

    array-length v8, p0

    add-int/lit8 v8, v8, -0x4

    aget-byte v8, p0, v8

    aget-byte v0, v7, v8

    .line 133
    .restart local v0    # "b1":B
    sget-object v7, Lcom/doodlemobile/des/DBase64;->decodingTable:[B

    array-length v8, p0

    add-int/lit8 v8, v8, -0x3

    aget-byte v8, p0, v8

    aget-byte v1, v7, v8

    .line 134
    .restart local v1    # "b2":B
    sget-object v7, Lcom/doodlemobile/des/DBase64;->decodingTable:[B

    array-length v8, p0

    add-int/lit8 v8, v8, -0x2

    aget-byte v8, p0, v8

    aget-byte v2, v7, v8

    .line 135
    .restart local v2    # "b3":B
    array-length v7, v4

    add-int/lit8 v7, v7, -0x2

    shl-int/lit8 v8, v0, 0x2

    shr-int/lit8 v9, v1, 0x4

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 136
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    shl-int/lit8 v8, v1, 0x4

    shr-int/lit8 v9, v2, 0x2

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    goto/16 :goto_2

    .line 138
    .end local v0    # "b1":B
    .end local v1    # "b2":B
    .end local v2    # "b3":B
    :cond_5
    sget-object v7, Lcom/doodlemobile/des/DBase64;->decodingTable:[B

    array-length v8, p0

    add-int/lit8 v8, v8, -0x4

    aget-byte v8, p0, v8

    aget-byte v0, v7, v8

    .line 139
    .restart local v0    # "b1":B
    sget-object v7, Lcom/doodlemobile/des/DBase64;->decodingTable:[B

    array-length v8, p0

    add-int/lit8 v8, v8, -0x3

    aget-byte v8, p0, v8

    aget-byte v1, v7, v8

    .line 140
    .restart local v1    # "b2":B
    sget-object v7, Lcom/doodlemobile/des/DBase64;->decodingTable:[B

    array-length v8, p0

    add-int/lit8 v8, v8, -0x2

    aget-byte v8, p0, v8

    aget-byte v2, v7, v8

    .line 141
    .restart local v2    # "b3":B
    sget-object v7, Lcom/doodlemobile/des/DBase64;->decodingTable:[B

    array-length v8, p0

    add-int/lit8 v8, v8, -0x1

    aget-byte v8, p0, v8

    aget-byte v3, v7, v8

    .line 142
    .restart local v3    # "b4":B
    array-length v7, v4

    add-int/lit8 v7, v7, -0x3

    shl-int/lit8 v8, v0, 0x2

    shr-int/lit8 v9, v1, 0x4

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 143
    array-length v7, v4

    add-int/lit8 v7, v7, -0x2

    shl-int/lit8 v8, v1, 0x4

    shr-int/lit8 v9, v2, 0x2

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 144
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    shl-int/lit8 v8, v2, 0x6

    or-int/2addr v8, v3

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    goto/16 :goto_2
.end method

.method private static discardNonBase64Bytes([B)[B
    .locals 7
    .param p0, "data"    # [B

    .prologue
    const/4 v6, 0x0

    .line 199
    array-length v5, p0

    new-array v4, v5, [B

    .line 200
    .local v4, "temp":[B
    const/4 v0, 0x0

    .line 201
    .local v0, "bytesCopied":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, p0

    if-lt v2, v5, :cond_0

    .line 206
    new-array v3, v0, [B

    .line 207
    .local v3, "newData":[B
    invoke-static {v4, v6, v3, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    return-object v3

    .line 202
    .end local v3    # "newData":[B
    :cond_0
    aget-byte v5, p0, v2

    invoke-static {v5}, Lcom/doodlemobile/des/DBase64;->isValidBase64Byte(B)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 203
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "bytesCopied":I
    .local v1, "bytesCopied":I
    aget-byte v5, p0, v2

    aput-byte v5, v4, v0

    move v0, v1

    .line 201
    .end local v1    # "bytesCopied":I
    .restart local v0    # "bytesCopied":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static discardNonBase64Chars(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 212
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 213
    .local v2, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 214
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 219
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 215
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    invoke-static {v3}, Lcom/doodlemobile/des/DBase64;->isValidBase64Byte(B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 216
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 214
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static encode([B)[B
    .locals 18
    .param p0, "data"    # [B

    .prologue
    .line 40
    move-object/from16 v0, p0

    array-length v14, v0

    rem-int/lit8 v13, v14, 0x3

    .line 41
    .local v13, "modulus":I
    if-nez v13, :cond_1

    .line 42
    move-object/from16 v0, p0

    array-length v14, v0

    mul-int/lit8 v14, v14, 0x4

    div-int/lit8 v14, v14, 0x3

    new-array v7, v14, [B

    .line 46
    .local v7, "bytes":[B
    :goto_0
    move-object/from16 v0, p0

    array-length v14, v0

    sub-int v10, v14, v13

    .line 50
    .local v10, "dataLength":I
    const/4 v11, 0x0

    .local v11, "i":I
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_1
    if-lt v11, v10, :cond_2

    .line 64
    packed-switch v13, :pswitch_data_0

    .line 96
    :cond_0
    :goto_2
    :pswitch_0
    return-object v7

    .line 44
    .end local v7    # "bytes":[B
    .end local v10    # "dataLength":I
    .end local v11    # "i":I
    .end local v12    # "j":I
    :cond_1
    move-object/from16 v0, p0

    array-length v14, v0

    div-int/lit8 v14, v14, 0x3

    add-int/lit8 v14, v14, 0x1

    mul-int/lit8 v14, v14, 0x4

    new-array v7, v14, [B

    .restart local v7    # "bytes":[B
    goto :goto_0

    .line 51
    .restart local v10    # "dataLength":I
    .restart local v11    # "i":I
    .restart local v12    # "j":I
    :cond_2
    aget-byte v14, p0, v11

    and-int/lit16 v1, v14, 0xff

    .line 52
    .local v1, "a1":I
    add-int/lit8 v14, v11, 0x1

    aget-byte v14, p0, v14

    and-int/lit16 v2, v14, 0xff

    .line 53
    .local v2, "a2":I
    add-int/lit8 v14, v11, 0x2

    aget-byte v14, p0, v14

    and-int/lit16 v3, v14, 0xff

    .line 54
    .local v3, "a3":I
    sget-object v14, Lcom/doodlemobile/des/DBase64;->encodingTable:[B

    ushr-int/lit8 v15, v1, 0x2

    and-int/lit8 v15, v15, 0x3f

    aget-byte v14, v14, v15

    aput-byte v14, v7, v12

    .line 55
    add-int/lit8 v14, v12, 0x1

    sget-object v15, Lcom/doodlemobile/des/DBase64;->encodingTable:[B

    shl-int/lit8 v16, v1, 0x4

    ushr-int/lit8 v17, v2, 0x4

    or-int v16, v16, v17

    and-int/lit8 v16, v16, 0x3f

    aget-byte v15, v15, v16

    aput-byte v15, v7, v14

    .line 56
    add-int/lit8 v14, v12, 0x2

    sget-object v15, Lcom/doodlemobile/des/DBase64;->encodingTable:[B

    shl-int/lit8 v16, v2, 0x2

    ushr-int/lit8 v17, v3, 0x6

    or-int v16, v16, v17

    and-int/lit8 v16, v16, 0x3f

    aget-byte v15, v15, v16

    aput-byte v15, v7, v14

    .line 57
    add-int/lit8 v14, v12, 0x3

    sget-object v15, Lcom/doodlemobile/des/DBase64;->encodingTable:[B

    and-int/lit8 v16, v3, 0x3f

    aget-byte v15, v15, v16

    aput-byte v15, v7, v14

    .line 50
    add-int/lit8 v11, v11, 0x3

    add-int/lit8 v12, v12, 0x4

    goto :goto_1

    .line 68
    .end local v1    # "a1":I
    .end local v2    # "a2":I
    .end local v3    # "a3":I
    :pswitch_1
    move-object/from16 v0, p0

    array-length v14, v0

    add-int/lit8 v14, v14, -0x1

    aget-byte v14, p0, v14

    and-int/lit16 v8, v14, 0xff

    .line 69
    .local v8, "d1":I
    ushr-int/lit8 v14, v8, 0x2

    and-int/lit8 v4, v14, 0x3f

    .line 70
    .local v4, "b1":I
    shl-int/lit8 v14, v8, 0x4

    and-int/lit8 v5, v14, 0x3f

    .line 72
    .local v5, "b2":I
    array-length v14, v7

    const/4 v15, 0x4

    if-lt v14, v15, :cond_0

    .line 75
    array-length v14, v7

    add-int/lit8 v14, v14, -0x4

    sget-object v15, Lcom/doodlemobile/des/DBase64;->encodingTable:[B

    aget-byte v15, v15, v4

    aput-byte v15, v7, v14

    .line 76
    array-length v14, v7

    add-int/lit8 v14, v14, -0x3

    sget-object v15, Lcom/doodlemobile/des/DBase64;->encodingTable:[B

    aget-byte v15, v15, v5

    aput-byte v15, v7, v14

    .line 77
    array-length v14, v7

    add-int/lit8 v14, v14, -0x2

    const/16 v15, 0x3d

    aput-byte v15, v7, v14

    .line 78
    array-length v14, v7

    add-int/lit8 v14, v14, -0x1

    const/16 v15, 0x3d

    aput-byte v15, v7, v14

    goto/16 :goto_2

    .line 81
    .end local v4    # "b1":I
    .end local v5    # "b2":I
    .end local v8    # "d1":I
    :pswitch_2
    move-object/from16 v0, p0

    array-length v14, v0

    add-int/lit8 v14, v14, -0x2

    aget-byte v14, p0, v14

    and-int/lit16 v8, v14, 0xff

    .line 82
    .restart local v8    # "d1":I
    move-object/from16 v0, p0

    array-length v14, v0

    add-int/lit8 v14, v14, -0x1

    aget-byte v14, p0, v14

    and-int/lit16 v9, v14, 0xff

    .line 83
    .local v9, "d2":I
    ushr-int/lit8 v14, v8, 0x2

    and-int/lit8 v4, v14, 0x3f

    .line 84
    .restart local v4    # "b1":I
    shl-int/lit8 v14, v8, 0x4

    ushr-int/lit8 v15, v9, 0x4

    or-int/2addr v14, v15

    and-int/lit8 v5, v14, 0x3f

    .line 85
    .restart local v5    # "b2":I
    shl-int/lit8 v14, v9, 0x2

    and-int/lit8 v6, v14, 0x3f

    .line 87
    .local v6, "b3":I
    array-length v14, v7

    const/4 v15, 0x4

    if-lt v14, v15, :cond_0

    .line 90
    array-length v14, v7

    add-int/lit8 v14, v14, -0x4

    sget-object v15, Lcom/doodlemobile/des/DBase64;->encodingTable:[B

    aget-byte v15, v15, v4

    aput-byte v15, v7, v14

    .line 91
    array-length v14, v7

    add-int/lit8 v14, v14, -0x3

    sget-object v15, Lcom/doodlemobile/des/DBase64;->encodingTable:[B

    aget-byte v15, v15, v5

    aput-byte v15, v7, v14

    .line 92
    array-length v14, v7

    add-int/lit8 v14, v14, -0x2

    sget-object v15, Lcom/doodlemobile/des/DBase64;->encodingTable:[B

    aget-byte v15, v15, v6

    aput-byte v15, v7, v14

    .line 93
    array-length v14, v7

    add-int/lit8 v14, v14, -0x1

    const/16 v15, 0x3d

    aput-byte v15, v7, v14

    goto/16 :goto_2

    .line 64
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static isValidBase64Byte(B)Z
    .locals 4
    .param p0, "b"    # B

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 223
    const/16 v2, 0x3d

    if-ne p0, v2, :cond_1

    .line 230
    :cond_0
    :goto_0
    return v0

    .line 225
    :cond_1
    if-ltz p0, :cond_2

    const/16 v2, 0x80

    if-lt p0, v2, :cond_3

    :cond_2
    move v0, v1

    .line 226
    goto :goto_0

    .line 227
    :cond_3
    sget-object v2, Lcom/doodlemobile/des/DBase64;->decodingTable:[B

    aget-byte v2, v2, p0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 228
    goto :goto_0
.end method
