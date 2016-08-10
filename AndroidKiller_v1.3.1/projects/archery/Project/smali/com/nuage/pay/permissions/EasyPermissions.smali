.class public Lcom/nuage/pay/permissions/EasyPermissions;
.super Ljava/lang/Object;
.source "EasyPermissions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuage/pay/permissions/EasyPermissions$PermissionCallbacks;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EasyPermissions"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static executePermissionsRequest(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "perms"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I

    .prologue
    .line 177
    invoke-static {p0, p1, p2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 178
    return-void
.end method

.method public static varargs hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "perms"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    array-length v5, p1

    move v4, v2

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v1, p1, v4

    .line 56
    .local v1, "perm":Ljava/lang/String;
    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    move v0, v3

    .line 57
    .local v0, "hasPerm":Z
    :goto_1
    if-nez v0, :cond_1

    .line 62
    .end local v0    # "hasPerm":Z
    .end local v1    # "perm":Ljava/lang/String;
    :goto_2
    return v2

    .restart local v1    # "perm":Ljava/lang/String;
    :cond_0
    move v0, v2

    .line 56
    goto :goto_1

    .line 55
    .restart local v0    # "hasPerm":Z
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v0    # "hasPerm":Z
    .end local v1    # "perm":Ljava/lang/String;
    :cond_2
    move v2, v3

    .line 62
    goto :goto_2
.end method

.method public static onRequestPermissionsResult(I[Ljava/lang/String;[ILandroid/app/Activity;)V
    .locals 7
    .param p0, "requestCode"    # I
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "grantResults"    # [I
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 138
    instance-of v5, p3, Lcom/nuage/pay/permissions/EasyPermissions$PermissionCallbacks;

    if-nez v5, :cond_0

    .line 139
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Activity must implement PermissionCallbacks."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    move-object v0, p3

    .line 141
    check-cast v0, Lcom/nuage/pay/permissions/EasyPermissions$PermissionCallbacks;

    .line 144
    .local v0, "callbacks":Lcom/nuage/pay/permissions/EasyPermissions$PermissionCallbacks;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v2, "granted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v1, "denied":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_2

    .line 147
    aget-object v4, p1, v3

    .line 148
    .local v4, "perm":Ljava/lang/String;
    aget v5, p2, v3

    if-nez v5, :cond_1

    .line 149
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 151
    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 156
    .end local v4    # "perm":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 158
    invoke-interface {v0, v2}, Lcom/nuage/pay/permissions/EasyPermissions$PermissionCallbacks;->onPermissionsGranted(Ljava/util/List;)V

    .line 162
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 163
    invoke-interface {v0, v1}, Lcom/nuage/pay/permissions/EasyPermissions$PermissionCallbacks;->onPermissionsDenied(Ljava/util/List;)V

    .line 167
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 168
    invoke-static {p3, p0}, Lcom/nuage/pay/permissions/EasyPermissions;->runAnnotatedMethods(Landroid/app/Activity;I)V

    .line 170
    :cond_5
    return-void
.end method

.method public static varargs requestPermissions(Landroid/app/Activity;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "rationale"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "perms"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p3}, Lcom/nuage/pay/permissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    const/4 v1, 0x0

    .line 84
    .local v1, "shouldShowRationale":Z
    array-length v4, p3

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_4

    aget-object v0, p3, v3

    .line 85
    .local v0, "perm":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 86
    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    const/4 v1, 0x1

    .line 84
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    .line 86
    goto :goto_2

    .line 89
    .end local v0    # "perm":Ljava/lang/String;
    :cond_4
    if-nez v1, :cond_0

    .line 113
    invoke-static {p0, p3, p2}, Lcom/nuage/pay/permissions/EasyPermissions;->executePermissionsRequest(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static runAnnotatedMethods(Landroid/app/Activity;I)V
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I

    .prologue
    const/4 v4, 0x0

    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 182
    .local v1, "clazz":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_3

    aget-object v3, v5, v4

    .line 183
    .local v3, "method":Ljava/lang/reflect/Method;
    const-class v7, Lcom/nuage/pay/permissions/AfterPermissionGranted;

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 185
    const-class v7, Lcom/nuage/pay/permissions/AfterPermissionGranted;

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/nuage/pay/permissions/AfterPermissionGranted;

    .line 186
    .local v0, "ann":Lcom/nuage/pay/permissions/AfterPermissionGranted;
    invoke-interface {v0}, Lcom/nuage/pay/permissions/AfterPermissionGranted;->value()I

    move-result v7

    if-ne v7, p1, :cond_2

    .line 188
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-lez v7, :cond_0

    .line 189
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot execute non-void method "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 194
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v7

    if-nez v7, :cond_1

    .line 195
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 197
    :cond_1
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 182
    .end local v0    # "ann":Lcom/nuage/pay/permissions/AfterPermissionGranted;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 198
    .restart local v0    # "ann":Lcom/nuage/pay/permissions/AfterPermissionGranted;
    :catch_0
    move-exception v2

    .line 199
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string v7, "EasyPermissions"

    const-string v8, "runDefaultMethod:IllegalAccessException"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 200
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    .line 201
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v7, "EasyPermissions"

    const-string v8, "runDefaultMethod:InvocationTargetException"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 206
    .end local v0    # "ann":Lcom/nuage/pay/permissions/AfterPermissionGranted;
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_3
    return-void
.end method
