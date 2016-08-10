.class public Lcom/doodlemobile/gamecenter/cache/PreferencesCache;
.super Ljava/lang/Object;
.source "PreferencesCache.java"


# static fields
.field private static final DEFAULT_BOOLEAN:Z = false

.field private static final DEFAULT_INT:I = 0x0

.field private static final DEFAULT_LONG:J = 0x0L

.field private static final DEFAULT_STRING:Ljava/lang/String; = "none"

.field private static final DM_PREFERENCES_FILE:Ljava/lang/String; = ".dmgames_prefs"

.field private static instance:Lcom/doodlemobile/gamecenter/cache/PreferencesCache;


# instance fields
.field private editor:Landroid/content/SharedPreferences$Editor;

.field private preferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->instance:Lcom/doodlemobile/gamecenter/cache/PreferencesCache;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, ".dmgames_prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->preferences:Landroid/content/SharedPreferences;

    .line 31
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->editor:Landroid/content/SharedPreferences$Editor;

    .line 32
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/doodlemobile/gamecenter/cache/PreferencesCache;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    sget-object v0, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->instance:Lcom/doodlemobile/gamecenter/cache/PreferencesCache;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;

    invoke-direct {v0, p0}, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->instance:Lcom/doodlemobile/gamecenter/cache/PreferencesCache;

    .line 26
    :cond_0
    sget-object v0, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->instance:Lcom/doodlemobile/gamecenter/cache/PreferencesCache;

    return-object v0
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 76
    return-void
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->preferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->preferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->preferences:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "none"

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isExist(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 70
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 71
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 72
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 61
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 62
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 65
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 66
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 67
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 56
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/cache/PreferencesCache;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 57
    return-void
.end method
