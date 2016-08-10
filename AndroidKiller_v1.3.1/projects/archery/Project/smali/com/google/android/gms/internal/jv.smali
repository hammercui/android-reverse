.class public final Lcom/google/android/gms/internal/jv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/jv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field ZK:Ljava/lang/String;

.field ZO:Lcom/google/android/gms/internal/jr;

.field ZP:Lcom/google/android/gms/internal/jt;

.field ZQ:Lcom/google/android/gms/internal/jt;

.field oi:Ljava/lang/String;

.field private final wj:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/jw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/jw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/jv;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/jv;->wj:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/jr;Lcom/google/android/gms/internal/jt;Lcom/google/android/gms/internal/jt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/jv;->wj:I

    iput-object p2, p0, Lcom/google/android/gms/internal/jv;->ZK:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/jv;->oi:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/jv;->ZO:Lcom/google/android/gms/internal/jr;

    iput-object p5, p0, Lcom/google/android/gms/internal/jv;->ZP:Lcom/google/android/gms/internal/jt;

    iput-object p6, p0, Lcom/google/android/gms/internal/jv;->ZQ:Lcom/google/android/gms/internal/jt;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/jv;->wj:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/jw;->a(Lcom/google/android/gms/internal/jv;Landroid/os/Parcel;I)V

    return-void
.end method
