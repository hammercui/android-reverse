.class public Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;
.super Ljava/lang/Object;
.source "StatWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final m_getAvailableBlocks:Ljava/lang/reflect/Method;

.field private static final m_getAvailableBlocksLong:Ljava/lang/reflect/Method;

.field private static final m_getBlockSize:Ljava/lang/reflect/Method;

.field private static final m_getBlockSizeLong:Ljava/lang/reflect/Method;


# instance fields
.field private m_stat:Landroid/os/StatFs;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 18
    const-class v1, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->TAG:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    .line 27
    .local v0, "temp":Ljava/lang/reflect/Method;
    :try_start_0
    const-class v1, Landroid/os/StatFs;

    const-string v2, "getBlockSize"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 33
    :goto_0
    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->m_getBlockSize:Ljava/lang/reflect/Method;

    .line 35
    const/4 v0, 0x0

    .line 38
    :try_start_1
    const-class v1, Landroid/os/StatFs;

    const-string v2, "getBlockSizeLong"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 44
    :goto_1
    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->m_getBlockSizeLong:Ljava/lang/reflect/Method;

    .line 46
    const/4 v0, 0x0

    .line 49
    :try_start_2
    const-class v1, Landroid/os/StatFs;

    const-string v2, "getAvailableBlocks"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 55
    :goto_2
    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->m_getAvailableBlocks:Ljava/lang/reflect/Method;

    .line 57
    const/4 v0, 0x0

    .line 60
    :try_start_3
    const-class v1, Landroid/os/StatFs;

    const-string v2, "getAvailableBlocksLong"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    .line 66
    :goto_3
    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->m_getAvailableBlocksLong:Ljava/lang/reflect/Method;

    .line 67
    return-void

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->m_stat:Landroid/os/StatFs;

    .line 75
    return-void
.end method


# virtual methods
.method public getAvailableBlocks()J
    .locals 9

    .prologue
    .line 148
    const-wide/16 v2, 0x0

    .line 149
    .local v2, "numBlocks":J
    sget-object v6, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->m_getAvailableBlocksLong:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_0

    .line 151
    const/4 v1, 0x0

    .line 154
    .local v1, "invokationFailed":Z
    :try_start_0
    sget-object v6, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->m_getAvailableBlocksLong:Ljava/lang/reflect/Method;

    iget-object v7, p0, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->m_stat:Landroid/os/StatFs;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-wide v2

    .line 177
    :goto_0
    if-nez v1, :cond_0

    move-wide v4, v2

    .line 212
    .end local v1    # "invokationFailed":Z
    .end local v2    # "numBlocks":J
    .local v4, "numBlocks":J
    :goto_1
    return-wide v4

    .line 156
    .end local v4    # "numBlocks":J
    .restart local v1    # "invokationFailed":Z
    .restart local v2    # "numBlocks":J
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/ClassCastException;
    sget-object v6, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->TAG:Ljava/lang/String;

    const-string v7, "getAvailableBlocksLong invoke failed: "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    const/4 v1, 0x1

    .line 175
    goto :goto_0

    .line 161
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v6, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->TAG:Ljava/lang/String;

    const-string v7, "getAvailableBlocksLong invoke failed: "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    const/4 v1, 0x1

    .line 175
    goto :goto_0

    .line 166
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v6, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->TAG:Ljava/lang/String;

    const-string v7, "getAvailableBlocksLong invoke failed: "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    const/4 v1, 0x1

    .line 175
    goto :goto_0

    .line 171
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v6, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->TAG:Ljava/lang/String;

    const-string v7, "getAvailableBlocksLong invoke failed: "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    const/4 v1, 0x1

    goto :goto_0

    .line 181
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "invokationFailed":Z
    :cond_0
    sget-object v6, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->m_getAvailableBlocks:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_1

    .line 183
    const/4 v1, 0x0

    .line 186
    .restart local v1    # "invokationFailed":Z
    :try_start_1
    sget-object v6, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->m_getAvailableBlocks:Ljava/lang/reflect/Method;

    iget-object v7, p0, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->m_stat:Landroid/os/StatFs;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_7

    move-result v6

    int-to-long v2, v6

    .line 208
    :goto_2
    if-nez v1, :cond_1

    move-wide v4, v2

    .line 209
    .end local v2    # "numBlocks":J
    .restart local v4    # "numBlocks":J
    goto :goto_1

    .line 188
    .end local v4    # "numBlocks":J
    .restart local v2    # "numBlocks":J
    :catch_4
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/ClassCastException;
    sget-object v6, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->TAG:Ljava/lang/String;

    const-string v7, "getAvailableBlocks invoke failed: "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    const/4 v1, 0x1

    .line 207
    goto :goto_2

    .line 193
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :catch_5
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v6, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->TAG:Ljava/lang/String;

    const-string v7, "getAvailableBlocks invoke failed: "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    const/4 v1, 0x1

    .line 207
    goto :goto_2

    .line 198
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_6
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v6, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->TAG:Ljava/lang/String;

    const-string v7, "getAvailableBlocks invoke failed: "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    const/4 v1, 0x1

    .line 207
    goto :goto_2

    .line 203
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_7
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v6, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->TAG:Ljava/lang/String;

    const-string v7, "getAvailableBlocks invoke failed: "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    const/4 v1, 0x1

    goto :goto_2

    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v1    # "invokationFailed":Z
    :cond_1
    move-wide v4, v2

    .line 212
    .end local v2    # "numBlocks":J
    .restart local v4    # "numBlocks":J
    goto :goto_1
.end method

.method public getBlockSize()J
    .locals 9

    .prologue
    .line 79
    const-wide/16 v0, 0x0

    .line 80
    .local v0, "blockSize":J
    sget-object v6, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->m_getBlockSizeLong:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_0

    .line 82
    const/4 v5, 0x0

    .line 85
    .local v5, "invokationFailed":Z
    :try_start_0
    sget-object v6, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->m_getBlockSizeLong:Ljava/lang/reflect/Method;

    iget-object v7, p0, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->m_stat:Landroid/os/StatFs;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-wide v0

    .line 108
    :goto_0
    if-nez v5, :cond_0

    move-wide v2, v0

    .line 143
    .end local v0    # "blockSize":J
    .end local v5    # "invokationFailed":Z
    .local v2, "blockSize":J
    :goto_1
    return-wide v2

    .line 87
    .end local v2    # "blockSize":J
    .restart local v0    # "blockSize":J
    .restart local v5    # "invokationFailed":Z
    :catch_0
    move-exception v4

    .line 89
    .local v4, "e":Ljava/lang/ClassCastException;
    sget-object v6, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->TAG:Ljava/lang/String;

    const-string v7, "getBlockSizeLong invoke failed: "

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    const/4 v5, 0x1

    .line 106
    goto :goto_0

    .line 92
    .end local v4    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v4

    .line 94
    .local v4, "e":Ljava/lang/IllegalAccessException;
    sget-object v6, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->TAG:Ljava/lang/String;

    const-string v7, "getBlockSizeLong invoke failed: "

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    const/4 v5, 0x1

    .line 106
    goto :goto_0

    .line 97
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v4

    .line 99
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    sget-object v6, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->TAG:Ljava/lang/String;

    const-string v7, "getBlockSizeLong invoke failed: "

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    const/4 v5, 0x1

    .line 106
    goto :goto_0

    .line 102
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v4

    .line 104
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v6, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->TAG:Ljava/lang/String;

    const-string v7, "getBlockSizeLong invoke failed: "

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    const/4 v5, 0x1

    goto :goto_0

    .line 112
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v5    # "invokationFailed":Z
    :cond_0
    sget-object v6, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->m_getBlockSize:Ljava/lang/reflect/Method;

    if-eqz v6, :cond_1

    .line 114
    const/4 v5, 0x0

    .line 117
    .restart local v5    # "invokationFailed":Z
    :try_start_1
    sget-object v6, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->m_getBlockSize:Ljava/lang/reflect/Method;

    iget-object v7, p0, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->m_stat:Landroid/os/StatFs;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_7

    move-result v6

    int-to-long v0, v6

    .line 139
    :goto_2
    if-nez v5, :cond_1

    move-wide v2, v0

    .line 140
    .end local v0    # "blockSize":J
    .restart local v2    # "blockSize":J
    goto :goto_1

    .line 119
    .end local v2    # "blockSize":J
    .restart local v0    # "blockSize":J
    :catch_4
    move-exception v4

    .line 121
    .local v4, "e":Ljava/lang/ClassCastException;
    sget-object v6, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->TAG:Ljava/lang/String;

    const-string v7, "getBlockSize invoke failed: "

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    const/4 v5, 0x1

    .line 138
    goto :goto_2

    .line 124
    .end local v4    # "e":Ljava/lang/ClassCastException;
    :catch_5
    move-exception v4

    .line 126
    .local v4, "e":Ljava/lang/IllegalAccessException;
    sget-object v6, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->TAG:Ljava/lang/String;

    const-string v7, "getBlockSize invoke failed: "

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    const/4 v5, 0x1

    .line 138
    goto :goto_2

    .line 129
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :catch_6
    move-exception v4

    .line 131
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    sget-object v6, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->TAG:Ljava/lang/String;

    const-string v7, "getBlockSize invoke failed: "

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    const/4 v5, 0x1

    .line 138
    goto :goto_2

    .line 134
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :catch_7
    move-exception v4

    .line 136
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v6, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->TAG:Ljava/lang/String;

    const-string v7, "getBlockSize invoke failed: "

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    const/4 v5, 0x1

    goto :goto_2

    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v5    # "invokationFailed":Z
    :cond_1
    move-wide v2, v0

    .line 143
    .end local v0    # "blockSize":J
    .restart local v2    # "blockSize":J
    goto :goto_1
.end method
