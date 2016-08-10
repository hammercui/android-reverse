.class final Lcom/google/android/gms/tagmanager/bh;
.super Ljava/lang/Object;


# static fields
.field static VE:Lcom/google/android/gms/tagmanager/bi;

.field static VF:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/tagmanager/x;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/x;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/bh;->VE:Lcom/google/android/gms/tagmanager/bi;

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/bh;->VE:Lcom/google/android/gms/tagmanager/bi;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/tagmanager/bi;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/bh;->VE:Lcom/google/android/gms/tagmanager/bi;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/tagmanager/bi;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static getLogLevel()I
    .locals 1

    sget v0, Lcom/google/android/gms/tagmanager/bh;->VF:I

    return v0
.end method

.method public static s(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/bh;->VE:Lcom/google/android/gms/tagmanager/bi;

    invoke-interface {v0, p0}, Lcom/google/android/gms/tagmanager/bi;->s(Ljava/lang/String;)V

    return-void
.end method

.method public static setLogLevel(I)V
    .locals 1
    .param p0, "logLevel"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/tagmanager/bh;->VE:Lcom/google/android/gms/tagmanager/bi;

    invoke-interface {v0, p0}, Lcom/google/android/gms/tagmanager/bi;->setLogLevel(I)V

    return-void
.end method

.method public static t(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/bh;->VE:Lcom/google/android/gms/tagmanager/bi;

    invoke-interface {v0, p0}, Lcom/google/android/gms/tagmanager/bi;->t(Ljava/lang/String;)V

    return-void
.end method

.method public static u(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/bh;->VE:Lcom/google/android/gms/tagmanager/bi;

    invoke-interface {v0, p0}, Lcom/google/android/gms/tagmanager/bi;->u(Ljava/lang/String;)V

    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/bh;->VE:Lcom/google/android/gms/tagmanager/bi;

    invoke-interface {v0, p0}, Lcom/google/android/gms/tagmanager/bi;->v(Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/bh;->VE:Lcom/google/android/gms/tagmanager/bi;

    invoke-interface {v0, p0}, Lcom/google/android/gms/tagmanager/bi;->w(Ljava/lang/String;)V

    return-void
.end method
