.class public final Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/monkey/search/SearchAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final kB:Lcom/google/android/gms/internal/aj$a;

.field private qA:I

.field private qB:I

.field private qC:Ljava/lang/String;

.field private qD:I

.field private qE:Ljava/lang/String;

.field private qF:I

.field private qG:I

.field private qH:Ljava/lang/String;

.field private qu:I

.field private qv:I

.field private qw:I

.field private qx:I

.field private qy:I

.field private qz:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/aj$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aj$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->kB:Lcom/google/android/gms/internal/aj$a;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->qA:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->qu:I

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->qv:I

    return v0
.end method

.method static synthetic c(Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->qw:I

    return v0
.end method

.method static synthetic d(Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->qx:I

    return v0
.end method

.method static synthetic e(Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->qy:I

    return v0
.end method

.method static synthetic f(Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->qz:I

    return v0
.end method

.method static synthetic g(Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->qA:I

    return v0
.end method

.method static synthetic h(Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->qB:I

    return v0
.end method

.method static synthetic i(Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->qC:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->qD:I

    return v0
.end method

.method static synthetic k(Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->qE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->qF:I

    return v0
.end method

.method static synthetic m(Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->qG:I

    return v0
.end method

.method static synthetic n(Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->qH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;)Lcom/google/android/gms/internal/aj$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->kB:Lcom/google/android/gms/internal/aj$a;

    return-object v0
.end method


# virtual methods
.method public addNetworkExtras(Lcom/google/android/gms/monkey/mediation/NetworkExtras;)Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;
    .locals 1
    .param p1, "networkExtras"    # Lcom/google/android/gms/monkey/mediation/NetworkExtras;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->kB:Lcom/google/android/gms/internal/aj$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aj$a;->a(Lcom/google/android/gms/monkey/mediation/NetworkExtras;)V

    return-object p0
.end method

.method public addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->kB:Lcom/google/android/gms/internal/aj$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aj$a;->h(Ljava/lang/String;)V

    return-object p0
.end method

.method public build()Lcom/google/android/gms/monkey/search/SearchAdRequest;
    .locals 2

    new-instance v0, Lcom/google/android/gms/monkey/search/SearchAdRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/monkey/search/SearchAdRequest;-><init>(Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;Lcom/google/android/gms/monkey/search/SearchAdRequest$1;)V

    return-object v0
.end method

.method public setAnchorTextColor(I)Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;
    .locals 0
    .param p1, "anchorTextColor"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->qu:I

    return-object p0
.end method

.method public setBackgroundColor(I)Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;
    .locals 2
    .param p1, "backgroundColor"    # I

    .prologue
    const/4 v1, 0x0

    iput p1, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->qv:I

    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->qw:I

    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->qx:I

    return-object p0
.end method

.method public setBackgroundGradient(II)Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;
    .locals 1
    .param p1, "top"    # I
    .param p2, "bottom"    # I

    .prologue
    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->qv:I

    iput p2, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->qw:I

    iput p1, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->qx:I

    return-object p0
.end method

.method public setBorderColor(I)Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;
    .locals 0
    .param p1, "borderColor"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->qy:I

    return-object p0
.end method

.method public setBorderThickness(I)Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;
    .locals 0
    .param p1, "borderThickness"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->qz:I

    return-object p0
.end method

.method public setBorderType(I)Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;
    .locals 0
    .param p1, "borderType"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->qA:I

    return-object p0
.end method

.method public setCallButtonColor(I)Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;
    .locals 0
    .param p1, "callButtonColor"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->qB:I

    return-object p0
.end method

.method public setCustomChannels(Ljava/lang/String;)Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;
    .locals 0
    .param p1, "channelIds"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->qC:Ljava/lang/String;

    return-object p0
.end method

.method public setDescriptionTextColor(I)Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;
    .locals 0
    .param p1, "descriptionTextColor"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->qD:I

    return-object p0
.end method

.method public setFontFace(Ljava/lang/String;)Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;
    .locals 0
    .param p1, "fontFace"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->qE:Ljava/lang/String;

    return-object p0
.end method

.method public setHeaderTextColor(I)Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;
    .locals 0
    .param p1, "headerTextColor"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->qF:I

    return-object p0
.end method

.method public setHeaderTextSize(I)Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;
    .locals 0
    .param p1, "headerTextSize"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->qG:I

    return-object p0
.end method

.method public setLocation(Landroid/location/Location;)Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->kB:Lcom/google/android/gms/internal/aj$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aj$a;->a(Landroid/location/Location;)V

    return-object p0
.end method

.method public setQuery(Ljava/lang/String;)Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;
    .locals 0
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->qH:Ljava/lang/String;

    return-object p0
.end method

.method public tagForChildDirectedTreatment(Z)Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;
    .locals 1
    .param p1, "tagForChildDirectedTreatment"    # Z

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->kB:Lcom/google/android/gms/internal/aj$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aj$a;->e(Z)V

    return-object p0
.end method
