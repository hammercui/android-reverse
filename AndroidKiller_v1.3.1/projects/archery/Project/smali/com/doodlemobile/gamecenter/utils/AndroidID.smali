.class public Lcom/doodlemobile/gamecenter/utils/AndroidID;
.super Lcom/doodlemobile/gamecenter/cache/DMCache;
.source "AndroidID.java"


# static fields
.field private static final ID_FILE_NAME:Ljava/lang/String; = "UID"


# instance fields
.field private USERID:Ljava/lang/String;

.field private fileIO:Lcom/doodlemobile/gamecenter/cache/IFileIO;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 19
    invoke-direct {p0}, Lcom/doodlemobile/gamecenter/cache/DMCache;-><init>()V

    .line 16
    iput-object v2, p0, Lcom/doodlemobile/gamecenter/utils/AndroidID;->USERID:Ljava/lang/String;

    .line 17
    iput-object v2, p0, Lcom/doodlemobile/gamecenter/utils/AndroidID;->fileIO:Lcom/doodlemobile/gamecenter/cache/IFileIO;

    .line 20
    invoke-virtual {p0}, Lcom/doodlemobile/gamecenter/utils/AndroidID;->hasSDCard()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 21
    new-instance v2, Lcom/doodlemobile/gamecenter/cache/ExternalStorageIO;

    invoke-direct {v2}, Lcom/doodlemobile/gamecenter/cache/ExternalStorageIO;-><init>()V

    iput-object v2, p0, Lcom/doodlemobile/gamecenter/utils/AndroidID;->fileIO:Lcom/doodlemobile/gamecenter/cache/IFileIO;

    .line 22
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/utils/AndroidID;->fileIO:Lcom/doodlemobile/gamecenter/cache/IFileIO;

    const-string v3, "UID"

    invoke-interface {v2, v3}, Lcom/doodlemobile/gamecenter/cache/IFileIO;->hasFile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 23
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/utils/AndroidID;->fileIO:Lcom/doodlemobile/gamecenter/cache/IFileIO;

    const-string v3, "UID"

    invoke-interface {v2, v3}, Lcom/doodlemobile/gamecenter/cache/IFileIO;->getFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 24
    .local v0, "bytes":[B
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v2, p0, Lcom/doodlemobile/gamecenter/utils/AndroidID;->USERID:Ljava/lang/String;

    .line 33
    .end local v0    # "bytes":[B
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/utils/AndroidID;->USERID:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 34
    invoke-static {}, Lcom/doodlemobile/gamecenter/Platform;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/doodlemobile/gamecenter/utils/AndroidID;->USERID:Ljava/lang/String;

    .line 35
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/utils/AndroidID;->USERID:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/utils/AndroidID;->USERID:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/doodlemobile/gamecenter/utils/AndroidID;->USERID:Ljava/lang/String;

    const-string v3, "9774d56d682e549c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 36
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/doodlemobile/gamecenter/utils/AndroidID;->USERID:Ljava/lang/String;

    .line 38
    :cond_2
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/utils/AndroidID;->fileIO:Lcom/doodlemobile/gamecenter/cache/IFileIO;

    if-eqz v2, :cond_3

    .line 39
    iget-object v2, p0, Lcom/doodlemobile/gamecenter/utils/AndroidID;->fileIO:Lcom/doodlemobile/gamecenter/cache/IFileIO;

    const-string v3, "UID"

    iget-object v4, p0, Lcom/doodlemobile/gamecenter/utils/AndroidID;->USERID:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/doodlemobile/gamecenter/cache/IFileIO;->saveFile(Ljava/lang/String;[B)V

    .line 41
    :cond_3
    invoke-static {}, Lcom/doodlemobile/gamecenter/Platform;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/cache/PreferencesCache;

    move-result-object v1

    .line 42
    .local v1, "prefs":Lcom/doodlemobile/gamecenter/cache/PreferencesCache;
    const-string v2, "UID"

    iget-object v3, p0, Lcom/doodlemobile/gamecenter/utils/AndroidID;->USERID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .end local v1    # "prefs":Lcom/doodlemobile/gamecenter/cache/PreferencesCache;
    :cond_4
    return-void

    .line 27
    :cond_5
    invoke-static {}, Lcom/doodlemobile/gamecenter/Platform;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/cache/PreferencesCache;

    move-result-object v1

    .line 28
    .restart local v1    # "prefs":Lcom/doodlemobile/gamecenter/cache/PreferencesCache;
    const-string v2, "UID"

    invoke-virtual {v1, v2}, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->isExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 29
    const-string v2, "UID"

    invoke-virtual {v1, v2}, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/doodlemobile/gamecenter/utils/AndroidID;->USERID:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getAndroidId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/utils/AndroidID;->USERID:Ljava/lang/String;

    return-object v0
.end method
