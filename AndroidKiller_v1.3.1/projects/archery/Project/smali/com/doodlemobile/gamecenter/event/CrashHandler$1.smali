.class Lcom/doodlemobile/gamecenter/event/CrashHandler$1;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/event/CrashHandler;->showToast(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/event/CrashHandler;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/event/CrashHandler;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/event/CrashHandler$1;->this$0:Lcom/doodlemobile/gamecenter/event/CrashHandler;

    iput-object p2, p0, Lcom/doodlemobile/gamecenter/event/CrashHandler$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/doodlemobile/gamecenter/event/CrashHandler$1;->val$msg:Ljava/lang/String;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 88
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 89
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/event/CrashHandler$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/event/CrashHandler$1;->val$msg:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 90
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 91
    return-void
.end method
