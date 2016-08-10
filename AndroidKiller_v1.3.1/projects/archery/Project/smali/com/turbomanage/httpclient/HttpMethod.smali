.class public final enum Lcom/turbomanage/httpclient/HttpMethod;
.super Ljava/lang/Enum;
.source "HttpMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/turbomanage/httpclient/HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/turbomanage/httpclient/HttpMethod;

.field public static final enum DELETE:Lcom/turbomanage/httpclient/HttpMethod;

.field public static final enum GET:Lcom/turbomanage/httpclient/HttpMethod;

.field public static final enum HEAD:Lcom/turbomanage/httpclient/HttpMethod;

.field public static final enum POST:Lcom/turbomanage/httpclient/HttpMethod;

.field public static final enum PUT:Lcom/turbomanage/httpclient/HttpMethod;


# instance fields
.field private doInput:Z

.field private doOutput:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 11
    new-instance v0, Lcom/turbomanage/httpclient/HttpMethod;

    const-string v1, "GET"

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/turbomanage/httpclient/HttpMethod;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/turbomanage/httpclient/HttpMethod;->GET:Lcom/turbomanage/httpclient/HttpMethod;

    .line 12
    new-instance v0, Lcom/turbomanage/httpclient/HttpMethod;

    const-string v1, "POST"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/turbomanage/httpclient/HttpMethod;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/turbomanage/httpclient/HttpMethod;->POST:Lcom/turbomanage/httpclient/HttpMethod;

    .line 13
    new-instance v0, Lcom/turbomanage/httpclient/HttpMethod;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v4, v2, v2}, Lcom/turbomanage/httpclient/HttpMethod;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/turbomanage/httpclient/HttpMethod;->PUT:Lcom/turbomanage/httpclient/HttpMethod;

    .line 14
    new-instance v0, Lcom/turbomanage/httpclient/HttpMethod;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/turbomanage/httpclient/HttpMethod;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/turbomanage/httpclient/HttpMethod;->DELETE:Lcom/turbomanage/httpclient/HttpMethod;

    .line 15
    new-instance v0, Lcom/turbomanage/httpclient/HttpMethod;

    const-string v1, "HEAD"

    invoke-direct {v0, v1, v6, v3, v3}, Lcom/turbomanage/httpclient/HttpMethod;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/turbomanage/httpclient/HttpMethod;->HEAD:Lcom/turbomanage/httpclient/HttpMethod;

    .line 10
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/turbomanage/httpclient/HttpMethod;

    sget-object v1, Lcom/turbomanage/httpclient/HttpMethod;->GET:Lcom/turbomanage/httpclient/HttpMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/turbomanage/httpclient/HttpMethod;->POST:Lcom/turbomanage/httpclient/HttpMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/turbomanage/httpclient/HttpMethod;->PUT:Lcom/turbomanage/httpclient/HttpMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/turbomanage/httpclient/HttpMethod;->DELETE:Lcom/turbomanage/httpclient/HttpMethod;

    aput-object v1, v0, v5

    sget-object v1, Lcom/turbomanage/httpclient/HttpMethod;->HEAD:Lcom/turbomanage/httpclient/HttpMethod;

    aput-object v1, v0, v6

    sput-object v0, Lcom/turbomanage/httpclient/HttpMethod;->$VALUES:[Lcom/turbomanage/httpclient/HttpMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .param p3, "doInput"    # Z
    .param p4, "doOutput"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput-boolean p3, p0, Lcom/turbomanage/httpclient/HttpMethod;->doInput:Z

    .line 22
    iput-boolean p4, p0, Lcom/turbomanage/httpclient/HttpMethod;->doOutput:Z

    .line 23
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/turbomanage/httpclient/HttpMethod;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/turbomanage/httpclient/HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/turbomanage/httpclient/HttpMethod;

    return-object v0
.end method

.method public static values()[Lcom/turbomanage/httpclient/HttpMethod;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/turbomanage/httpclient/HttpMethod;->$VALUES:[Lcom/turbomanage/httpclient/HttpMethod;

    invoke-virtual {v0}, [Lcom/turbomanage/httpclient/HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/turbomanage/httpclient/HttpMethod;

    return-object v0
.end method


# virtual methods
.method public final getDoInput()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/turbomanage/httpclient/HttpMethod;->doInput:Z

    return v0
.end method

.method public final getDoOutput()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/turbomanage/httpclient/HttpMethod;->doOutput:Z

    return v0
.end method

.method public final getMethodName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/turbomanage/httpclient/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
