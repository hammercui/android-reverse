.class Lcom/doodlemobile/gamecenter/event/PlatformHandler$1;
.super Lcom/google/android/gms/monkey/AdListener;
.source "PlatformHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/doodlemobile/gamecenter/event/PlatformHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/doodlemobile/gamecenter/event/PlatformHandler;

.field private final synthetic val$adRequest:Lcom/google/android/gms/monkey/AdRequest;


# direct methods
.method constructor <init>(Lcom/doodlemobile/gamecenter/event/PlatformHandler;Lcom/google/android/gms/monkey/AdRequest;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/doodlemobile/gamecenter/event/PlatformHandler$1;->this$0:Lcom/doodlemobile/gamecenter/event/PlatformHandler;

    iput-object p2, p0, Lcom/doodlemobile/gamecenter/event/PlatformHandler$1;->val$adRequest:Lcom/google/android/gms/monkey/AdRequest;

    .line 72
    invoke-direct {p0}, Lcom/google/android/gms/monkey/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Lcom/google/android/gms/monkey/AdListener;->onAdClosed()V

    .line 77
    iget-object v0, p0, Lcom/doodlemobile/gamecenter/event/PlatformHandler$1;->this$0:Lcom/doodlemobile/gamecenter/event/PlatformHandler;

    # getter for: Lcom/doodlemobile/gamecenter/event/PlatformHandler;->interstitial:Lcom/google/android/gms/monkey/InterstitialAd;
    invoke-static {v0}, Lcom/doodlemobile/gamecenter/event/PlatformHandler;->access$0(Lcom/doodlemobile/gamecenter/event/PlatformHandler;)Lcom/google/android/gms/monkey/InterstitialAd;

    move-result-object v0

    iget-object v1, p0, Lcom/doodlemobile/gamecenter/event/PlatformHandler$1;->val$adRequest:Lcom/google/android/gms/monkey/AdRequest;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/monkey/InterstitialAd;->loadAd(Lcom/google/android/gms/monkey/AdRequest;)V

    .line 78
    return-void
.end method
