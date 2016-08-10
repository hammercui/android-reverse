.class public final Lcom/google/android/gms/monkey/search/SearchAdRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/monkey/search/SearchAdRequest$1;,
        Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;
    }
.end annotation


# static fields
.field public static final BORDER_TYPE_DASHED:I = 0x1

.field public static final BORDER_TYPE_DOTTED:I = 0x2

.field public static final BORDER_TYPE_NONE:I = 0x0

.field public static final BORDER_TYPE_SOLID:I = 0x3

.field public static final CALL_BUTTON_COLOR_DARK:I = 0x2

.field public static final CALL_BUTTON_COLOR_LIGHT:I = 0x0

.field public static final CALL_BUTTON_COLOR_MEDIUM:I = 0x1

.field public static final DEVICE_ID_EMULATOR:Ljava/lang/String;

.field public static final ERROR_CODE_INTERNAL_ERROR:I = 0x0

.field public static final ERROR_CODE_INVALID_REQUEST:I = 0x1

.field public static final ERROR_CODE_NETWORK_ERROR:I = 0x2

.field public static final ERROR_CODE_NO_FILL:I = 0x3


# instance fields
.field private final kA:Lcom/google/android/gms/internal/aj;

.field private final qA:I

.field private final qB:I

.field private final qC:Ljava/lang/String;

.field private final qD:I

.field private final qE:Ljava/lang/String;

.field private final qF:I

.field private final qG:I

.field private final qH:Ljava/lang/String;

.field private final qu:I

.field private final qv:I

.field private final qw:I

.field private final qx:I

.field private final qy:I

.field private final qz:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/aj;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/monkey/search/SearchAdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->a(Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest;->qu:I

    invoke-static {p1}, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->b(Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest;->qv:I

    invoke-static {p1}, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->c(Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest;->qw:I

    invoke-static {p1}, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->d(Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest;->qx:I

    invoke-static {p1}, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->e(Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest;->qy:I

    invoke-static {p1}, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->f(Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest;->qz:I

    invoke-static {p1}, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->g(Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest;->qA:I

    invoke-static {p1}, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->h(Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest;->qB:I

    invoke-static {p1}, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->i(Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest;->qC:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->j(Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest;->qD:I

    invoke-static {p1}, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->k(Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest;->qE:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->l(Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest;->qF:I

    invoke-static {p1}, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->m(Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest;->qG:I

    invoke-static {p1}, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->n(Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest;->qH:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/aj;

    invoke-static {p1}, Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;->o(Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;)Lcom/google/android/gms/internal/aj$a;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/aj;-><init>(Lcom/google/android/gms/internal/aj$a;Lcom/google/android/gms/monkey/search/SearchAdRequest;)V

    iput-object v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest;->kA:Lcom/google/android/gms/internal/aj;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;Lcom/google/android/gms/monkey/search/SearchAdRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;
    .param p2, "x1"    # Lcom/google/android/gms/monkey/search/SearchAdRequest$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/monkey/search/SearchAdRequest;-><init>(Lcom/google/android/gms/monkey/search/SearchAdRequest$Builder;)V

    return-void
.end method


# virtual methods
.method N()Lcom/google/android/gms/internal/aj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest;->kA:Lcom/google/android/gms/internal/aj;

    return-object v0
.end method

.method public getAnchorTextColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest;->qu:I

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest;->qv:I

    return v0
.end method

.method public getBackgroundGradientBottom()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest;->qw:I

    return v0
.end method

.method public getBackgroundGradientTop()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest;->qx:I

    return v0
.end method

.method public getBorderColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest;->qy:I

    return v0
.end method

.method public getBorderThickness()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest;->qz:I

    return v0
.end method

.method public getBorderType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest;->qA:I

    return v0
.end method

.method public getCallButtonColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest;->qB:I

    return v0
.end method

.method public getCustomChannels()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest;->qC:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionTextColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest;->qD:I

    return v0
.end method

.method public getFontFace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest;->qE:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderTextColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest;->qF:I

    return v0
.end method

.method public getHeaderTextSize()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest;->qG:I

    return v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest;->kA:Lcom/google/android/gms/internal/aj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aj;->getLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/monkey/mediation/NetworkExtras;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/monkey/mediation/NetworkExtras;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p1, "networkExtrasClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest;->kA:Lcom/google/android/gms/internal/aj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aj;->getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/monkey/mediation/NetworkExtras;

    move-result-object v0

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest;->qH:Ljava/lang/String;

    return-object v0
.end method

.method public isTestDevice(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/monkey/search/SearchAdRequest;->kA:Lcom/google/android/gms/internal/aj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aj;->isTestDevice(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
