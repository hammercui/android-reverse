.class public Lcom/threatmetrix/TrustDefenderMobile/PutXML;
.super Ljava/lang/Object;
.source "PutXML.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field fp_server:Ljava/lang/String;

.field org_id:Ljava/lang/String;

.field private sdk:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

.field session_id:Ljava/lang/String;

.field timeout:I

.field w:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/threatmetrix/TrustDefenderMobile/PutXML;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/PutXML;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;)V
    .locals 1
    .param p1, "fp_server"    # Ljava/lang/String;
    .param p2, "org_id"    # Ljava/lang/String;
    .param p3, "session_id"    # Ljava/lang/String;
    .param p4, "w"    # Ljava/lang/String;
    .param p5, "timeout"    # I
    .param p6, "sdk"    # Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/PutXML;->fp_server:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/PutXML;->org_id:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/PutXML;->session_id:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/PutXML;->w:Ljava/lang/String;

    .line 24
    const/16 v0, 0x2710

    iput v0, p0, Lcom/threatmetrix/TrustDefenderMobile/PutXML;->timeout:I

    .line 35
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/PutXML;->fp_server:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/threatmetrix/TrustDefenderMobile/PutXML;->org_id:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/threatmetrix/TrustDefenderMobile/PutXML;->session_id:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/threatmetrix/TrustDefenderMobile/PutXML;->w:Ljava/lang/String;

    .line 39
    iput p5, p0, Lcom/threatmetrix/TrustDefenderMobile/PutXML;->timeout:I

    .line 40
    iput-object p6, p0, Lcom/threatmetrix/TrustDefenderMobile/PutXML;->sdk:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    .line 41
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 46
    const/4 v6, 0x0

    .line 49
    .local v6, "socket":Ljava/net/Socket;
    :try_start_0
    new-instance v7, Ljava/net/Socket;

    iget-object v8, p0, Lcom/threatmetrix/TrustDefenderMobile/PutXML;->fp_server:Ljava/lang/String;

    const/16 v9, 0x1f90

    invoke-direct {v7, v8, v9}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .end local v6    # "socket":Ljava/net/Socket;
    .local v7, "socket":Ljava/net/Socket;
    :try_start_1
    iget v8, p0, Lcom/threatmetrix/TrustDefenderMobile/PutXML;->timeout:I

    invoke-virtual {v7, v8}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 53
    invoke-virtual {v7}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 55
    .local v4, "out":Ljava/io/OutputStream;
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/PrintWriter;

    invoke-direct {v8, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v5, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 56
    .local v5, "output":Ljava/io/BufferedWriter;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 58
    .local v3, "input":Ljava/io/BufferedReader;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "<handle sig=FF44EE55 session_id="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/threatmetrix/TrustDefenderMobile/PutXML;->session_id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " org_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/threatmetrix/TrustDefenderMobile/PutXML;->org_id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " w="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/threatmetrix/TrustDefenderMobile/PutXML;->w:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " />"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V

    .line 63
    invoke-virtual {v3}, Ljava/io/BufferedReader;->read()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 65
    const/4 v8, 0x1

    new-array v1, v8, [C

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput-char v9, v1, v8

    .line 66
    .local v1, "hashes":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v8, 0xf

    if-ge v2, v8, :cond_0

    .line 68
    invoke-virtual {v5, v1}, Ljava/io/BufferedWriter;->write([C)V

    .line 66
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->read()I
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    .end local v1    # "hashes":[C
    .end local v2    # "i":I
    :cond_1
    if-eqz v7, :cond_2

    .line 91
    :try_start_2
    invoke-virtual {v7}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_2
    :goto_1
    move-object v6, v7

    .line 99
    .end local v3    # "input":Ljava/io/BufferedReader;
    .end local v4    # "out":Ljava/io/OutputStream;
    .end local v5    # "output":Ljava/io/BufferedWriter;
    .end local v7    # "socket":Ljava/net/Socket;
    .restart local v6    # "socket":Ljava/net/Socket;
    :cond_3
    :goto_2
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/net/UnknownHostException;
    :goto_3
    :try_start_3
    const-string v8, "Failed to connect to the fp server"

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 86
    if-eqz v6, :cond_3

    .line 91
    :try_start_4
    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .end local v0    # "e":Ljava/net/UnknownHostException;
    :catch_1
    move-exception v8

    goto :goto_2

    .line 77
    :catch_2
    move-exception v0

    .line 79
    .local v0, "e":Ljava/io/IOException;
    :goto_4
    :try_start_5
    const-string v8, "Failed to read/write to the fp server"

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    iget-object v8, p0, Lcom/threatmetrix/TrustDefenderMobile/PutXML;->sdk:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    if-eqz v8, :cond_4

    .line 82
    iget-object v8, p0, Lcom/threatmetrix/TrustDefenderMobile/PutXML;->sdk:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    invoke-virtual {v8}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->interruptThreads()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 86
    :cond_4
    if-eqz v6, :cond_3

    .line 91
    :try_start_6
    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 86
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v6, :cond_5

    .line 91
    :try_start_7
    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 86
    :cond_5
    :goto_6
    throw v8

    :catch_3
    move-exception v9

    goto :goto_6

    .end local v6    # "socket":Ljava/net/Socket;
    .restart local v3    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "out":Ljava/io/OutputStream;
    .restart local v5    # "output":Ljava/io/BufferedWriter;
    .restart local v7    # "socket":Ljava/net/Socket;
    :catch_4
    move-exception v8

    goto :goto_1

    .end local v3    # "input":Ljava/io/BufferedReader;
    .end local v4    # "out":Ljava/io/OutputStream;
    .end local v5    # "output":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "socket":Ljava/net/Socket;
    .restart local v6    # "socket":Ljava/net/Socket;
    goto :goto_5

    .line 77
    .end local v6    # "socket":Ljava/net/Socket;
    .restart local v7    # "socket":Ljava/net/Socket;
    :catch_5
    move-exception v0

    move-object v6, v7

    .end local v7    # "socket":Ljava/net/Socket;
    .restart local v6    # "socket":Ljava/net/Socket;
    goto :goto_4

    .line 73
    .end local v6    # "socket":Ljava/net/Socket;
    .restart local v7    # "socket":Ljava/net/Socket;
    :catch_6
    move-exception v0

    move-object v6, v7

    .end local v7    # "socket":Ljava/net/Socket;
    .restart local v6    # "socket":Ljava/net/Socket;
    goto :goto_3
.end method
