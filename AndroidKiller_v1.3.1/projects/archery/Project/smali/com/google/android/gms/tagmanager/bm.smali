.class Lcom/google/android/gms/tagmanager/bm;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method iA()I
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public ji()Lcom/google/android/gms/tagmanager/bl;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/bm;->iA()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    new-instance v0, Lcom/google/android/gms/tagmanager/av;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/av;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/tagmanager/aw;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/aw;-><init>()V

    goto :goto_0
.end method
