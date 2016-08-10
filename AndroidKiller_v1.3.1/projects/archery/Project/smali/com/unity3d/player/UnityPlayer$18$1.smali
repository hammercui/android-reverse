.class final Lcom/unity3d/player/UnityPlayer$18$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer$18;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/unity3d/player/UnityPlayer$18;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer$18;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$18$1;->a:Lcom/unity3d/player/UnityPlayer$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$18$1;->a:Lcom/unity3d/player/UnityPlayer$18;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer$18;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->nativeJoystickRemoved()V

    return-void
.end method
