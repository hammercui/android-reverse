.class public final Lcom/google/android/gms/internal/ad;
.super Lcom/google/android/gms/internal/ai$a;


# instance fields
.field private final lq:Lcom/google/android/gms/monkey/donkey/AppEventListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/monkey/donkey/AppEventListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ai$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ad;->lq:Lcom/google/android/gms/monkey/donkey/AppEventListener;

    return-void
.end method


# virtual methods
.method public onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/ad;->lq:Lcom/google/android/gms/monkey/donkey/AppEventListener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/monkey/donkey/AppEventListener;->onAppEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
