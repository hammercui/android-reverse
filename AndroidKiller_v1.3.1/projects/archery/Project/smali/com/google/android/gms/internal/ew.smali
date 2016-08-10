.class public Lcom/google/android/gms/internal/ew;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/ex;


# instance fields
.field private final Co:Lcom/google/android/gms/internal/ey;

.field private final wj:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ex;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ex;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ew;->CREATOR:Lcom/google/android/gms/internal/ex;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/ey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ew;->wj:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ew;->Co:Lcom/google/android/gms/internal/ey;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ey;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ew;->wj:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ew;->Co:Lcom/google/android/gms/internal/ey;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/fb$b;)Lcom/google/android/gms/internal/ew;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/fb$b",
            "<**>;)",
            "Lcom/google/android/gms/internal/ew;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/android/gms/internal/ey;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ew;

    check-cast p0, Lcom/google/android/gms/internal/ey;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ew;-><init>(Lcom/google/android/gms/internal/ey;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported safe parcelable field converter class."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ew;->CREATOR:Lcom/google/android/gms/internal/ex;

    const/4 v0, 0x0

    return v0
.end method

.method ei()Lcom/google/android/gms/internal/ey;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ew;->Co:Lcom/google/android/gms/internal/ey;

    return-object v0
.end method

.method public ej()Lcom/google/android/gms/internal/fb$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/fb$b",
            "<**>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ew;->Co:Lcom/google/android/gms/internal/ey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ew;->Co:Lcom/google/android/gms/internal/ey;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There was no converter wrapped in this ConverterWrapper."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ew;->wj:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/ew;->CREATOR:Lcom/google/android/gms/internal/ex;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ex;->a(Lcom/google/android/gms/internal/ew;Landroid/os/Parcel;I)V

    return-void
.end method
