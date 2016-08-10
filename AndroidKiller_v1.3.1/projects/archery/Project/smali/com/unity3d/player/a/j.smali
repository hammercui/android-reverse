.class public final Lcom/unity3d/player/a/j;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field private final b:Lcom/unity3d/player/a/h;

.field private c:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Lcom/unity3d/player/a/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/player/a/j;->a:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/unity3d/player/a/j;->b:Lcom/unity3d/player/a/h;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/a/j;->c:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/a/j;->c:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/a/j;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/a/j;->c:Landroid/content/SharedPreferences$Editor;

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/a/j;->c:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/a/j;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/player/a/j;->c:Landroid/content/SharedPreferences$Editor;

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/a/j;->b:Lcom/unity3d/player/a/h;

    invoke-interface {v0, p2}, Lcom/unity3d/player/a/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/player/a/j;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/a/j;->a:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/unity3d/player/a/j;->b:Lcom/unity3d/player/a/h;

    invoke-interface {v1, v0}, Lcom/unity3d/player/a/h;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/unity3d/player/a/l; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    :cond_0
    :goto_0
    return-object p2

    :catch_0
    move-exception v0

    goto :goto_0
.end method
