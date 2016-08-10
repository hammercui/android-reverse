.class public Lcom/doodlemobile/gamecenter/net/DUploadUserBehavior;
.super Ljava/lang/Object;
.source "DUploadUserBehavior.java"


# static fields
.field public static ACTION_CANCEL:Ljava/lang/String;

.field public static ACTION_CLICK:Ljava/lang/String;

.field public static RESOURCE_FEATUREVIEW:I

.field public static RESOURCE_FULLSCREEN:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "CLICK"

    sput-object v0, Lcom/doodlemobile/gamecenter/net/DUploadUserBehavior;->ACTION_CLICK:Ljava/lang/String;

    .line 29
    const-string v0, "CANCEL"

    sput-object v0, Lcom/doodlemobile/gamecenter/net/DUploadUserBehavior;->ACTION_CANCEL:Ljava/lang/String;

    .line 30
    const/4 v0, 0x1

    sput v0, Lcom/doodlemobile/gamecenter/net/DUploadUserBehavior;->RESOURCE_FEATUREVIEW:I

    .line 31
    const/4 v0, 0x2

    sput v0, Lcom/doodlemobile/gamecenter/net/DUploadUserBehavior;->RESOURCE_FULLSCREEN:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method private static AssembleRequest(Ljava/lang/String;I)Ljava/util/List;
    .locals 4
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 40
    .local v0, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "api"

    const-string v3, "UploadUserBehavior"

    invoke-static {v3}, Lcom/doodlemobile/des/DDes;->getEncString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "android_id"

    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->getDeviceId_static()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/doodlemobile/des/DDes;->getEncString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "place"

    invoke-static {}, Lcom/doodlemobile/gamecenter/DoodleMobileAnaylise;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/doodlemobile/des/DDes;->getEncString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "action"

    invoke-static {p0}, Lcom/doodlemobile/des/DDes;->getEncString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "resource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/doodlemobile/des/DDes;->getEncString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget v1, Lcom/doodlemobile/gamecenter/net/DUploadUserBehavior;->RESOURCE_FEATUREVIEW:I

    if-ne p1, v1, :cond_0

    .line 49
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "featureview"

    invoke-static {}, Lcom/doodlemobile/gamecenter/featuregames/FeatureView;->getFeaturePkg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/doodlemobile/des/DDes;->getEncString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    :goto_0
    const-string v1, "zhaoming"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request to Host: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-object v0

    .line 51
    :cond_0
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "unknown"

    const-string v3, "unknown"

    invoke-static {v3}, Lcom/doodlemobile/des/DDes;->getEncString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static UploadToServer(Ljava/lang/String;I)V
    .locals 2
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "resource"    # I

    .prologue
    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/doodlemobile/gamecenter/event/DHandlerThread;->getInstance()Lcom/doodlemobile/gamecenter/event/DHandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/doodlemobile/gamecenter/event/DHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 61
    .local v0, "uploadHandler":Landroid/os/Handler;
    new-instance v1, Lcom/doodlemobile/gamecenter/net/DUploadUserBehavior$1;

    invoke-direct {v1, p0, p1}, Lcom/doodlemobile/gamecenter/net/DUploadUserBehavior$1;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82
    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;I)Ljava/util/List;
    .locals 1

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/doodlemobile/gamecenter/net/DUploadUserBehavior;->AssembleRequest(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
