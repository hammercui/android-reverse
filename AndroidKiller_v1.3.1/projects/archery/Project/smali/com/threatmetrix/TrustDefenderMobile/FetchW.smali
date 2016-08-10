.class Lcom/threatmetrix/TrustDefenderMobile/FetchW;
.super Ljava/lang/Object;
.source "FetchW.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field fp_server:Ljava/lang/String;

.field ip_addy:Ljava/lang/StringBuilder;

.field org_id:Ljava/lang/String;

.field requestHandler:Lcom/threatmetrix/TrustDefenderMobile/RequestHandlerError;

.field session_id:Ljava/lang/String;

.field statusCode:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

.field timeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/threatmetrix/TrustDefenderMobile/FetchW;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/FetchW;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/StringBuilder;)V
    .locals 2
    .param p1, "fp_server"    # Ljava/lang/String;
    .param p2, "org_id"    # Ljava/lang/String;
    .param p3, "session_id"    # Ljava/lang/String;
    .param p4, "timeout"    # I
    .param p5, "ip_addy"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/FetchW;->session_id:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/FetchW;->org_id:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/FetchW;->fp_server:Ljava/lang/String;

    .line 26
    const/16 v0, 0x2710

    iput v0, p0, Lcom/threatmetrix/TrustDefenderMobile/FetchW;->timeout:I

    .line 27
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/FetchW;->ip_addy:Ljava/lang/StringBuilder;

    .line 29
    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/FetchW;->requestHandler:Lcom/threatmetrix/TrustDefenderMobile/RequestHandlerError;

    .line 35
    iput-object p2, p0, Lcom/threatmetrix/TrustDefenderMobile/FetchW;->org_id:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/threatmetrix/TrustDefenderMobile/FetchW;->fp_server:Ljava/lang/String;

    .line 37
    iput p4, p0, Lcom/threatmetrix/TrustDefenderMobile/FetchW;->timeout:I

    .line 38
    iput-object p5, p0, Lcom/threatmetrix/TrustDefenderMobile/FetchW;->ip_addy:Ljava/lang/StringBuilder;

    .line 39
    iput-object p3, p0, Lcom/threatmetrix/TrustDefenderMobile/FetchW;->session_id:Ljava/lang/String;

    .line 41
    sget-object v0, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_OK:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/FetchW;->statusCode:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    .line 42
    new-instance v0, Lcom/threatmetrix/TrustDefenderMobile/RequestHandlerError;

    invoke-direct {v0}, Lcom/threatmetrix/TrustDefenderMobile/RequestHandlerError;-><init>()V

    iput-object v0, p0, Lcom/threatmetrix/TrustDefenderMobile/FetchW;->requestHandler:Lcom/threatmetrix/TrustDefenderMobile/RequestHandlerError;

    .line 43
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 52
    :try_start_0
    new-instance v7, Lcom/turbomanage/httpclient/android/AndroidHttpClient;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/FetchW;->fp_server:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/FetchW;->requestHandler:Lcom/threatmetrix/TrustDefenderMobile/RequestHandlerError;

    invoke-direct {v7, v1, v2}, Lcom/turbomanage/httpclient/android/AndroidHttpClient;-><init>(Ljava/lang/String;Lcom/turbomanage/httpclient/RequestHandler;)V

    .line 54
    .local v7, "get":Lcom/turbomanage/httpclient/android/AndroidHttpClient;
    invoke-virtual {v7}, Lcom/turbomanage/httpclient/android/AndroidHttpClient;->newParams()Lcom/turbomanage/httpclient/ParameterMap;

    move-result-object v10

    .line 55
    .local v10, "params":Lcom/turbomanage/httpclient/ParameterMap;
    const-string v1, "org_id"

    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/FetchW;->org_id:Ljava/lang/String;

    invoke-virtual {v10, v1, v2}, Lcom/turbomanage/httpclient/ParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/turbomanage/httpclient/ParameterMap;

    .line 56
    const-string v1, "session_id"

    iget-object v2, p0, Lcom/threatmetrix/TrustDefenderMobile/FetchW;->session_id:Ljava/lang/String;

    invoke-virtual {v10, v1, v2}, Lcom/turbomanage/httpclient/ParameterMap;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/turbomanage/httpclient/ParameterMap;

    .line 57
    iget v1, p0, Lcom/threatmetrix/TrustDefenderMobile/FetchW;->timeout:I

    invoke-virtual {v7, v1}, Lcom/turbomanage/httpclient/android/AndroidHttpClient;->setConnectionTimeout(I)V

    .line 58
    iget v1, p0, Lcom/threatmetrix/TrustDefenderMobile/FetchW;->timeout:I

    invoke-virtual {v7, v1}, Lcom/turbomanage/httpclient/android/AndroidHttpClient;->setReadTimeout(I)V

    .line 60
    new-instance v1, Lcom/threatmetrix/TrustDefenderMobile/FetchW$1;

    invoke-direct {v1, p0}, Lcom/threatmetrix/TrustDefenderMobile/FetchW$1;-><init>(Lcom/threatmetrix/TrustDefenderMobile/FetchW;)V

    invoke-virtual {v7, v1}, Lcom/turbomanage/httpclient/android/AndroidHttpClient;->setRequestLogger(Lcom/turbomanage/httpclient/RequestLogger;)V

    .line 81
    const-string v1, "/fp/ls_fp.html"

    invoke-virtual {v7, v1, v10}, Lcom/turbomanage/httpclient/android/AndroidHttpClient;->get(Ljava/lang/String;Lcom/turbomanage/httpclient/ParameterMap;)Lcom/turbomanage/httpclient/HttpResponse;

    move-result-object v11

    .line 83
    .local v11, "resp":Lcom/turbomanage/httpclient/HttpResponse;
    if-nez v11, :cond_0

    .line 85
    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/FetchW;->requestHandler:Lcom/threatmetrix/TrustDefenderMobile/RequestHandlerError;

    iget-object v1, v1, Lcom/threatmetrix/TrustDefenderMobile/RequestHandlerError;->statusCode:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/FetchW;->statusCode:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    .line 86
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/FetchW;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Failed to fetch w: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/threatmetrix/TrustDefenderMobile/FetchW;->statusCode:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    invoke-virtual {v4}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-virtual {v11}, Lcom/turbomanage/httpclient/HttpResponse;->getStatus()I

    move-result v1

    const/16 v2, 0x190

    if-lt v1, v2, :cond_1

    .line 91
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/FetchW;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "W fetch error: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/turbomanage/httpclient/HttpResponse;->getStatus()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_Connection_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/FetchW;->statusCode:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    .end local v7    # "get":Lcom/turbomanage/httpclient/android/AndroidHttpClient;
    .end local v10    # "params":Lcom/turbomanage/httpclient/ParameterMap;
    .end local v11    # "resp":Lcom/turbomanage/httpclient/HttpResponse;
    :catch_0
    move-exception v6

    .line 131
    .local v6, "e":Ljava/lang/RuntimeException;
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/FetchW;->TAG:Ljava/lang/String;

    .line 132
    throw v6

    .line 95
    .end local v6    # "e":Ljava/lang/RuntimeException;
    .restart local v7    # "get":Lcom/turbomanage/httpclient/android/AndroidHttpClient;
    .restart local v10    # "params":Lcom/turbomanage/httpclient/ParameterMap;
    .restart local v11    # "resp":Lcom/turbomanage/httpclient/HttpResponse;
    :cond_1
    :try_start_1
    invoke-virtual {v11}, Lcom/turbomanage/httpclient/HttpResponse;->getBodyAsString()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "ls_html":Ljava/lang/String;
    const-string v3, "<body></body><script>var"

    .line 98
    .local v3, "prefix":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 100
    :cond_2
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/FetchW;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "W fetch empty: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/turbomanage/httpclient/HttpResponse;->getStatus()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_Connection_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/FetchW;->statusCode:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    goto :goto_0

    .line 105
    :cond_3
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_4

    .line 107
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/FetchW;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "W fetch parse error: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/turbomanage/httpclient/HttpResponse;->getStatus()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_Connection_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/FetchW;->statusCode:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    goto/16 :goto_0

    .line 116
    :cond_4
    const-string v1, "=\'(.*?)\'"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    .line 117
    .local v9, "matcher":Ljava/util/regex/Matcher;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    const/4 v1, 0x4

    if-ge v8, v1, :cond_6

    .line 119
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_5

    .line 121
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/FetchW;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "W fetch find error: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/turbomanage/httpclient/HttpResponse;->getStatus()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    sget-object v1, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;->THM_Connection_Error:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    iput-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/FetchW;->statusCode:Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile$THMStatusCode;

    goto/16 :goto_0

    .line 117
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 127
    :cond_6
    iget-object v1, p0, Lcom/threatmetrix/TrustDefenderMobile/FetchW;->ip_addy:Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/threatmetrix/TrustDefenderMobile/TrustDefenderMobile;->convertFromOctal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
