.class public final Lcom/google/android/gms/wallet/WalletConstants;
.super Ljava/lang/Object;


# static fields
.field public static final ACTION_ENABLE_WALLET_OPTIMIZATION:Ljava/lang/String; = "com.google.android.gms.wallet.ENABLE_WALLET_OPTIMIZATION"

.field public static final ENVIRONMENT_PRODUCTION:I = 0x1

.field public static final ENVIRONMENT_SANDBOX:I = 0x0

.field public static final ENVIRONMENT_STRICT_SANDBOX:I = 0x2

.field public static final ERROR_CODE_AUTHENTICATION_FAILURE:I = 0x19b

.field public static final ERROR_CODE_BUYER_ACCOUNT_ERROR:I = 0x199

.field public static final ERROR_CODE_INVALID_PARAMETERS:I = 0x194

.field public static final ERROR_CODE_INVALID_TRANSACTION:I = 0x19a

.field public static final ERROR_CODE_MERCHANT_ACCOUNT_ERROR:I = 0x195

.field public static final ERROR_CODE_SERVICE_UNAVAILABLE:I = 0x192

.field public static final ERROR_CODE_SPENDING_LIMIT_EXCEEDED:I = 0x196

.field public static final ERROR_CODE_UNKNOWN:I = 0x19d

.field public static final ERROR_CODE_UNSUPPORTED_API_VERSION:I = 0x19c

.field public static final EXTRA_ERROR_CODE:Ljava/lang/String; = "com.google.android.gms.wallet.EXTRA_ERROR_CODE"

.field public static final EXTRA_FULL_WALLET:Ljava/lang/String; = "com.google.android.gms.wallet.EXTRA_FULL_WALLET"

.field public static final EXTRA_IS_USER_PREAUTHORIZED:Ljava/lang/String; = "com.google.android.gm.wallet.EXTRA_IS_USER_PREAUTHORIZED"

.field public static final EXTRA_MASKED_WALLET:Ljava/lang/String; = "com.google.android.gms.wallet.EXTRA_MASKED_WALLET"

.field public static final RESULT_ERROR:I = 0x1

.field public static final THEME_HOLO_DARK:I = 0x0

.field public static final THEME_HOLO_LIGHT:I = 0x1

.field public static final Zy:Landroid/accounts/Account;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/accounts/Account;

    const-string v1, "ACCOUNT_NO_WALLET"

    const-string v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/wallet/WalletConstants;->Zy:Landroid/accounts/Account;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
