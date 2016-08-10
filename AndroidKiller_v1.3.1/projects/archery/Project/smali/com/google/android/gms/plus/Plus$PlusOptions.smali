.class public final Lcom/google/android/gms/plus/Plus$PlusOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ApiOptions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/Plus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlusOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;
    }
.end annotation


# instance fields
.field final QL:Ljava/lang/String;

.field final QM:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/plus/Plus$PlusOptions;->QL:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/Plus$PlusOptions;->QM:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/plus/Plus$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/plus/Plus$1;

    .prologue
    invoke-direct {p0}, Lcom/google/android/gms/plus/Plus$PlusOptions;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;->QL:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/plus/Plus$PlusOptions;->QL:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;->QM:Ljava/util/Set;

    iput-object v0, p0, Lcom/google/android/gms/plus/Plus$PlusOptions;->QM:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;Lcom/google/android/gms/plus/Plus$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;
    .param p2, "x1"    # Lcom/google/android/gms/plus/Plus$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/plus/Plus$PlusOptions;-><init>(Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;)V

    return-void
.end method

.method public static builder()Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;
    .locals 1

    new-instance v0, Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/plus/Plus$PlusOptions$Builder;-><init>()V

    return-object v0
.end method
