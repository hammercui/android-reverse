.class Lcom/google/android/gms/tagmanager/cp$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/cp$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/cp;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/r;Lcom/google/android/gms/tagmanager/cp$b;Lcom/google/android/gms/tagmanager/cp$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Wo:Lcom/google/android/gms/tagmanager/cp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/cp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/cp$2;->Wo:Lcom/google/android/gms/tagmanager/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/tagmanager/r;)Lcom/google/android/gms/tagmanager/co;
    .locals 3

    new-instance v0, Lcom/google/android/gms/tagmanager/co;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/cp$2;->Wo:Lcom/google/android/gms/tagmanager/cp;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/cp;->a(Lcom/google/android/gms/tagmanager/cp;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/cp$2;->Wo:Lcom/google/android/gms/tagmanager/cp;

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/cp;->b(Lcom/google/android/gms/tagmanager/cp;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/tagmanager/co;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/r;)V

    return-object v0
.end method
