.class public Landroid/app/OpQuickReplyApp;
.super Ljava/lang/Object;
.source "OpQuickReplyApp.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static sIMELimitWidth:I

.field public static sIsQuickReplyIMEapp:Z

.field public static sIsQuickReplyIMapp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Landroid/app/OpQuickReplyApp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/OpQuickReplyApp;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/OpQuickReplyApp;->sIsQuickReplyIMapp:Z

    sput-boolean v0, Landroid/app/OpQuickReplyApp;->sIsQuickReplyIMEapp:Z

    nop

    const-string v0, "persist.sys.quickreply.imewidth"

    const/16 v1, 0x438

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/app/OpQuickReplyApp;->sIMELimitWidth:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exitQuickReply()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x2a

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/app/OpQuickReplyApp;->sIsQuickReplyIMapp:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "sys.quickreplay.running"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/app/OpQuickReplyApp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exitQuickReply due to opening camera caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "oneplus_windowmanagerservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IOpWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IOpWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/IOpWindowManager;->exitQuickReply()V

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/app/OpQuickReplyApp;->TAG:Ljava/lang/String;

    const-string v2, "exitQuickReply: window manager is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/OpQuickReplyApp;->TAG:Ljava/lang/String;

    const-string v2, "fail to exitQuickReply."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public static getIMELimitWidth(I)I
    .locals 4

    move v0, p0

    sget-boolean v1, Landroid/app/OpQuickReplyApp;->sIsQuickReplyIMEapp:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const-string/jumbo v2, "sys.quickreplay.running"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v0, Landroid/app/OpQuickReplyApp;->sIMELimitWidth:I

    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/app/OpQuickReplyApp;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRealSize, x="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " caller:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public static initAppType(Ljava/lang/String;)V
    .locals 4

    invoke-static {p0}, Landroid/app/OpQuickReplyApp;->isQuickReplyIMApp(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/app/OpQuickReplyApp;->sIsQuickReplyIMapp:Z

    invoke-static {p0}, Landroid/app/OpQuickReplyApp;->isQuickReplyIMEApp(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/app/OpQuickReplyApp;->sIsQuickReplyIMEapp:Z

    sget-boolean v0, Landroid/app/OpQuickReplyApp;->sIsQuickReplyIMEapp:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x438

    const-string v1, "persist.sys.quickreply.imewidth"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/app/OpQuickReplyApp;->sIMELimitWidth:I

    :cond_0
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Landroid/app/OpQuickReplyApp;->sIsQuickReplyIMEapp:Z

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/app/OpQuickReplyApp;->sIsQuickReplyIMapp:Z

    if-eqz v0, :cond_3

    :cond_1
    sget-object v0, Landroid/app/OpQuickReplyApp;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isIM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Landroid/app/OpQuickReplyApp;->sIsQuickReplyIMapp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isIME="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Landroid/app/OpQuickReplyApp;->sIsQuickReplyIMEapp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    sget-boolean v2, Landroid/app/OpQuickReplyApp;->sIsQuickReplyIMEapp:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " IME_LIMIT_WIDTH="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/app/OpQuickReplyApp;->sIMELimitWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pkg= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public static isQuickReplyIMApp(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/16 v4, 0x2a

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    const-string v2, "oneplus_windowmanagerservice"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IOpWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IOpWindowManager;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2, v3}, Landroid/view/IOpWindowManager;->getQuickReplyList(I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_1
    sget-object v1, Landroid/app/OpQuickReplyApp;->TAG:Ljava/lang/String;

    const-string v3, "isQuickReplyIMApp: window manager is null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v1

    sget-object v2, Landroid/app/OpQuickReplyApp;->TAG:Ljava/lang/String;

    const-string v3, "fail to get IM package list."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    return v0
.end method

.method public static isQuickReplyIMEApp(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    const/16 v4, 0x2a

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    const-string v2, "oneplus_windowmanagerservice"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IOpWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IOpWindowManager;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2, v1}, Landroid/view/IOpWindowManager;->getQuickReplyList(I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_1
    sget-object v1, Landroid/app/OpQuickReplyApp;->TAG:Ljava/lang/String;

    const-string v3, "isQuickReplyIMEApp: window manager is null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v1

    sget-object v2, Landroid/app/OpQuickReplyApp;->TAG:Ljava/lang/String;

    const-string v3, "fail to get IME package list."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    return v0
.end method
