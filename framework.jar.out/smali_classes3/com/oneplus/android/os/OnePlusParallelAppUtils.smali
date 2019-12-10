.class public Lcom/oneplus/android/os/OnePlusParallelAppUtils;
.super Ljava/lang/Object;
.source "OnePlusParallelAppUtils.java"


# static fields
.field public static final DBG_ALL:Z

.field public static final DBG_DUMPDSATCK:Z

.field public static final DBG_DUMPVSATCK:Z

.field private static final DEBUG:Z

.field private static final DEBUG_INJECTOR:Z

.field private static final IS_PARALLEL_APP_FEATURED:Z

.field private static final TAG:Ljava/lang/String; = "OnePlusParallelAppUtils"

.field private static sOnePlusParallelAppUtils:Lcom/oneplus/android/os/IOnePlusParallelAppUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->DEBUG:Z

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x22

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->IS_PARALLEL_APP_FEATURED:Z

    const-string v0, "OnePlusParallelAppUtils"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->DEBUG_INJECTOR:Z

    nop

    const-string/jumbo v0, "persist.debug.onepluspa.all"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->DBG_ALL:Z

    nop

    const-string/jumbo v0, "persist.debug.onepluspa.stackd"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->DBG_DUMPDSATCK:Z

    nop

    const-string/jumbo v0, "persist.debug.onepluspa.stackv"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->DBG_DUMPVSATCK:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static initInstance()V
    .locals 1

    sget-object v0, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->sOnePlusParallelAppUtils:Lcom/oneplus/android/os/IOnePlusParallelAppUtils;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_OPPARALLELAPP:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/os/IOnePlusParallelAppUtils;

    sput-object v0, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->sOnePlusParallelAppUtils:Lcom/oneplus/android/os/IOnePlusParallelAppUtils;

    :cond_0
    return-void
.end method

.method public static isBasicParallelApp(Ljava/lang/String;)Z
    .locals 3

    sget-boolean v0, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->IS_PARALLEL_APP_FEATURED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_1

    const-string v0, "OnePlusParallelAppUtils"

    const-string v2, "call OnePlusParallelAppUtils.isBasicParallelApp()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->initInstance()V

    sget-object v0, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->sOnePlusParallelAppUtils:Lcom/oneplus/android/os/IOnePlusParallelAppUtils;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/oneplus/android/os/IOnePlusParallelAppUtils;->isBasicParallelApp(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public static isNotInstallForParallelUser(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getUserId()I

    move-result v0

    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v0}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isParallelUser(I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eq v0, v1, :cond_1

    sget-boolean v2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The context userId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",but the package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " applicationInfoUserId\'s userId is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", so just skip it"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OnePlusParallelAppUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public static isParallelAuth(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 3

    sget-boolean v0, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->IS_PARALLEL_APP_FEATURED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_1

    const-string v0, "OnePlusParallelAppUtils"

    const-string v2, "call OnePlusParallelAppUtils.isParallelAuth()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->initInstance()V

    sget-object v0, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->sOnePlusParallelAppUtils:Lcom/oneplus/android/os/IOnePlusParallelAppUtils;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0, p1, p2}, Lcom/oneplus/android/os/IOnePlusParallelAppUtils;->isParallelAuth(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public static isParallelAuth(Ljava/lang/String;ILjava/lang/String;Z)Z
    .locals 3

    sget-boolean v0, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->IS_PARALLEL_APP_FEATURED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_1

    const-string v0, "OnePlusParallelAppUtils"

    const-string v2, "call OnePlusParallelAppUtils.isParallelAuth()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->initInstance()V

    sget-object v0, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->sOnePlusParallelAppUtils:Lcom/oneplus/android/os/IOnePlusParallelAppUtils;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/oneplus/android/os/IOnePlusParallelAppUtils;->isParallelAuth(Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public static isParallelAuth(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    sget-boolean v0, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->IS_PARALLEL_APP_FEATURED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_1

    const-string v0, "OnePlusParallelAppUtils"

    const-string v2, "call OnePlusParallelAppUtils.isParallelAut()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->initInstance()V

    sget-object v0, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->sOnePlusParallelAppUtils:Lcom/oneplus/android/os/IOnePlusParallelAppUtils;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0, p1}, Lcom/oneplus/android/os/IOnePlusParallelAppUtils;->isParallelAuth(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public static isParallelUser(I)Z
    .locals 3

    sget-boolean v0, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->IS_PARALLEL_APP_FEATURED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_1

    const-string v0, "OnePlusParallelAppUtils"

    const-string v2, "call OnePlusParallelAppUtils.isParallelUser()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->initInstance()V

    sget-object v0, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->sOnePlusParallelAppUtils:Lcom/oneplus/android/os/IOnePlusParallelAppUtils;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/oneplus/android/os/IOnePlusParallelAppUtils;->isParallelUser(I)Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public static pLogd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->DBG_DUMPDSATCK:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "OnePlusParallelAppUtils"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public static pLogv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->DBG_ALL:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->DBG_DUMPVSATCK:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "OnePlusParallelAppUtils"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method
