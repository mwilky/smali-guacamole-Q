.class public Lcom/oneplus/android/openid/OpOpenIdManagerInjector;
.super Ljava/lang/Object;
.source "OpOpenIdManagerInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OpenIdManagerInjector"

.field private static sService:Lcom/oneplus/android/openid/IOpOpenIdManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearOpenId(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x16

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oneplus/android/openid/OpOpenIdManagerInjector;->getService()Lcom/oneplus/android/openid/IOpOpenIdManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/oneplus/android/openid/OpOpenIdManagerInjector;->getService()Lcom/oneplus/android/openid/IOpOpenIdManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/oneplus/android/openid/IOpOpenIdManager;->clearOpenId(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    const-string v0, "OpenIdManagerInjector"

    const-string v1, "Feature is not supported for now"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getOpenId(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x16

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oneplus/android/openid/OpOpenIdManagerInjector;->getService()Lcom/oneplus/android/openid/IOpOpenIdManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/oneplus/android/openid/OpOpenIdManagerInjector;->getService()Lcom/oneplus/android/openid/IOpOpenIdManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/oneplus/android/openid/IOpOpenIdManager;->getOpenId(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "OpenIdManagerInjector"

    const-string v1, "Feature is not supported for now"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private static getService()Lcom/oneplus/android/openid/IOpOpenIdManager;
    .locals 4

    const-string v0, "OpenIdManagerInjector"

    sget-object v1, Lcom/oneplus/android/openid/OpOpenIdManagerInjector;->sService:Lcom/oneplus/android/openid/IOpOpenIdManager;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v1, "openid"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openid service="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/oneplus/android/openid/IOpOpenIdManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/android/openid/IOpOpenIdManager;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/openid/OpOpenIdManagerInjector;->sService:Lcom/oneplus/android/openid/IOpOpenIdManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Can\'t get openid service"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object v0, Lcom/oneplus/android/openid/OpOpenIdManagerInjector;->sService:Lcom/oneplus/android/openid/IOpOpenIdManager;

    return-object v0
.end method
