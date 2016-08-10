.class final Lcom/google/android/gms/internal/ej$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ej;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ej$a$a;
    }
.end annotation


# instance fields
.field private final BT:Ljava/lang/String;

.field private final BU:Lcom/google/android/gms/internal/ej$a$a;

.field private final BV:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/eh",
            "<*>.f;>;"
        }
    .end annotation
.end field

.field private BW:Z

.field private BX:Landroid/os/IBinder;

.field private BY:Landroid/content/ComponentName;

.field final synthetic BZ:Lcom/google/android/gms/internal/ej;

.field private mState:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ej;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/ej$a;->BZ:Lcom/google/android/gms/internal/ej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ej$a;->BT:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ej$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ej$a$a;-><init>(Lcom/google/android/gms/internal/ej$a;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ej$a;->BU:Lcom/google/android/gms/internal/ej$a$a;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ej$a;->BV:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ej$a;->mState:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ej$a;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ej$a;->mState:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ej$a;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ej$a;->BY:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ej$a;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ej$a;->BX:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ej$a;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ej$a;->BV:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/eh$f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/eh",
            "<*>.f;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ej$a;->BV:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/google/android/gms/internal/eh$f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/eh",
            "<*>.f;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ej$a;->BV:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Lcom/google/android/gms/internal/eh$f;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/eh",
            "<*>.f;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ej$a;->BV:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public ee()Lcom/google/android/gms/internal/ej$a$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ej$a;->BU:Lcom/google/android/gms/internal/ej$a$a;

    return-object v0
.end method

.method public ef()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ej$a;->BT:Ljava/lang/String;

    return-object v0
.end method

.method public eg()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ej$a;->BV:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ej$a;->BX:Landroid/os/IBinder;

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ej$a;->BY:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ej$a;->mState:I

    return v0
.end method

.method public isBound()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ej$a;->BW:Z

    return v0
.end method

.method public w(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ej$a;->BW:Z

    return-void
.end method
