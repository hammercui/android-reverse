.class public Lcom/doodlemobile/gamecenter/cache/InternalStorageIO;
.super Ljava/lang/Object;
.source "InternalStorageIO.java"

# interfaces
.implements Lcom/doodlemobile/gamecenter/cache/IFileIO;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/cache/InternalStorageIO;->context:Landroid/content/Context;

    .line 13
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/cache/InternalStorageIO;->context:Landroid/content/Context;

    .line 14
    return-void
.end method


# virtual methods
.method public deleteFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 54
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/cache/InternalStorageIO;->hasFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/cache/InternalStorageIO;->context:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getFile(Ljava/lang/String;)[B
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/cache/InternalStorageIO;->hasFile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 26
    :try_start_0
    iget-object v3, p0, Lcom/doodlemobile/gamecenter/cache/InternalStorageIO;->context:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 27
    .local v2, "fos":Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v3

    new-array v0, v3, [B

    .line 28
    .local v0, "buf":[B
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 29
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .end local v0    # "buf":[B
    .end local v2    # "fos":Ljava/io/FileInputStream;
    :goto_0
    return-object v0

    .line 31
    :catch_0
    move-exception v1

    .line 32
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 35
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFile(Ljava/lang/String;)Z
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 18
    iget-object v1, p0, Lcom/doodlemobile/gamecenter/cache/InternalStorageIO;->context:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 19
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public saveFile(Ljava/lang/String;[B)V
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "content"    # [B

    .prologue
    .line 41
    :try_start_0
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/cache/InternalStorageIO;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 42
    .local v1, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 43
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 44
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, p1}, Lcom/doodlemobile/gamecenter/cache/InternalStorageIO;->deleteFile(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
