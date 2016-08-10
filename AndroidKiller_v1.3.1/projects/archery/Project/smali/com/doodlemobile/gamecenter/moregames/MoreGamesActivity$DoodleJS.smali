.class final Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$DoodleJS;
.super Ljava/lang/Object;
.source "MoreGamesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DoodleJS"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;


# direct methods
.method private constructor <init>(Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$DoodleJS;->this$0:Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$DoodleJS;)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$DoodleJS;-><init>(Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;)V

    return-void
.end method

.method static synthetic access$1(Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$DoodleJS;)Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$DoodleJS;->this$0:Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;

    return-object v0
.end method


# virtual methods
.method public backActivity()V
    .locals 3

    .prologue
    .line 131
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$DoodleJS;->this$0:Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;

    # getter for: Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;->access$0(Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 132
    const-string v1, "More Apps"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 133
    const-string v1, "There is no more apps, please back"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 134
    const-string v1, "Ok"

    new-instance v2, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$DoodleJS$1;

    invoke-direct {v2, p0}, Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$DoodleJS$1;-><init>(Lcom/doodlemobile/gamecenter/moregames/MoreGamesActivity$DoodleJS;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 140
    return-void
.end method

.method public getInstalledPackages()Ljava/lang/String;
    .locals 4

    .prologue
    .line 117
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 119
    .local v1, "mInstalledPkgsBuffer":Ljava/lang/StringBuffer;
    :try_start_0
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->getAndroidVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->getAllInstalledDMPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    const-string v2, "com.threed.bowling"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
