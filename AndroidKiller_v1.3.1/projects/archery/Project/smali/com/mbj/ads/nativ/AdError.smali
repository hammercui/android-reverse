.class public Lcom/mbj/ads/nativ/AdError;
.super Ljava/lang/Object;


# static fields
.field public static final INTERNAL_ERROR:Lcom/mbj/ads/nativ/AdError;

.field public static final INTERNAL_ERROR_CODE:I = 0x7d1

.field public static final LOAD_TOO_FREQUENTLY:Lcom/mbj/ads/nativ/AdError;

.field public static final LOAD_TOO_FREQUENTLY_ERROR_CODE:I = 0x3ea

.field public static final MISSING_PROPERTIES:Lcom/mbj/ads/nativ/AdError;

.field public static final NETWORK_ERROR:Lcom/mbj/ads/nativ/AdError;

.field public static final NETWORK_ERROR_CODE:I = 0x3e8

.field public static final NO_FILL:Lcom/mbj/ads/nativ/AdError;

.field public static final NO_FILL_ERROR_CODE:I = 0x3e9

.field public static final SERVER_ERROR:Lcom/mbj/ads/nativ/AdError;

.field public static final SERVER_ERROR_CODE:I = 0x7d0

.field public static final TIME_OUT_CODE:I = 0xbb8

.field public static final TIME_OUT_ERROR:Lcom/mbj/ads/nativ/AdError;

.field public static final UNKNOW_ERROR:Lcom/mbj/ads/nativ/AdError;

.field public static final UNKNOW_ERROR_CODE:I = 0xbb9


# instance fields
.field private final errorCode:I

.field private final errorMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/mbj/ads/nativ/AdError;

    const/16 v1, 0x3e8

    const-string v2, "Network Error"

    invoke-direct {v0, v1, v2}, Lcom/mbj/ads/nativ/AdError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/mbj/ads/nativ/AdError;->NETWORK_ERROR:Lcom/mbj/ads/nativ/AdError;

    new-instance v0, Lcom/mbj/ads/nativ/AdError;

    const/16 v1, 0x3e9

    const-string v2, "No Fill"

    invoke-direct {v0, v1, v2}, Lcom/mbj/ads/nativ/AdError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/mbj/ads/nativ/AdError;->NO_FILL:Lcom/mbj/ads/nativ/AdError;

    new-instance v0, Lcom/mbj/ads/nativ/AdError;

    const/16 v1, 0x3ea

    const-string v2, "Ad was re-loaded too frequently"

    invoke-direct {v0, v1, v2}, Lcom/mbj/ads/nativ/AdError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/mbj/ads/nativ/AdError;->LOAD_TOO_FREQUENTLY:Lcom/mbj/ads/nativ/AdError;

    new-instance v0, Lcom/mbj/ads/nativ/AdError;

    const/16 v1, 0x7d0

    const-string v2, "Server Error"

    invoke-direct {v0, v1, v2}, Lcom/mbj/ads/nativ/AdError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/mbj/ads/nativ/AdError;->SERVER_ERROR:Lcom/mbj/ads/nativ/AdError;

    new-instance v0, Lcom/mbj/ads/nativ/AdError;

    const/16 v1, 0x7d1

    const-string v2, "Internal Error"

    invoke-direct {v0, v1, v2}, Lcom/mbj/ads/nativ/AdError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/mbj/ads/nativ/AdError;->INTERNAL_ERROR:Lcom/mbj/ads/nativ/AdError;

    new-instance v0, Lcom/mbj/ads/nativ/AdError;

    const/16 v1, 0xbb8

    const-string v2, "Time Out"

    invoke-direct {v0, v1, v2}, Lcom/mbj/ads/nativ/AdError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/mbj/ads/nativ/AdError;->TIME_OUT_ERROR:Lcom/mbj/ads/nativ/AdError;

    new-instance v0, Lcom/mbj/ads/nativ/AdError;

    const/16 v1, 0xbb9

    const-string v2, "unknow error"

    invoke-direct {v0, v1, v2}, Lcom/mbj/ads/nativ/AdError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/mbj/ads/nativ/AdError;->UNKNOW_ERROR:Lcom/mbj/ads/nativ/AdError;

    new-instance v0, Lcom/mbj/ads/nativ/AdError;

    const/16 v1, 0x7d2

    const-string v2, "Native ad failed to load due to missing properties"

    invoke-direct {v0, v1, v2}, Lcom/mbj/ads/nativ/AdError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/mbj/ads/nativ/AdError;->MISSING_PROPERTIES:Lcom/mbj/ads/nativ/AdError;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "unknown error"

    :cond_0
    iput p1, p0, Lcom/mbj/ads/nativ/AdError;->errorCode:I

    iput-object p2, p0, Lcom/mbj/ads/nativ/AdError;->errorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/mbj/ads/nativ/AdError;->errorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mbj/ads/nativ/AdError;->errorMessage:Ljava/lang/String;

    return-object v0
.end method
