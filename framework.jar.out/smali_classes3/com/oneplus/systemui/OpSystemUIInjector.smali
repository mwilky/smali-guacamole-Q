.class public Lcom/oneplus/systemui/OpSystemUIInjector;
.super Ljava/lang/Object;
.source "OpSystemUIInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OpSystemUIInjector"

.field private static sOpWm:Landroid/view/IOpWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/systemui/OpSystemUIInjector;->sOpWm:Landroid/view/IOpWindowManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAppLockerPassedPackage(Ljava/lang/String;)Z
    .locals 5

    sget-object v0, Lcom/oneplus/systemui/OpSystemUIInjector;->sOpWm:Landroid/view/IOpWindowManager;

    if-nez v0, :cond_0

    nop

    const-string v0, "oneplus_windowmanagerservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IOpWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IOpWindowManager;

    move-result-object v0

    sput-object v0, Lcom/oneplus/systemui/OpSystemUIInjector;->sOpWm:Landroid/view/IOpWindowManager;

    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lcom/oneplus/systemui/OpSystemUIInjector;->sOpWm:Landroid/view/IOpWindowManager;

    const-string v2, "OpSystemUIInjector"

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1, p0}, Landroid/view/IOpWindowManager;->addAppLockerPassedPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invoke addAppLockerPassedPackage fail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "OpWindowManager is null!"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v0
.end method

.method public static isKeyguardDone()Z
    .locals 5

    sget-object v0, Lcom/oneplus/systemui/OpSystemUIInjector;->sOpWm:Landroid/view/IOpWindowManager;

    if-nez v0, :cond_0

    nop

    const-string v0, "oneplus_windowmanagerservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IOpWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IOpWindowManager;

    move-result-object v0

    sput-object v0, Lcom/oneplus/systemui/OpSystemUIInjector;->sOpWm:Landroid/view/IOpWindowManager;

    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lcom/oneplus/systemui/OpSystemUIInjector;->sOpWm:Landroid/view/IOpWindowManager;

    const-string v2, "OpSystemUIInjector"

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/view/IOpWindowManager;->isKeyguardDone()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invoke isKeyguardDone fail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "OpWindowManager is null!"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isKeyguardDone = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isPackageInPassedList(Ljava/lang/String;)Z
    .locals 5

    sget-object v0, Lcom/oneplus/systemui/OpSystemUIInjector;->sOpWm:Landroid/view/IOpWindowManager;

    if-nez v0, :cond_0

    nop

    const-string v0, "oneplus_windowmanagerservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IOpWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IOpWindowManager;

    move-result-object v0

    sput-object v0, Lcom/oneplus/systemui/OpSystemUIInjector;->sOpWm:Landroid/view/IOpWindowManager;

    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lcom/oneplus/systemui/OpSystemUIInjector;->sOpWm:Landroid/view/IOpWindowManager;

    const-string v2, "OpSystemUIInjector"

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1, p0}, Landroid/view/IOpWindowManager;->isPackageInPassedList(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invoke isPackageInPassedList fail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "OpWindowManager is null!"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v0
.end method
