.class public final Lcom/google/android/gms/internal/am;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/an;


# instance fields
.field public final backgroundColor:I

.field public final lI:I

.field public final lJ:I

.field public final lK:I

.field public final lL:I

.field public final lM:I

.field public final lN:I

.field public final lO:I

.field public final lP:Ljava/lang/String;

.field public final lQ:I

.field public final lR:Ljava/lang/String;

.field public final lS:I

.field public final lT:I

.field public final lU:Ljava/lang/String;

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/an;

    invoke-direct {v0}, Lcom/google/android/gms/internal/an;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/am;->CREATOR:Lcom/google/android/gms/internal/an;

    return-void
.end method

.method constructor <init>(IIIIIIIIILjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/am;->versionCode:I

    iput p2, p0, Lcom/google/android/gms/internal/am;->lI:I

    iput p3, p0, Lcom/google/android/gms/internal/am;->backgroundColor:I

    iput p4, p0, Lcom/google/android/gms/internal/am;->lJ:I

    iput p5, p0, Lcom/google/android/gms/internal/am;->lK:I

    iput p6, p0, Lcom/google/android/gms/internal/am;->lL:I

    iput p7, p0, Lcom/google/android/gms/internal/am;->lM:I

    iput p8, p0, Lcom/google/android/gms/internal/am;->lN:I

    iput p9, p0, Lcom/google/android/gms/internal/am;->lO:I

    iput-object p10, p0, Lcom/google/android/gms/internal/am;->lP:Ljava/lang/String;

    iput p11, p0, Lcom/google/android/gms/internal/am;->lQ:I

    iput-object p12, p0, Lcom/google/android/gms/internal/am;->lR:Ljava/lang/String;

    iput p13, p0, Lcom/google/android/gms/internal/am;->lS:I

    iput p14, p0, Lcom/google/android/gms/internal/am;->lT:I

    iput-object p15, p0, Lcom/google/android/gms/internal/am;->lU:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/monkey/search/SearchAdRequest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/am;->versionCode:I

    invoke-virtual {p1}, Lcom/google/android/gms/monkey/search/SearchAdRequest;->getAnchorTextColor()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/am;->lI:I

    invoke-virtual {p1}, Lcom/google/android/gms/monkey/search/SearchAdRequest;->getBackgroundColor()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/am;->backgroundColor:I

    invoke-virtual {p1}, Lcom/google/android/gms/monkey/search/SearchAdRequest;->getBackgroundGradientBottom()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/am;->lJ:I

    invoke-virtual {p1}, Lcom/google/android/gms/monkey/search/SearchAdRequest;->getBackgroundGradientTop()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/am;->lK:I

    invoke-virtual {p1}, Lcom/google/android/gms/monkey/search/SearchAdRequest;->getBorderColor()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/am;->lL:I

    invoke-virtual {p1}, Lcom/google/android/gms/monkey/search/SearchAdRequest;->getBorderThickness()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/am;->lM:I

    invoke-virtual {p1}, Lcom/google/android/gms/monkey/search/SearchAdRequest;->getBorderType()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/am;->lN:I

    invoke-virtual {p1}, Lcom/google/android/gms/monkey/search/SearchAdRequest;->getCallButtonColor()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/am;->lO:I

    invoke-virtual {p1}, Lcom/google/android/gms/monkey/search/SearchAdRequest;->getCustomChannels()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/am;->lP:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/monkey/search/SearchAdRequest;->getDescriptionTextColor()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/am;->lQ:I

    invoke-virtual {p1}, Lcom/google/android/gms/monkey/search/SearchAdRequest;->getFontFace()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/am;->lR:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/monkey/search/SearchAdRequest;->getHeaderTextColor()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/am;->lS:I

    invoke-virtual {p1}, Lcom/google/android/gms/monkey/search/SearchAdRequest;->getHeaderTextSize()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/am;->lT:I

    invoke-virtual {p1}, Lcom/google/android/gms/monkey/search/SearchAdRequest;->getQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/am;->lU:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/an;->a(Lcom/google/android/gms/internal/am;Landroid/os/Parcel;I)V

    return-void
.end method
