.class public Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;
.super Ljava/lang/Object;
.source "TrustDefenderMobile.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    }
.end annotation


# static fields
.field private static final MAX_ATTR_LEN:I = 0xff

.field private static final TAG:Ljava/lang/String;

.field public static final THM_OPTION_ALL:I = 0xfe

.field public static final THM_OPTION_ALL_ASYNC:I = 0xff

.field public static final THM_OPTION_ALL_SYNC:I = 0xfe

.field public static final THM_OPTION_ASYNC:I = 0x1

.field private static final THM_OPTION_BROWSER_PLUGINS:I = 0x20

.field private static final THM_OPTION_BROWSER_STRING:I = 0x2

.field public static final THM_OPTION_LEAN_ASYNC:I = 0x3f

.field public static final THM_OPTION_LEAN_SYNC:I = 0x3e

.field private static final THM_OPTION_MIME_TYPES:I = 0x4

.field public static final THM_OPTION_MOST_ASYNC:I = 0x7f

.field public static final THM_OPTION_MOST_SYNC:I = 0x7e

.field private static final THM_OPTION_SCREEN_DIM:I = 0x10

.field public static final THM_OPTION_SYNC:I = 0x0

.field public static final THM_OPTION_TCP_FP:I = 0x40

.field private static final THM_OPTION_TCP_TARPIT:I = 0x80

.field private static final THM_OPTION_TIME_ZONE:I = 0x8

.field public static final THM_OPTION_WEBVIEW:I = 0x26

.field public static version:Ljava/lang/String;


# instance fields
.field customAttributes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field m_HTML5Cookie:Ljava/lang/String;

.field private m_TDLocationManager:Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;

.field private volatile m_active:Z

.field m_browserPluginCount:Ljava/lang/String;

.field m_browserPlugins:Ljava/lang/String;

.field m_browserPluginsFromJS:Ljava/lang/String;

.field m_browserStringFromJS:Ljava/lang/String;

.field private m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile m_cancel:Z

.field private m_context:Landroid/content/Context;

.field m_cookie:Ljava/lang/String;

.field m_deviceFingerprint:Ljava/lang/String;

.field m_deviceState:Ljava/lang/String;

.field m_dstDiff:I

.field m_flashCookie:Ljava/lang/String;

.field m_fp_server:Ljava/lang/String;

.field m_generate_session_id:Z

.field m_gmtOffset:I

.field private m_imei:Ljava/lang/String;

.field private m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

.field m_mimeTypeCount:I

.field m_mimeTypes:Ljava/lang/String;

.field m_options:I

.field m_org_id:Ljava/lang/String;

.field private m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotify;

.field private m_profile_thread:Ljava/lang/Thread;

.field m_referrerURL:Ljava/lang/String;

.field private m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

.field m_requests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field m_screenHeight:I

.field m_screenWidth:I

.field m_serverReportedIPAndTimestamp:Ljava/lang/String;

.field m_session_id:Ljava/lang/String;

.field m_socket:Ljava/net/Socket;

.field private volatile m_status:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

.field m_timeout_ms:I

.field m_url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    .line 62
    const-string v0, "TrustDefender Mobile: 1.2.4-3"

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->version:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_session_id:Ljava/lang/String;

    .line 126
    const/16 v0, 0x2710

    iput v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_timeout_ms:I

    .line 127
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_serverReportedIPAndTimestamp:Ljava/lang/String;

    .line 128
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_socket:Ljava/net/Socket;

    .line 129
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_flashCookie:Ljava/lang/String;

    .line 130
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_HTML5Cookie:Ljava/lang/String;

    .line 131
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cookie:Ljava/lang/String;

    .line 133
    iput v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_gmtOffset:I

    .line 134
    iput v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_dstDiff:I

    .line 135
    iput v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_screenWidth:I

    .line 136
    iput v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_screenHeight:I

    .line 137
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_url:Ljava/lang/String;

    .line 138
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_referrerURL:Ljava/lang/String;

    .line 140
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_browserPlugins:Ljava/lang/String;

    .line 141
    const-string v0, "0"

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_browserPluginCount:Ljava/lang/String;

    .line 142
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_browserPluginsFromJS:Ljava/lang/String;

    .line 143
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_browserStringFromJS:Ljava/lang/String;

    .line 145
    iput v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_mimeTypeCount:I

    .line 146
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_mimeTypes:Ljava/lang/String;

    .line 147
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_deviceFingerprint:Ljava/lang/String;

    .line 148
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_deviceState:Ljava/lang/String;

    .line 149
    iput v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_options:I

    .line 150
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_org_id:Ljava/lang/String;

    .line 151
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_fp_server:Ljava/lang/String;

    .line 152
    iput-boolean v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_generate_session_id:Z

    .line 154
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->customAttributes:Ljava/util/ArrayList;

    .line 156
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_context:Landroid/content/Context;

    .line 157
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profile_thread:Ljava/lang/Thread;

    .line 158
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotify;

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_requests:Ljava/util/ArrayList;

    .line 164
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 165
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 170
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_OK:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_status:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    .line 176
    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;

    invoke-direct {v0}, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;-><init>()V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_TDLocationManager:Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;

    return-void
.end method

.method private static MD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "inputStr"    # Ljava/lang/String;

    .prologue
    .line 258
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 259
    :cond_0
    const-string v8, ""

    .line 284
    :goto_0
    return-object v8

    .line 264
    :cond_1
    :try_start_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 266
    .local v2, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 268
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    .line 270
    .local v7, "outputData":[B
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 271
    .local v4, "hashStr":Ljava/lang/StringBuffer;
    new-instance v3, Ljava/util/Formatter;

    invoke-direct {v3, v4}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 272
    .local v3, "formatter":Ljava/util/Formatter;
    move-object v0, v7

    .local v0, "arr$":[B
    array-length v6, v7

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_2

    aget-byte v1, v0, v5

    .line 274
    .local v1, "b":B
    const-string v8, "%02x"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v3, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 272
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 276
    .end local v1    # "b":B
    :cond_2
    invoke-virtual {v3}, Ljava/util/Formatter;->close()V

    .line 277
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_0

    .line 282
    .end local v0    # "arr$":[B
    .end local v2    # "digest":Ljava/security/MessageDigest;
    .end local v3    # "formatter":Ljava/util/Formatter;
    .end local v4    # "hashStr":Ljava/lang/StringBuffer;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "outputData":[B
    :catch_0
    move-exception v8

    sget-object v8, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    .line 284
    const-string v8, ""

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;)Z
    .locals 1
    .param p0, "x0"    # Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cancel:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;)Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;
    .locals 1
    .param p0, "x0"    # Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    return-object v0
.end method

.method static synthetic access$400(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;Landroid/content/Context;Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;)V
    .locals 0
    .param p0, "x0"    # Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->getBrowserInfo(Landroid/content/Context;Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;)V

    return-void
.end method

.method private buildFlashCookieParameter()Lcom/turbomanage/httpclient/ParameterMap;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 644
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 646
    .local v1, "output":Ljava/lang/StringBuilder;
    new-instance v2, Lcom/turbomanage/httpclient/ParameterMap;

    invoke-direct {v2}, Lcom/turbomanage/httpclient/ParameterMap;-><init>()V

    .line 647
    .local v2, "params":Lcom/turbomanage/httpclient/ParameterMap;
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 648
    .local v3, "r":Ljava/util/Random;
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 649
    .local v0, "formatter":Ljava/util/Formatter;
    const-string v4, "%04d"

    new-array v5, v8, [Ljava/lang/Object;

    const/16 v6, 0x2710

    invoke-virtual {v3, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v0, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 650
    const-string v4, "nu"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/turbomanage/httpclient/ParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/turbomanage/httpclient/ParameterMap;

    .line 651
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 653
    const-string v4, "%16s%32s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_serverReportedIPAndTimestamp:Ljava/lang/String;

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_flashCookie:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {v0, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 654
    const-string v4, "fc"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/turbomanage/httpclient/ParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/turbomanage/httpclient/ParameterMap;

    .line 655
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V

    .line 656
    return-object v2
.end method

.method private buildHTML5Parameters()Lcom/turbomanage/httpclient/ParameterMap;
    .locals 6

    .prologue
    .line 662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 663
    .local v1, "output":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 664
    .local v0, "formatter":Ljava/util/Formatter;
    const-string v2, "%16s%32s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_serverReportedIPAndTimestamp:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_HTML5Cookie:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 665
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V

    .line 667
    new-instance v2, Lcom/turbomanage/httpclient/ParameterMap;

    invoke-direct {v2}, Lcom/turbomanage/httpclient/ParameterMap;-><init>()V

    const-string v3, "la"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/turbomanage/httpclient/ParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/turbomanage/httpclient/ParameterMap;

    move-result-object v2

    return-object v2
.end method

.method private buildJavaScriptParameters(ILjava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "options"    # I
    .param p2, "org_id"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0xff

    .line 673
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 674
    .local v7, "plain":Ljava/lang/StringBuilder;
    const-string v8, "w="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    iget-object v8, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_serverReportedIPAndTimestamp:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    and-int/lit8 v8, p1, 0x8

    if-eqz v8, :cond_0

    .line 679
    const-string v8, "&c="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    iget v8, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_gmtOffset:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 681
    const-string v8, "&z="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    iget v8, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_dstDiff:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 685
    :cond_0
    and-int/lit8 v8, p1, 0x10

    if-eqz v8, :cond_1

    .line 687
    const-string v8, "&f="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    iget v8, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_screenWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 689
    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    iget v8, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_screenHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 693
    :cond_1
    iget-object v8, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_url:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_url:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 695
    const-string v4, ""

    .line 698
    .local v4, "encodedURLString":Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_url:Ljava/lang/String;

    const-string v9, "utf-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 704
    :goto_0
    const-string v8, "&lh="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v11, :cond_2

    invoke-virtual {v4, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .end local v4    # "encodedURLString":Ljava/lang/String;
    :cond_2
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    :cond_3
    const-string v3, ""

    .line 712
    .local v3, "encodedRefURLString":Ljava/lang/String;
    :try_start_1
    iget-object v8, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_referrerURL:Ljava/lang/String;

    const-string v9, "utf-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 719
    :goto_1
    const-string v8, "&dr="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v11, :cond_4

    invoke-virtual {v3, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .end local v3    # "encodedRefURLString":Ljava/lang/String;
    :cond_4
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    and-int/lit8 v8, p1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_browserPluginCount:Ljava/lang/String;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_browserPluginCount:Ljava/lang/String;

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_browserPluginsFromJS:Ljava/lang/String;

    if-eqz v8, :cond_5

    .line 724
    const-string v8, "&p="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    iget-object v8, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_browserPlugins:Ljava/lang/String;

    if-nez v8, :cond_9

    const-string v8, ""

    :goto_2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    const-string v8, "&pl="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    iget-object v8, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_browserPluginCount:Ljava/lang/String;

    if-nez v8, :cond_a

    const-string v8, ""

    :goto_3
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    const-string v8, "&ph="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    iget-object v8, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_browserPluginsFromJS:Ljava/lang/String;

    if-nez v8, :cond_b

    const-string v8, ""

    :goto_4
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    :cond_5
    const-string v8, "&hh="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_session_id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    and-int/lit8 v8, p1, 0x4

    if-eqz v8, :cond_6

    iget v8, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_mimeTypeCount:I

    if-lez v8, :cond_6

    .line 737
    const-string v8, "&mt="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    iget-object v8, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_mimeTypes:Ljava/lang/String;

    if-nez v8, :cond_c

    const-string v8, ""

    :goto_5
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    const-string v8, "&mn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    iget v8, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_mimeTypeCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 744
    :cond_6
    const-string v8, "&mdf="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    iget-object v8, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_deviceFingerprint:Ljava/lang/String;

    if-nez v8, :cond_d

    const-string v8, ""

    :goto_6
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    const-string v8, "&mds="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    iget-object v8, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_deviceState:Ljava/lang/String;

    if-nez v8, :cond_e

    const-string v8, ""

    :goto_7
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    const-string v8, "&imei="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    iget-object v8, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_imei:Ljava/lang/String;

    if-nez v8, :cond_f

    const-string v8, ""

    :goto_8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    iget-object v8, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_TDLocationManager:Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;

    invoke-virtual {v8}, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->getLocation()Landroid/location/Location;

    move-result-object v6

    .line 754
    .local v6, "loc":Landroid/location/Location;
    if-eqz v6, :cond_7

    .line 756
    const-string v8, "&tdlat="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    const-string v8, "&tdlon="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    const-string v8, "&tdlacc="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    invoke-virtual {v6}, Landroid/location/Location;->getAccuracy()F

    move-result v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    sget-object v8, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Got lat/long/acc = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Landroid/location/Location;->getAccuracy()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 765
    :cond_7
    iget-object v8, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->customAttributes:Ljava/util/ArrayList;

    if-eqz v8, :cond_10

    iget-object v8, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->customAttributes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_10

    .line 767
    const/4 v1, 0x0

    .line 768
    .local v1, "count":I
    iget-object v8, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->customAttributes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 771
    .local v0, "attr":Ljava/lang/String;
    const-string v8, "&aca"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .local v2, "count":I
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 773
    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v11, :cond_8

    invoke-virtual {v0, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "attr":Ljava/lang/String;
    :cond_8
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    const/4 v8, 0x5

    if-ge v2, v8, :cond_10

    move v1, v2

    .line 776
    .end local v2    # "count":I
    .restart local v1    # "count":I
    goto :goto_9

    .line 702
    .end local v1    # "count":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "loc":Landroid/location/Location;
    .restart local v4    # "encodedURLString":Ljava/lang/String;
    :catch_0
    move-exception v8

    sget-object v8, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    goto/16 :goto_0

    .line 716
    .end local v4    # "encodedURLString":Ljava/lang/String;
    .restart local v3    # "encodedRefURLString":Ljava/lang/String;
    :catch_1
    move-exception v8

    sget-object v8, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    goto/16 :goto_1

    .line 725
    .end local v3    # "encodedRefURLString":Ljava/lang/String;
    :cond_9
    iget-object v8, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_browserPlugins:Ljava/lang/String;

    goto/16 :goto_2

    .line 727
    :cond_a
    iget-object v8, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_browserPluginCount:Ljava/lang/String;

    goto/16 :goto_3

    .line 729
    :cond_b
    iget-object v8, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_browserPluginsFromJS:Ljava/lang/String;

    invoke-static {v8}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    .line 738
    :cond_c
    iget-object v8, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_mimeTypes:Ljava/lang/String;

    invoke-static {v8}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_5

    .line 745
    :cond_d
    iget-object v8, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_deviceFingerprint:Ljava/lang/String;

    goto/16 :goto_6

    .line 747
    :cond_e
    iget-object v8, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_deviceState:Ljava/lang/String;

    goto/16 :goto_7

    .line 751
    :cond_f
    iget-object v8, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_imei:Ljava/lang/String;

    goto/16 :goto_8

    .line 780
    .restart local v6    # "loc":Landroid/location/Location;
    :cond_10
    const-string v8, "&at=agent_mobile&av="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    :try_start_2
    sget-object v8, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->version:Ljava/lang/String;

    const-string v9, "utf-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 790
    :goto_a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_session_id:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->xor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 787
    :catch_2
    move-exception v8

    sget-object v8, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    goto :goto_a
.end method

.method private static checkLength(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x20

    .line 1160
    move-object v0, p0

    .line 1161
    .local v0, "out":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 1162
    const/4 v1, 0x0

    .line 1176
    :goto_0
    return-object v1

    .line 1164
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_1

    move-object v1, v0

    .line 1165
    goto :goto_0

    .line 1167
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v2, :cond_2

    .line 1169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x20

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 1176
    goto :goto_0

    .line 1174
    :cond_2
    invoke-static {p0}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static checkPlugin(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 5
    .param p1, "plugin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 611
    .local p0, "plugins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 613
    .local v2, "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 614
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 619
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static containsPluginNamed(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 624
    .local p2, "pluginArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v1, "false"

    .line 625
    .local v1, "version":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    move-object v0, v2

    .line 627
    .local v0, "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 630
    const-string v2, "name"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "[abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXY -]"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 631
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 633
    const-string v1, "true"

    .line 637
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "^"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 625
    .end local v0    # "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static convertFromOctal(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 289
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 290
    .local v4, "len":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .local v5, "output":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5c

    if-eq v6, v7, :cond_0

    .line 319
    .end local p0    # "input":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 297
    .restart local p0    # "input":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_2

    .line 299
    const-string v6, "\\"

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 301
    .local v2, "end":I
    if-lez v2, :cond_1

    .line 303
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "chunk":Ljava/lang/String;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v3, v6

    .line 312
    const/16 v6, 0x8

    :try_start_0
    invoke-static {v0, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 307
    .end local v0    # "chunk":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "chunk":Ljava/lang/String;
    goto :goto_2

    .line 314
    :catch_0
    move-exception v1

    .line 316
    .local v1, "e":Ljava/lang/NumberFormatException;
    sget-object v6, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    const-string v7, "failed to convert"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 319
    .end local v0    # "chunk":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "end":I
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private getBrowserInfo(Landroid/content/Context;Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "jsInterface"    # Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 851
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 898
    :cond_0
    :goto_0
    return-void

    .line 852
    :cond_1
    new-instance v2, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;

    iget v5, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_options:I

    and-int/lit8 v5, v5, 0x26

    if-eqz v5, :cond_4

    move v5, v6

    :goto_1
    invoke-direct {v2, p1, p2, v5}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;-><init>(Landroid/content/Context;Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;Z)V

    .line 857
    .local v2, "jsExec":Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;
    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->init()V

    .line 859
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_0

    .line 861
    iget v5, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_options:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_5

    :goto_2
    invoke-virtual {v2, v6, p1}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->getUserAgentString(ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_browserStringFromJS:Ljava/lang/String;

    .line 863
    sget-object v5, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v5, "getBrowserInfo: "

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_browserStringFromJS:Ljava/lang/String;

    if-nez v5, :cond_6

    const-string v5, "null"

    :goto_3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    iget v5, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_options:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_2

    .line 867
    const-string v5, "(function () { var plugins_string=\'\', i=0; for (p=navigator.plugins[0]; i< navigator.plugins.length;p=navigator.plugins[i++]) {  plugins_string += p.name + \'<FIELD_SEP>\' + p.description + \'<FIELD_SEP>\' + p.filename + \'<FIELD_SEP>\' + p.length.toString() + \'<REC_SEP>\'; } return plugins_string;})();"

    invoke-virtual {v2, v5}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->getJSResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 870
    .local v3, "jsPluginList":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 872
    invoke-direct {p0, v3}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->parseBrowserInfo_Plugins(Ljava/lang/String;)V

    .line 876
    .end local v3    # "jsPluginList":Ljava/lang/String;
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_options:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_0

    .line 878
    const-string v5, "navigator.mimeTypes.length"

    invoke-virtual {v2, v5}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->getJSResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 880
    .local v4, "result":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 884
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_mimeTypeCount:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    :cond_3
    :goto_4
    const-string v1, "(function () { var mime_string=\'\', i=0; for (var m=navigator.mimeTypes[0]; i< navigator.mimeTypes.length;m=navigator.mimeTypes[i++]) {  mime_string += m.type; } return mime_string;})();"

    .line 892
    .local v1, "js":Ljava/lang/String;
    invoke-virtual {v2, v1}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->getJSResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_mimeTypes:Ljava/lang/String;

    .line 894
    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_mimeTypes:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 895
    sget-object v5, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Got:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_mimeTypes:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .end local v1    # "js":Ljava/lang/String;
    .end local v2    # "jsExec":Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;
    .end local v4    # "result":Ljava/lang/String;
    :cond_4
    move v5, v7

    .line 852
    goto :goto_1

    .restart local v2    # "jsExec":Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;
    :cond_5
    move v6, v7

    .line 861
    goto :goto_2

    .line 863
    :cond_6
    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_browserStringFromJS:Ljava/lang/String;

    goto :goto_3

    .line 886
    .restart local v4    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 888
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v5, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    const-string v6, "failed to convert"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method private static getCPUInfo()Ljava/lang/String;
    .locals 5

    .prologue
    .line 514
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 515
    .local v1, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Processor"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "BogoMips"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "Hardware"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "Serial"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 517
    const-string v2, "/proc/cpuinfo"

    invoke-static {v2, v1}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->getInfoAlt(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 519
    .local v0, "info":Ljava/lang/String;
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getCPUInfo returned: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    return-object v0
.end method

.method private static getDeviceFingerprint(Landroid/content/Context;)Ljava/lang/String;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 527
    sget-object v10, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    .line 528
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 530
    .local v4, "fingerprint":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, ""

    .line 578
    :goto_0
    return-object v10

    .line 533
    :cond_0
    const-string v10, "phone"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 534
    .local v5, "manager":Landroid/telephony/TelephonyManager;
    const-string v2, "Unknown"

    .line 536
    .local v2, "carrierName":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 539
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    .line 542
    :cond_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    .line 550
    .local v6, "path":Ljava/io/File;
    new-instance v7, Landroid/os/StatFs;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 551
    .local v7, "stat":Landroid/os/StatFs;
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v10

    int-to-long v0, v10

    .line 552
    .local v0, "blockSize":J
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockCount()I

    move-result v10

    int-to-long v8, v10

    .line 553
    .local v8, "totalBlocks":J
    long-to-float v10, v8

    long-to-float v11, v0

    mul-float/2addr v10, v11

    const/high16 v11, 0x44800000    # 1024.0f

    div-float/2addr v10, v11

    const/high16 v11, 0x44800000    # 1024.0f

    div-float/2addr v10, v11

    const/high16 v11, 0x44800000    # 1024.0f

    div-float/2addr v10, v11

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 556
    const-string v10, "window"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 557
    .local v3, "display":Landroid/view/Display;
    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 566
    sget-object v10, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    .line 567
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "Processor"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string v13, "BogoMips"

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-string v13, "Hardware"

    aput-object v13, v11, v12

    const/4 v12, 0x3

    const-string v13, "Serial"

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const-string v11, "/proc/cpuinfo"

    invoke-static {v11, v10}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->getInfoAlt(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "getCPUInfo returned: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    sget-object v10, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    .line 571
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "MemTotal"

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const-string v11, "/proc/meminfo"

    invoke-static {v11, v10}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->getInfoAlt(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "getMemInfo returned: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    sget-object v10, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    sget-object v10, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "getDeviceFingerprint returned: hash("

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0
.end method

.method private static getDeviceState()Ljava/lang/String;
    .locals 15

    .prologue
    const/high16 v14, 0x44800000    # 1024.0f

    .line 583
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 586
    .local v9, "state":Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    .line 587
    .local v6, "path":Ljava/io/File;
    new-instance v8, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;-><init>(Ljava/lang/String;)V

    .line 588
    .local v8, "stat":Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;
    invoke-virtual {v8}, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->getBlockSize()J

    move-result-wide v2

    .line 589
    .local v2, "blockSize":J
    invoke-virtual {v8}, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->getAvailableBlocks()J

    move-result-wide v0

    .line 590
    .local v0, "availableBlocks":J
    const/high16 v7, 0x3f800000    # 1.0f

    .line 591
    .local v7, "size":F
    mul-long v10, v0, v2

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_0

    .line 593
    long-to-float v10, v0

    long-to-float v11, v2

    mul-float/2addr v10, v11

    div-float/2addr v10, v14

    div-float/2addr v10, v14

    div-float v7, v10, v14

    .line 595
    :cond_0
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 596
    const-string v10, " - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    div-long v4, v10, v12

    .line 600
    .local v4, "bootTime":J
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    sget-object v10, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "getDeviceState: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method

.method private static getFlashProperties()Lcom/turbomanage/httpclient/ParameterMap;
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 795
    new-instance v6, Lcom/turbomanage/httpclient/ParameterMap;

    invoke-direct {v6}, Lcom/turbomanage/httpclient/ParameterMap;-><init>()V

    .line 797
    .local v6, "params":Lcom/turbomanage/httpclient/ParameterMap;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 798
    .local v5, "output":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/util/Formatter;

    invoke-direct {v3, v5}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 799
    .local v3, "formatter":Ljava/util/Formatter;
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    .line 801
    .local v7, "rand":Ljava/util/Random;
    invoke-static {}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->getFontList()Ljava/util/List;

    move-result-object v2

    .line 802
    .local v2, "fonts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 804
    .local v1, "fontString":Ljava/lang/StringBuilder;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 806
    .local v0, "f":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 809
    .end local v0    # "f":Ljava/lang/String;
    :cond_0
    const-string v8, "%04d"

    new-array v9, v12, [Ljava/lang/Object;

    const/16 v10, 0x2710

    invoke-virtual {v7, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v3, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 810
    const-string v8, "nu"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/turbomanage/httpclient/ParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/turbomanage/httpclient/ParameterMap;

    .line 811
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 813
    const-string v8, "%d"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v3, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 814
    const-string v8, "ftsn"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/turbomanage/httpclient/ParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/turbomanage/httpclient/ParameterMap;

    .line 815
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 817
    const-string v8, "v"

    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/turbomanage/httpclient/ParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/turbomanage/httpclient/ParameterMap;

    .line 818
    const-string v8, "o"

    sget-object v9, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/turbomanage/httpclient/ParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/turbomanage/httpclient/ParameterMap;

    .line 819
    const-string v8, "mf"

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/turbomanage/httpclient/ParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/turbomanage/httpclient/ParameterMap;

    .line 820
    const-string v8, "l"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/turbomanage/httpclient/ParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/turbomanage/httpclient/ParameterMap;

    .line 821
    const-string v8, "fts"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/turbomanage/httpclient/ParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/turbomanage/httpclient/ParameterMap;

    .line 823
    sget-object v8, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "getFlashProperties: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/turbomanage/httpclient/ParameterMap;->urlEncode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    invoke-virtual {v3}, Ljava/util/Formatter;->close()V

    .line 825
    return-object v6
.end method

.method private static getFontList()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 426
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 427
    .local v4, "fontNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Ljava/io/File;

    const-string v9, "/system/fonts/"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 429
    .local v8, "temp":Ljava/io/File;
    const-string v5, ".ttf"

    .line 430
    .local v5, "fontSuffix":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 431
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_1

    .line 443
    :cond_0
    return-object v4

    .line 433
    :cond_1
    move-object v0, v1

    .local v0, "arr$":[Ljava/io/File;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v2, v0, v6

    .line 435
    .local v2, "font":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 437
    .local v3, "fontName":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 439
    const/4 v9, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v3, v9, v10}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method private getIPAddressFromServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/StringBuilder;)Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    .locals 8
    .param p1, "fp_server"    # Ljava/lang/String;
    .param p2, "org_id"    # Ljava/lang/String;
    .param p3, "session_id"    # Ljava/lang/String;
    .param p4, "timeout"    # I
    .param p5, "ip_address"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 324
    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/FetchW;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/threatmetrix/TrustDefenderMobile/FetchW;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 329
    .local v0, "fetch":Lcom/threatmetrix/TrustDefenderMobile/FetchW;
    :try_start_0
    new-instance v7, Ljava/lang/Thread;

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 330
    .local v7, "t":Ljava/lang/Thread;
    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 333
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 334
    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_requests:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    int-to-long v1, p4

    invoke-virtual {v7, v1, v2}, Ljava/lang/Thread;->join(J)V

    .line 337
    invoke-virtual {v7}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    const/4 v7, 0x0

    .line 346
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_requests:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 347
    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 373
    if-eqz p5, :cond_3

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 375
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fetched "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_OK:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    .line 386
    .end local v7    # "t":Ljava/lang/Thread;
    :goto_0
    return-object v1

    .line 346
    .restart local v7    # "t":Ljava/lang/Thread;
    :catchall_0
    move-exception v1

    :try_start_3
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_requests:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 347
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 371
    .end local v7    # "t":Ljava/lang/Thread;
    :catch_0
    move-exception v6

    .line 352
    .local v6, "e":Ljava/lang/RuntimeException;
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    .line 353
    throw v6

    .line 358
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    iget-boolean v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cancel:Z

    if-eqz v1, :cond_1

    .line 361
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    .line 365
    :cond_1
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to fetch W: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/threatmetrix/TrustDefenderMobile/FetchW;->statusCode:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    invoke-virtual {v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/FetchW;->statusCode:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_OK:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    if-eq v1, v2, :cond_2

    .line 368
    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/FetchW;->statusCode:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    goto :goto_0

    .line 370
    :cond_2
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_Connection_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    goto :goto_0

    .line 380
    .restart local v7    # "t":Ljava/lang/Thread;
    :cond_3
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to fetch w: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/FetchW;->statusCode:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    invoke-virtual {v3}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/FetchW;->statusCode:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_OK:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    if-eq v1, v2, :cond_4

    .line 383
    iget-object v1, v0, Lcom/threatmetrix/TrustDefenderMobile/FetchW;->statusCode:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    goto :goto_0

    .line 386
    :cond_4
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_Connection_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    goto :goto_0
.end method

.method private static getInfoAlt(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x1

    .line 448
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 449
    .local v2, "info":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 451
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 455
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "raw":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 460
    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 461
    .local v5, "params":[Ljava/lang/String;
    array-length v7, v5

    if-eqz v7, :cond_0

    .line 462
    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 464
    .local v3, "paramName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    .line 465
    const-string v4, ""

    .line 468
    .local v4, "paramValue":Ljava/lang/String;
    array-length v7, v5

    if-le v7, v9, :cond_1

    .line 469
    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 471
    :cond_1
    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 473
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 480
    .end local v3    # "paramName":Ljava/lang/String;
    .end local v4    # "paramValue":Ljava/lang/String;
    .end local v5    # "params":[Ljava/lang/String;
    .end local v6    # "raw":Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    sget-object v7, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 484
    if-eqz v0, :cond_2

    .line 488
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 497
    :cond_2
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 484
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "raw":Ljava/lang/String;
    :cond_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v0, v1

    .line 493
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 492
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v7

    sget-object v7, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    move-object v0, v1

    .line 493
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 492
    .end local v6    # "raw":Ljava/lang/String;
    :catch_2
    move-exception v7

    sget-object v7, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    goto :goto_2

    .line 484
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v0, :cond_4

    .line 488
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 493
    :cond_4
    :goto_4
    throw v7

    .line 492
    :catch_3
    move-exception v8

    sget-object v8, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    goto :goto_4

    .line 484
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 480
    :catch_4
    move-exception v7

    goto :goto_1
.end method

.method private static getMemInfo()Ljava/lang/String;
    .locals 5

    .prologue
    .line 502
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 503
    .local v1, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "MemTotal"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 505
    const-string v2, "/proc/meminfo"

    invoke-static {v2, v1}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->getInfoAlt(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, "info":Ljava/lang/String;
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getMemInfo returned: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    return-object v0
.end method

.method private getTimeZoneInfo()Z
    .locals 3

    .prologue
    const v2, 0xea60

    .line 832
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 833
    .local v0, "tz":Ljava/util/TimeZone;
    if-eqz v0, :cond_0

    .line 835
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    div-int/2addr v1, v2

    iput v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_gmtOffset:I

    .line 836
    invoke-virtual {v0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v1

    div-int/2addr v1, v2

    iput v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_dstDiff:I

    .line 839
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getTimeZoneInfo: dstDiff="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_dstDiff:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " gmfOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_gmtOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 841
    const/4 v1, 0x1

    .line 844
    :goto_0
    return v1

    .line 843
    :cond_0
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    const-string v2, "getTimeZoneInfo: FAILED"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static new_session_id()Ljava/lang/String;
    .locals 4

    .prologue
    .line 418
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 420
    .local v0, "uuid":Ljava/util/UUID;
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private parseBrowserInfo(Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;)V
    .locals 7
    .param p1, "jsInterface"    # Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    .prologue
    const/4 v6, 0x0

    .line 949
    const/4 v3, 0x0

    .line 951
    .local v3, "retValIndex":I
    iget v4, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_options:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->returnedValues:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 953
    iget-object v4, p1, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->returnedValues:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 954
    .local v1, "jsPluginList":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    .line 956
    if-eqz v1, :cond_0

    .line 958
    invoke-direct {p0, v1}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->parseBrowserInfo_Plugins(Ljava/lang/String;)V

    .line 962
    .end local v1    # "jsPluginList":Ljava/lang/String;
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_2

    iget v4, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_options:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    iget-object v4, p1, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->returnedValues:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v3, :cond_2

    .line 964
    iget-object v4, p1, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->returnedValues:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 965
    .local v2, "result":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    .line 967
    if-eqz v2, :cond_3

    .line 971
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_mimeTypeCount:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 982
    :goto_0
    iget v4, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_mimeTypeCount:I

    if-lez v4, :cond_1

    iget-object v4, p1, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->returnedValues:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v3, :cond_1

    .line 984
    iget-object v4, p1, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;->returnedValues:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_mimeTypes:Ljava/lang/String;

    .line 985
    :cond_1
    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Got mime "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_mimeTypeCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_mimeTypes:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    .end local v2    # "result":Ljava/lang/String;
    :cond_2
    return-void

    .line 973
    .restart local v2    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 975
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    const-string v5, "failed to convert"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 976
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    iput v6, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_mimeTypeCount:I

    goto :goto_0
.end method

.method private parseBrowserInfo_Plugins(Ljava/lang/String;)V
    .locals 10
    .param p1, "jsPluginList"    # Ljava/lang/String;

    .prologue
    .line 903
    const-string v8, "(<FIELD_SEP>|<REC_SEP>)"

    const-string v9, ""

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_browserPluginsFromJS:Ljava/lang/String;

    .line 905
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 907
    .local v5, "pluginArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v8, "<REC_SEP>"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v6, v1, v2

    .line 909
    .local v6, "pluginString":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 944
    .end local v6    # "pluginString":Ljava/lang/String;
    :goto_1
    return-void

    .line 910
    .restart local v6    # "pluginString":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 912
    .local v4, "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "<FIELD_SEP>"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 913
    .local v0, "arr":[Ljava/lang/String;
    array-length v8, v0

    const/4 v9, 0x4

    if-ne v8, v9, :cond_1

    .line 915
    const-string v8, "name"

    const/4 v9, 0x0

    aget-object v9, v0, v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    const-string v8, "description"

    const/4 v9, 0x1

    aget-object v9, v0, v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    const-string v8, "filename"

    const/4 v9, 0x2

    aget-object v9, v0, v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    const-string v8, "length"

    const/4 v9, 0x3

    aget-object v9, v0, v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 907
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 924
    .end local v0    # "arr":[Ljava/lang/String;
    .end local v4    # "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "pluginString":Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_browserPluginCount:Ljava/lang/String;

    .line 926
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 928
    .local v7, "plugins":Ljava/lang/StringBuilder;
    const-string v8, "QuickTime Plug-in"

    const-string v9, "plugin_quicktime"

    invoke-static {v8, v9, v5}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->containsPluginNamed(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    const-string v8, "Adobe Acrobat"

    const-string v9, "plugin_adobe_acrobat"

    invoke-static {v8, v9, v5}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->containsPluginNamed(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    const-string v8, "Java"

    const-string v9, "plugin_java"

    invoke-static {v8, v9, v5}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->containsPluginNamed(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 931
    const-string v8, "SVG Viewer"

    const-string v9, "plugin_svg_viewer"

    invoke-static {v8, v9, v5}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->containsPluginNamed(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    const-string v8, "Flash"

    const-string v9, "plugin_flash"

    invoke-static {v8, v9, v5}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->containsPluginNamed(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 933
    const-string v8, "Windows Media Player"

    const-string v9, "plugin_windows_media_player"

    invoke-static {v8, v9, v5}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->containsPluginNamed(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    const-string v8, "Silverlight"

    const-string v9, "plugin_silverlight"

    invoke-static {v8, v9, v5}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->containsPluginNamed(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    const-string v8, "Real Player"

    const-string v9, "plugin_realplayer"

    invoke-static {v8, v9, v5}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->containsPluginNamed(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    const-string v8, "ShockWave Director"

    const-string v9, "plugin_shockwave"

    invoke-static {v8, v9, v5}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->containsPluginNamed(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    const-string v8, "VLC"

    const-string v9, "plugin_vlc_player"

    invoke-static {v8, v9, v5}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->containsPluginNamed(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    const-string v8, "DevalVR"

    const-string v9, "plugin_devalvr"

    invoke-static {v8, v9, v5}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->containsPluginNamed(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 940
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_browserPlugins:Ljava/lang/String;

    .line 943
    sget-object v8, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Got"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_browserPluginCount:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_browserPlugins:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 182
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_flashCookie:Ljava/lang/String;

    .line 183
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_HTML5Cookie:Ljava/lang/String;

    .line 184
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cookie:Ljava/lang/String;

    .line 185
    iput v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_gmtOffset:I

    .line 186
    iput v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_dstDiff:I

    .line 187
    iput v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_screenWidth:I

    .line 188
    iput v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_screenHeight:I

    .line 189
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_browserPluginsFromJS:Ljava/lang/String;

    .line 190
    const-string v0, "0"

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_browserPluginCount:Ljava/lang/String;

    .line 191
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_browserPluginsFromJS:Ljava/lang/String;

    .line 192
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_browserStringFromJS:Ljava/lang/String;

    .line 193
    iput v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_mimeTypeCount:I

    .line 194
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_mimeTypes:Ljava/lang/String;

    .line 195
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_deviceFingerprint:Ljava/lang/String;

    .line 196
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_deviceState:Ljava/lang/String;

    .line 197
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_serverReportedIPAndTimestamp:Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_TDLocationManager:Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_TDLocationManager:Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->unregister()V

    .line 203
    :cond_0
    return-void
.end method

.method private static xor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 392
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 394
    .local v6, "inputWithLen":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    .line 395
    .local v8, "len":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 396
    .local v9, "output":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, v9}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 398
    .local v1, "formatter":Ljava/util/Formatter;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 399
    .local v7, "k_len":I
    const/4 v4, 0x0

    .line 401
    .local v4, "index":I
    const/16 v10, 0x10

    new-array v2, v10, [C

    fill-array-data v2, :array_0

    .line 404
    .local v2, "hex_chars":[C
    const/4 v3, 0x0

    .local v3, "i":I
    move v5, v4

    .end local v4    # "index":I
    .local v5, "index":I
    :goto_0
    if-ge v3, v8, :cond_1

    .line 406
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    and-int/lit8 v11, v11, 0xa

    xor-int/2addr v10, v11

    int-to-char v0, v10

    .line 407
    .local v0, "c":C
    if-lt v4, v7, :cond_0

    const/4 v4, 0x0

    .line 409
    :cond_0
    const-string v10, "%c"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    shr-int/lit8 v13, v0, 0x4

    and-int/lit8 v13, v13, 0xf

    aget-char v13, v2, v13

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v1, v10, v11}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 410
    const-string v10, "%c"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    and-int/lit8 v13, v0, 0xf

    aget-char v13, v2, v13

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v1, v10, v11}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 404
    add-int/lit8 v3, v3, 0x1

    move v5, v4

    .end local v4    # "index":I
    .restart local v5    # "index":I
    goto :goto_0

    .line 412
    .end local v0    # "c":C
    :cond_1
    invoke-virtual {v1}, Ljava/util/Formatter;->close()V

    .line 413
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 401
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method


# virtual methods
.method public cancel()V
    .locals 5

    .prologue
    .line 993
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    .line 994
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cancel:Z

    .line 997
    :try_start_0
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    .line 998
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1000
    iget-boolean v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_active:Z

    if-eqz v2, :cond_3

    .line 1002
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    .line 1003
    invoke-virtual {p0}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->interruptThreads()V

    .line 1005
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profile_thread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    .line 1007
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sending interrupt to profile thread TID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profile_thread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1008
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profile_thread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 1011
    :cond_0
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_requests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1016
    .local v1, "t":Ljava/lang/Thread;
    :try_start_1
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    .line 1017
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1021
    :catch_0
    move-exception v2

    :try_start_2
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    goto :goto_0

    .line 1024
    .end local v1    # "t":Ljava/lang/Thread;
    :cond_1
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_requests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1026
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profile_thread:Ljava/lang/Thread;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profile_thread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    .line 1030
    :try_start_3
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    .line 1031
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profile_thread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1037
    :cond_2
    :goto_1
    :try_start_4
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1042
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1043
    return-void

    .line 1042
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public completeProfileRequest()V
    .locals 54

    .prologue
    .line 1185
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1186
    .local v8, "tempIP":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_fp_server:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_org_id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_session_id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_timeout_ms:I

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->getIPAddressFromServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/StringBuilder;)Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    move-result-object v52

    .line 1188
    .local v52, "status":Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_OK:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    move-object/from16 v0, v52

    if-ne v0, v3, :cond_4

    .line 1190
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_serverReportedIPAndTimestamp:Ljava/lang/String;

    .line 1200
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cancel:Z

    if-nez v3, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_0
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1677
    .end local v8    # "tempIP":Ljava/lang/StringBuilder;
    .end local v52    # "status":Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    :catch_0
    move-exception v35

    .line 1679
    .local v35, "e":Ljava/lang/InterruptedException;
    :try_start_1
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    .line 1680
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_Internal_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_status:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1684
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cancel:Z

    if-eqz v3, :cond_1

    .line 1686
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_Interrupted_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_status:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    .line 1688
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1695
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1697
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotify;

    if-eqz v3, :cond_2

    .line 1699
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotify;

    invoke-interface {v3}, Lcom/threatmetrix/TrustDefenderMobile/ProfileNotify;->complete()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_c

    .line 1708
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1709
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    :goto_0
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1711
    .end local v35    # "e":Ljava/lang/InterruptedException;
    :cond_3
    :goto_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_active:Z

    .line 1712
    return-void

    .line 1194
    .restart local v8    # "tempIP":Ljava/lang/StringBuilder;
    .restart local v52    # "status":Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    :cond_4
    :try_start_3
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    .line 1196
    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_status:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1684
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cancel:Z

    if-eqz v3, :cond_5

    .line 1686
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_Interrupted_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_status:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    .line 1688
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1695
    :cond_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1697
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotify;

    if-eqz v3, :cond_6

    .line 1699
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotify;

    invoke-interface {v3}, Lcom/threatmetrix/TrustDefenderMobile/ProfileNotify;->complete()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_e

    .line 1708
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1709
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .line 1202
    :cond_7
    const/16 v46, 0x0

    .line 1203
    .local v46, "latch":Ljava/util/concurrent/CountDownLatch;
    :try_start_5
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    .line 1204
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cancel:Z

    if-nez v3, :cond_8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_8
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1684
    .end local v8    # "tempIP":Ljava/lang/StringBuilder;
    .end local v46    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v52    # "status":Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    :catchall_0
    move-exception v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cancel:Z

    if-eqz v4, :cond_9

    .line 1686
    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_Interrupted_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_status:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    .line 1688
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1695
    :cond_9
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1697
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotify;

    if-eqz v4, :cond_a

    .line 1699
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotify;

    invoke-interface {v4}, Lcom/threatmetrix/TrustDefenderMobile/ProfileNotify;->complete()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_b

    .line 1708
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1709
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    :goto_2
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1711
    :cond_b
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_active:Z

    .line 1684
    throw v3

    .line 1206
    .restart local v8    # "tempIP":Ljava/lang/StringBuilder;
    .restart local v46    # "latch":Ljava/util/concurrent/CountDownLatch;
    .restart local v52    # "status":Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    :cond_c
    :try_start_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_options:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_options:I

    and-int/lit8 v3, v3, 0x26

    if-nez v3, :cond_10

    .line 1209
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_context:Landroid/content/Context;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->getBrowserInfo(Landroid/content/Context;Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;)V

    .line 1280
    :cond_e
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cancel:Z

    if-nez v3, :cond_f

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_17

    :cond_f
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .line 1215
    :cond_10
    invoke-static {}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->isBrokenJSInterface()Z

    move-result v3

    if-nez v3, :cond_11

    invoke-static {}, Lcom/threatmetrix/TrustDefenderMobile/JSExecutor;->hasAsyncInterface()Z

    move-result v3

    if-eqz v3, :cond_14

    :cond_11
    const/16 v33, 0x1

    .line 1222
    .local v33, "altJSInterface":Z
    :goto_4
    const/16 v47, 0x1

    .line 1223
    .local v47, "latchCount":I
    if-eqz v33, :cond_13

    .line 1225
    move-object/from16 v0, p0

    iget v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_options:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_12

    .line 1226
    add-int/lit8 v47, v47, 0x1

    .line 1228
    :cond_12
    move-object/from16 v0, p0

    iget v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_options:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_13

    .line 1229
    add-int/lit8 v47, v47, 0x2

    .line 1231
    :cond_13
    new-instance v46, Ljava/util/concurrent/CountDownLatch;

    .end local v46    # "latch":Ljava/util/concurrent/CountDownLatch;
    invoke-direct/range {v46 .. v47}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1232
    .restart local v46    # "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v40, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, v40

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1234
    .local v40, "handler":Landroid/os/Handler;
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Firing off getBrowserInfo on UI thread using latch: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v47

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1237
    new-instance v4, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    if-eqz v33, :cond_15

    move-object/from16 v3, v46

    :goto_5
    invoke-direct {v4, v3}, Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    .line 1239
    new-instance v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, v46

    invoke-direct {v3, v0, v1, v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$1;-><init>(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;Ljava/util/concurrent/CountDownLatch;)V

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1264
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "waiting for getBrowserInfo to finished, latch: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v46 .. v46}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1266
    if-eqz v33, :cond_e

    .line 1268
    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v46

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1270
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_jsInterface:Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->parseBrowserInfo(Lcom/threatmetrix/TrustDefenderMobile/JavaScriptInterface;)V

    goto/16 :goto_3

    .line 1215
    .end local v33    # "altJSInterface":Z
    .end local v40    # "handler":Landroid/os/Handler;
    .end local v47    # "latchCount":I
    :cond_14
    const/16 v33, 0x0

    goto/16 :goto_4

    .line 1237
    .restart local v33    # "altJSInterface":Z
    .restart local v40    # "handler":Landroid/os/Handler;
    .restart local v47    # "latchCount":I
    :cond_15
    const/4 v3, 0x0

    goto :goto_5

    .line 1274
    :cond_16
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getBrowserInfo no response from UI thread before timeout with latch: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1283
    .end local v33    # "altJSInterface":Z
    .end local v40    # "handler":Landroid/os/Handler;
    .end local v47    # "latchCount":I
    :cond_17
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    .line 1284
    move-object/from16 v0, p0

    iget v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_options:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_18

    .line 1286
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    if-eqz v3, :cond_19

    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    const v5, 0xea60

    div-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_gmtOffset:I

    invoke-virtual {v3}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v3

    const v4, 0xea60

    div-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_dstDiff:I

    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getTimeZoneInfo: dstDiff="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_dstDiff:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " gmfOffset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_gmtOffset:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1290
    :cond_18
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_context:Landroid/content/Context;

    const-string v4, "ThreatMetrixMobileSDK"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v49

    .line 1293
    .local v49, "preferences":Landroid/content/SharedPreferences;
    const-string v3, "ThreatMetrixMobileSDK"

    const/4 v4, 0x0

    move-object/from16 v0, v49

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 1294
    .local v39, "genID":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cancel:Z

    if-eqz v3, :cond_1a

    .line 1296
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .line 1286
    .end local v39    # "genID":Ljava/lang/String;
    .end local v49    # "preferences":Landroid/content/SharedPreferences;
    :cond_19
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    const-string v4, "getTimeZoneInfo: FAILED"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1298
    .restart local v39    # "genID":Ljava/lang/String;
    .restart local v49    # "preferences":Landroid/content/SharedPreferences;
    :cond_1a
    if-nez v39, :cond_1b

    .line 1300
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    .line 1301
    new-instance v50, Ljava/security/SecureRandom;

    invoke-direct/range {v50 .. v50}, Ljava/security/SecureRandom;-><init>()V

    .line 1302
    .local v50, "random":Ljava/security/SecureRandom;
    new-instance v3, Ljava/math/BigInteger;

    const/16 v4, 0x40

    move-object/from16 v0, v50

    invoke-direct {v3, v4, v0}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v39

    .line 1304
    invoke-interface/range {v49 .. v49}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v35

    .line 1305
    .local v35, "e":Landroid/content/SharedPreferences$Editor;
    const-string v3, "ThreatMetrixMobileSDK"

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1306
    invoke-interface/range {v35 .. v35}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1307
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cancel:Z

    if-eqz v3, :cond_1b

    .line 1308
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .line 1311
    .end local v35    # "e":Landroid/content/SharedPreferences$Editor;
    .end local v50    # "random":Ljava/security/SecureRandom;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cookie:Ljava/lang/String;

    .line 1312
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cookie:Ljava/lang/String;

    if-eqz v3, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cookie:Ljava/lang/String;

    const-string v4, "9774d56d682e549c"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cookie:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xf

    if-ge v3, v4, :cond_1f

    .line 1314
    :cond_1c
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    .line 1316
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cookie:Ljava/lang/String;

    .line 1323
    :goto_7
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "using generated ID for HTML5Cookie:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1324
    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_HTML5Cookie:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1329
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_context:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_imei:Ljava/lang/String;

    .line 1330
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "using getDeviceId for imei: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_imei:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1337
    :goto_8
    :try_start_9
    sget-object v3, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    if-nez v3, :cond_20

    const-string v51, ""

    .line 1342
    .local v51, "serial":Ljava/lang/String;
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_imei:Ljava/lang/String;

    if-eqz v3, :cond_21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_imei:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_imei:Ljava/lang/String;

    const-string v4, "000000000000000"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 1344
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v51

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_imei:Ljava/lang/String;

    .line 1356
    :goto_a
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    .line 1358
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_flashCookie:Ljava/lang/String;

    if-nez v3, :cond_1d

    .line 1361
    if-eqz v51, :cond_24

    invoke-virtual/range {v51 .. v51}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_24

    .line 1363
    invoke-static/range {v51 .. v51}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_flashCookie:Ljava/lang/String;

    .line 1372
    :cond_1d
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cancel:Z

    if-nez v3, :cond_1e

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_25

    :cond_1e
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .line 1321
    .end local v51    # "serial":Ljava/lang/String;
    :cond_1f
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "using ANDROID_ID for cookie:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cookie:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 1334
    :catch_1
    move-exception v3

    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    goto :goto_8

    .line 1337
    :cond_20
    sget-object v51, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    goto :goto_9

    .line 1346
    .restart local v51    # "serial":Ljava/lang/String;
    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cookie:Ljava/lang/String;

    if-eqz v3, :cond_22

    .line 1348
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v51

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cookie:Ljava/lang/String;

    goto :goto_a

    .line 1356
    :cond_22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v51

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_HTML5Cookie:Ljava/lang/String;

    if-nez v3, :cond_23

    const-string v3, ""

    goto :goto_a

    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_HTML5Cookie:Ljava/lang/String;

    goto :goto_a

    .line 1367
    :cond_24
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    goto :goto_b

    .line 1374
    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_flashCookie:Ljava/lang/String;

    invoke-static {v3}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->checkLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_flashCookie:Ljava/lang/String;

    .line 1375
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cancel:Z

    if-nez v3, :cond_26

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_27

    :cond_26
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .line 1377
    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_HTML5Cookie:Ljava/lang/String;

    invoke-static {v3}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->checkLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_HTML5Cookie:Ljava/lang/String;

    .line 1378
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cancel:Z

    if-nez v3, :cond_28

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_29

    :cond_28
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .line 1380
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cookie:Ljava/lang/String;

    invoke-static {v3}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->checkLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cookie:Ljava/lang/String;

    .line 1381
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cancel:Z

    if-nez v3, :cond_2a

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_2b

    :cond_2a
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .line 1383
    :cond_2b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_options:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_2c

    .line 1385
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_context:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v34

    .line 1386
    .local v34, "display":Landroid/view/Display;
    invoke-virtual/range {v34 .. v34}, Landroid/view/Display;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_screenWidth:I

    .line 1387
    invoke-virtual/range {v34 .. v34}, Landroid/view/Display;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_screenHeight:I

    .line 1390
    .end local v34    # "display":Landroid/view/Display;
    :cond_2c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cancel:Z

    if-nez v3, :cond_2d

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_2e

    :cond_2d
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .line 1391
    :cond_2e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    new-instance v5, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->getBlockSize()J

    move-result-wide v6

    invoke-virtual {v5}, Lcom/threatmetrix/TrustDefenderMobile/StatWrapper;->getAvailableBlocks()J

    move-result-wide v9

    const/high16 v3, 0x3f800000    # 1.0f

    mul-long v11, v9, v6

    const-wide/16 v16, 0x0

    cmp-long v5, v11, v16

    if-eqz v5, :cond_2f

    long-to-float v3, v9

    long-to-float v5, v6

    mul-float/2addr v3, v5

    const/high16 v5, 0x44800000    # 1024.0f

    div-float/2addr v3, v5

    const/high16 v5, 0x44800000    # 1024.0f

    div-float/2addr v3, v5

    const/high16 v5, 0x44800000    # 1024.0f

    div-float/2addr v3, v5

    :cond_2f
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v5, v9

    const-wide/16 v9, 0x3e8

    div-long/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "getDeviceState: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_deviceState:Ljava/lang/String;

    .line 1393
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cancel:Z

    if-nez v3, :cond_30

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_31

    :cond_30
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .line 1394
    :cond_31
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_context:Landroid/content/Context;

    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_33

    const-string v3, ""

    :goto_c
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_deviceFingerprint:Ljava/lang/String;

    .line 1396
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cancel:Z

    if-nez v3, :cond_32

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_35

    :cond_32
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .line 1394
    :cond_33
    const-string v3, "phone"

    invoke-virtual {v5, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    const-string v4, "Unknown"

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_34

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v4

    :cond_34
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    new-instance v4, Landroid/os/StatFs;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v9, v3

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCount()I

    move-result v3

    int-to-long v3, v3

    long-to-float v3, v3

    long-to-float v4, v9

    mul-float/2addr v3, v4

    const/high16 v4, 0x44800000    # 1024.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x44800000    # 1024.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x44800000    # 1024.0f

    div-float/2addr v3, v4

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "window"

    invoke-virtual {v5, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "Processor"

    aput-object v7, v4, v5

    const/4 v5, 0x1

    const-string v7, "BogoMips"

    aput-object v7, v4, v5

    const/4 v5, 0x2

    const-string v7, "Hardware"

    aput-object v7, v4, v5

    const/4 v5, 0x3

    const-string v7, "Serial"

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const-string v4, "/proc/cpuinfo"

    invoke-static {v4, v3}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->getInfoAlt(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getCPUInfo returned: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "MemTotal"

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const-string v4, "/proc/meminfo"

    invoke-static {v4, v3}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->getInfoAlt(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getMemInfo returned: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getDeviceFingerprint returned: hash("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_c

    .line 1398
    :cond_35
    move-object/from16 v0, p0

    iget v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_options:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_org_id:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->buildJavaScriptParameters(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 1400
    .local v43, "ja":Ljava/lang/String;
    if-eqz v46, :cond_36

    .line 1403
    move-object/from16 v0, p0

    iget v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_timeout_ms:I

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v46

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 1405
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    const-string v4, "no response from UI thread before timeout, will not use browser info"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    :cond_36
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v3, "lq="

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_browserStringFromJS:Ljava/lang/String;

    if-nez v3, :cond_3e

    const-string v3, ""

    :goto_d
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_session_id:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->xor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 1411
    .local v44, "jb":Ljava/lang/String;
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 1413
    .local v15, "extra_headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_browserStringFromJS:Ljava/lang/String;

    if-eqz v3, :cond_37

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_browserStringFromJS:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_37

    .line 1415
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Setting User-Agent to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_browserStringFromJS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1416
    const-string v3, "User-Agent"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_browserStringFromJS:Ljava/lang/String;

    invoke-virtual {v15, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1419
    :cond_37
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cookie:Ljava/lang/String;

    if-nez v3, :cond_3f

    .line 1421
    const-string v3, "Cookie"

    const-string v4, "thx_guid="

    invoke-virtual {v15, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1427
    :goto_e
    const-string v3, "Referer"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_referrerURL:Ljava/lang/String;

    invoke-virtual {v15, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1431
    move-object/from16 v0, p0

    iget v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_options:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_49

    .line 1433
    new-instance v3, Lcom/turbomanage/httpclient/ParameterMap;

    invoke-direct {v3}, Lcom/turbomanage/httpclient/ParameterMap;-><init>()V

    const-string v4, "org_id"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_org_id:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/turbomanage/httpclient/ParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/turbomanage/httpclient/ParameterMap;

    move-result-object v3

    const-string v4, "session_id"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_session_id:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/turbomanage/httpclient/ParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/turbomanage/httpclient/ParameterMap;

    move-result-object v3

    const-string v4, "m"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Lcom/turbomanage/httpclient/ParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/turbomanage/httpclient/ParameterMap;

    move-result-object v13

    .line 1434
    .local v13, "m1_param":Lcom/turbomanage/httpclient/ParameterMap;
    new-instance v3, Lcom/turbomanage/httpclient/ParameterMap;

    invoke-direct {v3}, Lcom/turbomanage/httpclient/ParameterMap;-><init>()V

    const-string v4, "org_id"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_org_id:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/turbomanage/httpclient/ParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/turbomanage/httpclient/ParameterMap;

    move-result-object v3

    const-string v4, "session_id"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_session_id:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/turbomanage/httpclient/ParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/turbomanage/httpclient/ParameterMap;

    move-result-object v3

    const-string v4, "m"

    const-string v5, "2"

    invoke-virtual {v3, v4, v5}, Lcom/turbomanage/httpclient/ParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/turbomanage/httpclient/ParameterMap;

    move-result-object v20

    .line 1436
    .local v20, "m2_param":Lcom/turbomanage/httpclient/ParameterMap;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_options:I

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_38

    .line 1438
    const-string v3, "h"

    const-string v4, "0"

    invoke-virtual {v13, v3, v4}, Lcom/turbomanage/httpclient/ParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/turbomanage/httpclient/ParameterMap;

    .line 1439
    const-string v3, "h"

    const-string v4, "0"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Lcom/turbomanage/httpclient/ParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/turbomanage/httpclient/ParameterMap;
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1445
    :cond_38
    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1446
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_requests:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/Thread;

    new-instance v9, Lcom/threatmetrix/TrustDefenderMobile/HttpGet;

    const-string v10, "https"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_fp_server:Ljava/lang/String;

    const-string v12, "/fp/clear.png"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_timeout_ms:I

    move-object/from16 v16, p0

    invoke-direct/range {v9 .. v16}, Lcom/threatmetrix/TrustDefenderMobile/HttpGet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/turbomanage/httpclient/ParameterMap;ILjava/util/Map;Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;)V

    invoke-direct {v4, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1447
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_requests:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/Thread;

    new-instance v16, Lcom/threatmetrix/TrustDefenderMobile/HttpGet;

    const-string v17, "https"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_fp_server:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "/fp/clear.png"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_timeout_ms:I

    move/from16 v21, v0

    move-object/from16 v22, v15

    move-object/from16 v23, p0

    invoke-direct/range {v16 .. v23}, Lcom/threatmetrix/TrustDefenderMobile/HttpGet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/turbomanage/httpclient/ParameterMap;ILjava/util/Map;Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;)V

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1451
    :try_start_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 1452
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1458
    :cond_39
    new-instance v25, Lcom/turbomanage/httpclient/ParameterMap;

    invoke-direct/range {v25 .. v25}, Lcom/turbomanage/httpclient/ParameterMap;-><init>()V

    .line 1459
    .local v25, "params":Lcom/turbomanage/httpclient/ParameterMap;
    const-string v3, "org_id"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_org_id:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Lcom/turbomanage/httpclient/ParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/turbomanage/httpclient/ParameterMap;

    .line 1460
    const-string v3, "session_id"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_session_id:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Lcom/turbomanage/httpclient/ParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/turbomanage/httpclient/ParameterMap;

    .line 1461
    const-string v3, "h"

    const-string v4, "1"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Lcom/turbomanage/httpclient/ParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/turbomanage/httpclient/ParameterMap;

    .line 1462
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/util/Formatter;

    invoke-direct {v4, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    const-string v5, "%16s%32s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_serverReportedIPAndTimestamp:Ljava/lang/String;

    aput-object v9, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_HTML5Cookie:Ljava/lang/String;

    aput-object v9, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {v4}, Ljava/util/Formatter;->close()V

    new-instance v4, Lcom/turbomanage/httpclient/ParameterMap;

    invoke-direct {v4}, Lcom/turbomanage/httpclient/ParameterMap;-><init>()V

    const-string v5, "la"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcom/turbomanage/httpclient/ParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/turbomanage/httpclient/ParameterMap;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/turbomanage/httpclient/ParameterMap;->putAll(Ljava/util/Map;)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1465
    :try_start_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1466
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_requests:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/Thread;

    new-instance v21, Lcom/threatmetrix/TrustDefenderMobile/HttpGet;

    const-string v22, "https"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_fp_server:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "/fp/clear.png"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_timeout_ms:I

    move/from16 v26, v0

    move-object/from16 v27, v15

    move-object/from16 v28, p0

    invoke-direct/range {v21 .. v28}, Lcom/threatmetrix/TrustDefenderMobile/HttpGet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/turbomanage/httpclient/ParameterMap;ILjava/util/Map;Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;)V

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1470
    :try_start_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 1471
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1478
    :cond_3a
    new-instance v25, Lcom/turbomanage/httpclient/ParameterMap;

    .end local v25    # "params":Lcom/turbomanage/httpclient/ParameterMap;
    invoke-direct/range {v25 .. v25}, Lcom/turbomanage/httpclient/ParameterMap;-><init>()V

    .line 1479
    .restart local v25    # "params":Lcom/turbomanage/httpclient/ParameterMap;
    const-string v3, "org_id"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_org_id:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Lcom/turbomanage/httpclient/ParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/turbomanage/httpclient/ParameterMap;

    .line 1480
    const-string v3, "session_id"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_session_id:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Lcom/turbomanage/httpclient/ParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/turbomanage/httpclient/ParameterMap;

    .line 1481
    const-string v3, "ja"

    move-object/from16 v0, v25

    move-object/from16 v1, v43

    invoke-virtual {v0, v3, v1}, Lcom/turbomanage/httpclient/ParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/turbomanage/httpclient/ParameterMap;

    .line 1482
    const-string v3, "jb"

    move-object/from16 v0, v25

    move-object/from16 v1, v44

    invoke-virtual {v0, v3, v1}, Lcom/turbomanage/httpclient/ParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/turbomanage/httpclient/ParameterMap;
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1485
    :try_start_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1486
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_requests:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/Thread;

    new-instance v21, Lcom/threatmetrix/TrustDefenderMobile/HttpGet;

    const-string v22, "https"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_fp_server:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "/fp/clear.png"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_timeout_ms:I

    move/from16 v26, v0

    move-object/from16 v27, v15

    move-object/from16 v28, p0

    invoke-direct/range {v21 .. v28}, Lcom/threatmetrix/TrustDefenderMobile/HttpGet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/turbomanage/httpclient/ParameterMap;ILjava/util/Map;Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;)V

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 1490
    :try_start_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 1491
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1497
    :cond_3b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_flashCookie:Ljava/lang/String;

    if-eqz v3, :cond_3c

    .line 1499
    new-instance v25, Lcom/turbomanage/httpclient/ParameterMap;

    .end local v25    # "params":Lcom/turbomanage/httpclient/ParameterMap;
    invoke-direct/range {v25 .. v25}, Lcom/turbomanage/httpclient/ParameterMap;-><init>()V

    .line 1500
    .restart local v25    # "params":Lcom/turbomanage/httpclient/ParameterMap;
    const-string v3, "org_id"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_org_id:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Lcom/turbomanage/httpclient/ParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/turbomanage/httpclient/ParameterMap;

    .line 1501
    const-string v3, "session_id"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_session_id:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Lcom/turbomanage/httpclient/ParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/turbomanage/httpclient/ParameterMap;

    .line 1502
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Lcom/turbomanage/httpclient/ParameterMap;

    invoke-direct {v4}, Lcom/turbomanage/httpclient/ParameterMap;-><init>()V

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    new-instance v6, Ljava/util/Formatter;

    invoke-direct {v6, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    const-string v7, "%04d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/16 v11, 0x2710

    invoke-virtual {v5, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v10

    invoke-virtual {v6, v7, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const-string v5, "nu"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lcom/turbomanage/httpclient/ParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/turbomanage/httpclient/ParameterMap;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v5, "%16s%32s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_serverReportedIPAndTimestamp:Ljava/lang/String;

    aput-object v10, v7, v9

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_flashCookie:Ljava/lang/String;

    aput-object v10, v7, v9

    invoke-virtual {v6, v5, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const-string v5, "fc"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcom/turbomanage/httpclient/ParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/turbomanage/httpclient/ParameterMap;

    invoke-virtual {v6}, Ljava/util/Formatter;->close()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/turbomanage/httpclient/ParameterMap;->putAll(Ljava/util/Map;)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 1505
    :try_start_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1506
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_requests:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/Thread;

    new-instance v21, Lcom/threatmetrix/TrustDefenderMobile/HttpGet;

    const-string v22, "https"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_fp_server:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "/fp/clear.png"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_timeout_ms:I

    move/from16 v26, v0

    move-object/from16 v27, v15

    move-object/from16 v28, p0

    invoke-direct/range {v21 .. v28}, Lcom/threatmetrix/TrustDefenderMobile/HttpGet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/turbomanage/httpclient/ParameterMap;ILjava/util/Map;Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;)V

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 1510
    :try_start_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 1511
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1518
    :cond_3c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cancel:Z

    if-nez v3, :cond_3d

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_44

    :cond_3d
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .line 1409
    .end local v13    # "m1_param":Lcom/turbomanage/httpclient/ParameterMap;
    .end local v15    # "extra_headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "m2_param":Lcom/turbomanage/httpclient/ParameterMap;
    .end local v25    # "params":Lcom/turbomanage/httpclient/ParameterMap;
    .end local v44    # "jb":Ljava/lang/String;
    :cond_3e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_browserStringFromJS:Ljava/lang/String;

    goto/16 :goto_d

    .line 1425
    .restart local v15    # "extra_headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v44    # "jb":Ljava/lang/String;
    :cond_3f
    const-string v3, "Cookie"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "thx_guid="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cookie:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    .line 1451
    .restart local v13    # "m1_param":Lcom/turbomanage/httpclient/ParameterMap;
    .restart local v20    # "m2_param":Lcom/turbomanage/httpclient/ParameterMap;
    :catchall_1
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 1452
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1451
    :cond_40
    throw v3

    .line 1470
    .restart local v25    # "params":Lcom/turbomanage/httpclient/ParameterMap;
    :catchall_2
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 1471
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1470
    :cond_41
    throw v3

    .line 1490
    :catchall_3
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 1491
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1490
    :cond_42
    throw v3

    .line 1510
    :catchall_4
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v4

    if-eqz v4, :cond_43

    .line 1511
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1510
    :cond_43
    throw v3

    .line 1520
    :cond_44
    new-instance v25, Lcom/turbomanage/httpclient/ParameterMap;

    .end local v25    # "params":Lcom/turbomanage/httpclient/ParameterMap;
    invoke-direct/range {v25 .. v25}, Lcom/turbomanage/httpclient/ParameterMap;-><init>()V

    .line 1521
    .restart local v25    # "params":Lcom/turbomanage/httpclient/ParameterMap;
    const-string v3, "org_id"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_org_id:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Lcom/turbomanage/httpclient/ParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/turbomanage/httpclient/ParameterMap;

    .line 1522
    const-string v3, "session_id"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_session_id:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Lcom/turbomanage/httpclient/ParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/turbomanage/httpclient/ParameterMap;

    .line 1523
    invoke-static {}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->getFlashProperties()Lcom/turbomanage/httpclient/ParameterMap;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/turbomanage/httpclient/ParameterMap;->putAll(Ljava/util/Map;)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 1526
    :try_start_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1527
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_requests:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/Thread;

    new-instance v21, Lcom/threatmetrix/TrustDefenderMobile/HttpGet;

    const-string v22, "https"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_fp_server:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "/fp/clear.png"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_timeout_ms:I

    move/from16 v26, v0

    move-object/from16 v27, v15

    move-object/from16 v28, p0

    invoke-direct/range {v21 .. v28}, Lcom/threatmetrix/TrustDefenderMobile/HttpGet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/turbomanage/httpclient/ParameterMap;ILjava/util/Map;Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;)V

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 1531
    :try_start_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v3

    if-eqz v3, :cond_45

    .line 1532
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1595
    .end local v13    # "m1_param":Lcom/turbomanage/httpclient/ParameterMap;
    .end local v20    # "m2_param":Lcom/turbomanage/httpclient/ParameterMap;
    :cond_45
    :goto_f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_options:I
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_46

    .line 1599
    :try_start_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1600
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_requests:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/Thread;

    new-instance v26, Lcom/threatmetrix/TrustDefenderMobile/PutXML;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_fp_server:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_org_id:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_session_id:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_serverReportedIPAndTimestamp:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_timeout_ms:I

    move/from16 v31, v0

    move-object/from16 v32, p0

    invoke-direct/range {v26 .. v32}, Lcom/threatmetrix/TrustDefenderMobile/PutXML;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;)V

    move-object/from16 v0, v26

    invoke-direct {v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 1604
    :try_start_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 1605
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 1613
    :cond_46
    :try_start_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1614
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_requests:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v41

    .local v41, "i$":Ljava/util/Iterator;
    :goto_10
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Thread;

    .line 1616
    .local v53, "t":Ljava/lang/Thread;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cancel:Z

    if-nez v3, :cond_54

    .line 1617
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Thread;->start()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    goto :goto_10

    .line 1624
    .end local v41    # "i$":Ljava/util/Iterator;
    .end local v53    # "t":Ljava/lang/Thread;
    :catchall_5
    move-exception v3

    :try_start_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 1625
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1624
    :cond_47
    throw v3

    .line 1531
    .restart local v13    # "m1_param":Lcom/turbomanage/httpclient/ParameterMap;
    .restart local v20    # "m2_param":Lcom/turbomanage/httpclient/ParameterMap;
    :catchall_6
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v4

    if-eqz v4, :cond_48

    .line 1532
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1531
    :cond_48
    throw v3

    .line 1535
    .end local v13    # "m1_param":Lcom/turbomanage/httpclient/ParameterMap;
    .end local v20    # "m2_param":Lcom/turbomanage/httpclient/ParameterMap;
    .end local v25    # "params":Lcom/turbomanage/httpclient/ParameterMap;
    :cond_49
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    .line 1539
    .local v38, "flashProperties":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->getFlashProperties()Lcom/turbomanage/httpclient/ParameterMap;

    move-result-object v37

    .line 1540
    .local v37, "flashMap":Lcom/turbomanage/httpclient/ParameterMap;
    invoke-virtual/range {v37 .. v37}, Lcom/turbomanage/httpclient/ParameterMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v42

    .line 1541
    .local v42, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/16 v36, 0x1

    .line 1542
    .local v36, "first":Z
    :goto_11
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 1544
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cancel:Z

    if-nez v3, :cond_4a

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_4b

    :cond_4a
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .line 1545
    :cond_4b
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/util/Map$Entry;

    .line 1547
    .local v48, "pairs":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v36, :cond_4c

    .line 1549
    const-string v3, "&"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1551
    :cond_4c
    const/16 v36, 0x0

    .line 1552
    invoke-interface/range {v48 .. v48}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v48 .. v48}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    .line 1555
    .end local v48    # "pairs":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4d
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    .line 1557
    .local v45, "jc":Ljava/lang/StringBuilder;
    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1559
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_HTML5Cookie:Ljava/lang/String;

    if-eqz v3, :cond_4e

    .line 1561
    const-string v3, "&ls="

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1562
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_HTML5Cookie:Ljava/lang/String;

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1564
    :cond_4e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_flashCookie:Ljava/lang/String;

    if-eqz v3, :cond_4f

    .line 1566
    const-string v3, "&fg="

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1567
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_flashCookie:Ljava/lang/String;

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1570
    :cond_4f
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cancel:Z

    if-nez v3, :cond_50

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_51

    :cond_50
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .line 1573
    :cond_51
    new-instance v25, Lcom/turbomanage/httpclient/ParameterMap;

    invoke-direct/range {v25 .. v25}, Lcom/turbomanage/httpclient/ParameterMap;-><init>()V

    .line 1574
    .restart local v25    # "params":Lcom/turbomanage/httpclient/ParameterMap;
    const-string v3, "org_id"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_org_id:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Lcom/turbomanage/httpclient/ParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/turbomanage/httpclient/ParameterMap;

    .line 1575
    const-string v3, "session_id"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_session_id:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Lcom/turbomanage/httpclient/ParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/turbomanage/httpclient/ParameterMap;

    .line 1576
    const-string v3, "ja"

    move-object/from16 v0, v25

    move-object/from16 v1, v43

    invoke-virtual {v0, v3, v1}, Lcom/turbomanage/httpclient/ParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/turbomanage/httpclient/ParameterMap;

    .line 1577
    const-string v3, "jb"

    move-object/from16 v0, v25

    move-object/from16 v1, v44

    invoke-virtual {v0, v3, v1}, Lcom/turbomanage/httpclient/ParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/turbomanage/httpclient/ParameterMap;

    .line 1578
    const-string v3, "jc"

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_session_id:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->xor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Lcom/turbomanage/httpclient/ParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/turbomanage/httpclient/ParameterMap;

    .line 1579
    const-string v3, "h"

    const-string v4, "1"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Lcom/turbomanage/httpclient/ParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/turbomanage/httpclient/ParameterMap;
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_17} :catch_0
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 1583
    :try_start_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1585
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_requests:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/Thread;

    new-instance v21, Lcom/threatmetrix/TrustDefenderMobile/HttpGet;

    const-string v22, "https"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_fp_server:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "/fp/clear.png"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_timeout_ms:I

    move/from16 v26, v0

    move-object/from16 v27, v15

    move-object/from16 v28, p0

    invoke-direct/range {v21 .. v28}, Lcom/threatmetrix/TrustDefenderMobile/HttpGet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/turbomanage/httpclient/ParameterMap;ILjava/util/Map;Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;)V

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    .line 1589
    :try_start_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v3

    if-eqz v3, :cond_45

    .line 1590
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_f

    .line 1589
    :catchall_7
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v4

    if-eqz v4, :cond_52

    .line 1590
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1589
    :cond_52
    throw v3

    .line 1604
    .end local v36    # "first":Z
    .end local v37    # "flashMap":Lcom/turbomanage/httpclient/ParameterMap;
    .end local v38    # "flashProperties":Ljava/lang/StringBuilder;
    .end local v42    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v45    # "jc":Ljava/lang/StringBuilder;
    :catchall_8
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 1605
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1604
    :cond_53
    throw v3

    .line 1624
    .restart local v41    # "i$":Ljava/util/Iterator;
    :cond_54
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v3

    if-eqz v3, :cond_55

    .line 1625
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_19} :catch_0
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 1630
    :cond_55
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1631
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_requests:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :goto_12
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Thread;

    .line 1633
    .restart local v53    # "t":Ljava/lang/Thread;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cancel:Z

    if-nez v3, :cond_57

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    move-result v3

    if-nez v3, :cond_57

    .line 1634
    :try_start_1b
    invoke-virtual/range {v53 .. v53}, Ljava/lang/Thread;->join()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1b} :catch_2
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    goto :goto_12

    .line 1644
    :catch_2
    move-exception v3

    :try_start_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_status:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_NotYet:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    if-ne v3, v4, :cond_56

    .line 1645
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_Connection_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_status:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    .line 1648
    :cond_56
    invoke-virtual/range {p0 .. p0}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->interruptThreads()V

    .line 1649
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    .line 1656
    .end local v53    # "t":Ljava/lang/Thread;
    :cond_57
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v3

    if-eqz v3, :cond_58

    .line 1657
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1662
    :cond_58
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_status:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_NotYet:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    if-ne v3, v4, :cond_59

    .line 1663
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_OK:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_status:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_1d} :catch_0
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    .line 1667
    :cond_59
    :try_start_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1668
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_requests:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_a

    .line 1672
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 1673
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1675
    :cond_5a
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_1f} :catch_0
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    .line 1684
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cancel:Z

    if-eqz v3, :cond_5b

    .line 1686
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_Interrupted_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_status:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    .line 1688
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1695
    :cond_5b
    :try_start_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1697
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotify;

    if-eqz v3, :cond_5c

    .line 1699
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotify;

    invoke-interface {v3}, Lcom/threatmetrix/TrustDefenderMobile/ProfileNotify;->complete()V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_20} :catch_5
    .catchall {:try_start_20 .. :try_end_20} :catchall_d

    .line 1708
    :cond_5c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1709
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_1

    .line 1656
    :catchall_9
    move-exception v3

    :try_start_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 1657
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1656
    :cond_5d
    throw v3

    .line 1672
    :catchall_a
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 1673
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1672
    :cond_5e
    throw v3
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_21} :catch_0
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    .line 1702
    .end local v8    # "tempIP":Ljava/lang/StringBuilder;
    .end local v15    # "extra_headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v25    # "params":Lcom/turbomanage/httpclient/ParameterMap;
    .end local v39    # "genID":Ljava/lang/String;
    .end local v41    # "i$":Ljava/util/Iterator;
    .end local v43    # "ja":Ljava/lang/String;
    .end local v44    # "jb":Ljava/lang/String;
    .end local v46    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v49    # "preferences":Landroid/content/SharedPreferences;
    .end local v51    # "serial":Ljava/lang/String;
    .end local v52    # "status":Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    :catch_3
    move-exception v35

    .line 1704
    .local v35, "e":Ljava/lang/InterruptedException;
    :try_start_22
    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    const-string v5, "profilNotify callback interrupted"

    move-object/from16 v0, v35

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_b

    .line 1708
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1709
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    goto/16 :goto_2

    .line 1708
    .end local v35    # "e":Ljava/lang/InterruptedException;
    :catchall_b
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 1709
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1708
    :cond_5f
    throw v3

    .line 1702
    .restart local v35    # "e":Ljava/lang/InterruptedException;
    :catch_4
    move-exception v35

    .line 1704
    :try_start_23
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    const-string v4, "profilNotify callback interrupted"

    move-object/from16 v0, v35

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_c

    .line 1708
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1709
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    goto/16 :goto_0

    .line 1708
    :catchall_c
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v4

    if-eqz v4, :cond_60

    .line 1709
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1708
    :cond_60
    throw v3

    .line 1702
    .end local v35    # "e":Ljava/lang/InterruptedException;
    .restart local v8    # "tempIP":Ljava/lang/StringBuilder;
    .restart local v15    # "extra_headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v25    # "params":Lcom/turbomanage/httpclient/ParameterMap;
    .restart local v39    # "genID":Ljava/lang/String;
    .restart local v41    # "i$":Ljava/util/Iterator;
    .restart local v43    # "ja":Ljava/lang/String;
    .restart local v44    # "jb":Ljava/lang/String;
    .restart local v46    # "latch":Ljava/util/concurrent/CountDownLatch;
    .restart local v49    # "preferences":Landroid/content/SharedPreferences;
    .restart local v51    # "serial":Ljava/lang/String;
    .restart local v52    # "status":Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    :catch_5
    move-exception v35

    .line 1704
    .restart local v35    # "e":Ljava/lang/InterruptedException;
    :try_start_24
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    const-string v4, "profilNotify callback interrupted"

    move-object/from16 v0, v35

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_d

    .line 1708
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1709
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_1

    .line 1708
    .end local v35    # "e":Ljava/lang/InterruptedException;
    :catchall_d
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v4

    if-eqz v4, :cond_61

    .line 1709
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1708
    :cond_61
    throw v3

    .line 1702
    .end local v15    # "extra_headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v25    # "params":Lcom/turbomanage/httpclient/ParameterMap;
    .end local v39    # "genID":Ljava/lang/String;
    .end local v41    # "i$":Ljava/util/Iterator;
    .end local v43    # "ja":Ljava/lang/String;
    .end local v44    # "jb":Ljava/lang/String;
    .end local v46    # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v49    # "preferences":Landroid/content/SharedPreferences;
    .end local v51    # "serial":Ljava/lang/String;
    :catch_6
    move-exception v35

    .line 1704
    .restart local v35    # "e":Ljava/lang/InterruptedException;
    :try_start_25
    sget-object v3, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    const-string v4, "profilNotify callback interrupted"

    move-object/from16 v0, v35

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_e

    .line 1708
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1709
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_1

    .line 1708
    .end local v35    # "e":Ljava/lang/InterruptedException;
    :catchall_e
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v4

    if-eqz v4, :cond_62

    .line 1709
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1708
    :cond_62
    throw v3
.end method

.method public doProfileRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "org_id"    # Ljava/lang/String;
    .param p3, "fp_server"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "options"    # I

    .prologue
    .line 1050
    :try_start_0
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 1052
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "starting profile request using - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with options "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1054
    iget-boolean v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_active:Z

    if-eqz v0, :cond_0

    .line 1056
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_NotYet:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1148
    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v0

    .line 1059
    :cond_0
    and-int/lit8 v0, p5, 0x1

    if-nez v0, :cond_1

    .line 1061
    :try_start_1
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    const-string v1, "Synchronous is deprecated, please switch to ASYNC"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 1065
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    const-string v1, "Synchronous only works when called from the UI thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_Internal_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1148
    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 1071
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_flashCookie:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_HTML5Cookie:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cookie:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_gmtOffset:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_dstDiff:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_screenWidth:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_screenHeight:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_browserPluginsFromJS:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_browserPluginCount:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_browserPluginsFromJS:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_browserStringFromJS:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_mimeTypeCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_mimeTypes:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_deviceFingerprint:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_deviceState:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_serverReportedIPAndTimestamp:Ljava/lang/String;

    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_TDLocationManager:Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_TDLocationManager:Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->unregister()V

    .line 1072
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_cancel:Z

    .line 1073
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_NotYet:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_status:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    .line 1076
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_requests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1078
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    .line 1079
    invoke-virtual {p0}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->interruptThreads()V

    .line 1082
    :cond_3
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_requests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1084
    if-nez p3, :cond_4

    .line 1085
    const-string p3, "h.online-metrix.net"

    .line 1087
    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    .line 1089
    :cond_5
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    const-string v1, "Invalid org_id"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_InvalidOrgID:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1148
    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 1093
    :cond_6
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_active:Z

    .line 1095
    iget-boolean v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_generate_session_id:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_session_id:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 1097
    :cond_7
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_session_id:Ljava/lang/String;

    .line 1099
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_generate_session_id:Z

    .line 1102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_referrerURL:Ljava/lang/String;

    .line 1105
    if-eqz p4, :cond_a

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    .line 1107
    iput-object p4, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_url:Ljava/lang/String;

    .line 1108
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_referrerURL:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    .line 1111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mobile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_url:Ljava/lang/String;

    .line 1121
    :cond_9
    :goto_1
    iput p5, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_options:I

    .line 1122
    iput-object p2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_org_id:Ljava/lang/String;

    .line 1123
    iput-object p3, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_fp_server:Ljava/lang/String;

    .line 1124
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_context:Landroid/content/Context;

    .line 1125
    iget v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_options:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_c

    .line 1127
    invoke-virtual {p0}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->completeProfileRequest()V

    .line 1128
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_status:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1148
    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 1117
    :cond_a
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mobile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_url:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1141
    :catch_0
    move-exception v0

    :try_start_5
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profile_thread:Ljava/lang/Thread;

    if-eqz v0, :cond_b

    .line 1142
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profile_thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1143
    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_active:Z

    .line 1144
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_Interrupted_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1148
    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 1132
    :cond_c
    :try_start_6
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/threatmetrix/TrustDefenderMobile/CompleteProfile;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/threatmetrix/TrustDefenderMobile/CompleteProfile;-><init>(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profile_thread:Ljava/lang/Thread;

    .line 1134
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profile_thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1137
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_OK:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1148
    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_request_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_session_id:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    .locals 2

    .prologue
    .line 1154
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getStatus returns: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_status:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    invoke-virtual {v1}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_status:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_timeout_ms:I

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method final interruptThreads()V
    .locals 5

    .prologue
    .line 1717
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    .line 1718
    monitor-enter p0

    .line 1720
    :try_start_0
    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_requests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    .line 1722
    .local v1, "t":Ljava/lang/Thread;
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sending interrupt to TID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1723
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1725
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "t":Ljava/lang/Thread;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public pauseLocationServices(Z)V
    .locals 1
    .param p1, "pause"    # Z

    .prologue
    .line 1751
    if-eqz p1, :cond_0

    .line 1753
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_TDLocationManager:Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->pause()V

    .line 1759
    :goto_0
    return-void

    .line 1757
    :cond_0
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_TDLocationManager:Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->resume()V

    goto :goto_0
.end method

.method public registerLocationServices(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1740
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_TDLocationManager:Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;

    const-wide/32 v2, 0xdbba0

    const-wide/32 v4, 0x36ee80

    const/4 v6, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->registerLocationServices(Landroid/content/Context;JJI)Z

    move-result v0

    return v0
.end method

.method public registerLocationServices(Landroid/content/Context;JJI)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lowPowerUpdateTime"    # J
    .param p4, "highPowerUpdateTime"    # J
    .param p6, "accuracy"    # I

    .prologue
    .line 1746
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_TDLocationManager:Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->registerLocationServices(Landroid/content/Context;JJI)Z

    move-result v0

    return v0
.end method

.method public setCompletionNotifier(Lcom/threatmetrix/TrustDefenderMobile/ProfileNotify;)V
    .locals 2
    .param p1, "notifier"    # Lcom/threatmetrix/TrustDefenderMobile/ProfileNotify;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 244
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_profileNotify:Lcom/threatmetrix/TrustDefenderMobile/ProfileNotify;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 251
    :cond_0
    return-void

    .line 248
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_callback_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1
    throw v0
.end method

.method public setCustomAttributes(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->customAttributes:Ljava/util/ArrayList;

    .line 237
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 1735
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_TDLocationManager:Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;

    invoke-virtual {v0, p1}, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->setLocation(Landroid/location/Location;)V

    .line 1736
    return-void
.end method

.method public setSessionID(Ljava/lang/String;)V
    .locals 1
    .param p1, "sessionID"    # Ljava/lang/String;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_session_id:Ljava/lang/String;

    if-eq v0, p1, :cond_0

    .line 222
    if-nez p1, :cond_2

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_session_id:Ljava/lang/String;

    .line 227
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_session_id:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_generate_session_id:Z

    .line 232
    :cond_1
    return-void

    .line 225
    :cond_2
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_session_id:Ljava/lang/String;

    goto :goto_0
.end method

.method final setStatus(Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;)V
    .locals 0
    .param p1, "status"    # Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    .prologue
    .line 1730
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_status:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    .line 1731
    return-void
.end method

.method public setTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I

    .prologue
    .line 211
    mul-int/lit16 v0, p1, 0x3e8

    iput v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_timeout_ms:I

    .line 212
    return-void
.end method

.method public tidyUp()V
    .locals 1

    .prologue
    .line 1763
    iget-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->m_TDLocationManager:Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;

    invoke-virtual {v0}, Lcom/threatmetrix/TrustDefenderMobile/TDLocationManager;->unregister()V

    .line 1764
    invoke-virtual {p0}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->cancel()V

    .line 1765
    return-void
.end method
