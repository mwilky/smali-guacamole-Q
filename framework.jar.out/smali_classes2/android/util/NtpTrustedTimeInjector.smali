.class public Landroid/util/NtpTrustedTimeInjector;
.super Ljava/lang/Object;
.source "NtpTrustedTimeInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/NtpTrustedTimeInjector$MyHandler;
    }
.end annotation


# static fields
.field private static final ACTION_NTP_TIME:Ljava/lang/String; = "com.oem.intent.action.NTP_TIMES"

.field private static final KEY_NTP_REFERENCE:Ljava/lang/String; = "ntpTimeReference"

.field private static final KEY_NTP_TIME:Ljava/lang/String; = "ntpTime"

.field private static final LOGD:Z = true

.field static final MSG_FORCE_REFRESH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NtpTrustedTimeInjector"

.field private static sContext:Landroid/content/Context;

.field private static sOpSingleton:Landroid/util/NtpTrustedTimeInjector;


# instance fields
.field private mCM:Landroid/net/ConnectivityManager;

.field private mCachedNtpCertainty:J

.field private mCachedNtpElapsedRealtime:J

.field private mCachedNtpTime:J

.field private mHasCache:Z

.field private mNtpTrustedTimeInjectorHandler:Landroid/os/Handler;

.field private mNtpTrustedTimeInjectorThread:Landroid/os/HandlerThread;

.field private final mServer:Ljava/lang/String;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mTimeout:J

.field private oemNTPserverH2:[Ljava/lang/String;

.field private oemNTPserverO2:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;J)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "time.android.com"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/util/NtpTrustedTimeInjector;->oemNTPserverO2:[Ljava/lang/String;

    const-string v0, "asia.pool.ntp.org"

    const-string v1, "cn.pool.ntp.org"

    const-string v2, "0.cn.pool.ntp.org"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/util/NtpTrustedTimeInjector;->oemNTPserverH2:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "creating NtpTrustedTimeInjector using "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NtpTrustedTimeInjector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Landroid/util/NtpTrustedTimeInjector;->mServer:Ljava/lang/String;

    iput-wide p2, p0, Landroid/util/NtpTrustedTimeInjector;->mTimeout:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mTimeout = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/util/NtpTrustedTimeInjector;->mTimeout:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "start mNtpTrustedTimeInjectorThread"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/util/NtpTrustedTimeInjector;->mNtpTrustedTimeInjectorThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Landroid/util/NtpTrustedTimeInjector;->mNtpTrustedTimeInjectorThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/util/NtpTrustedTimeInjector$MyHandler;

    iget-object v1, p0, Landroid/util/NtpTrustedTimeInjector;->mNtpTrustedTimeInjectorThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/util/NtpTrustedTimeInjector$MyHandler;-><init>(Landroid/util/NtpTrustedTimeInjector;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/util/NtpTrustedTimeInjector;->mNtpTrustedTimeInjectorHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Landroid/util/NtpTrustedTimeInjector;Landroid/net/Network;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/util/NtpTrustedTimeInjector;->forceRefreshInThread(Landroid/net/Network;)Z

    move-result v0

    return v0
.end method

.method private forceRefreshInThread(Landroid/net/Network;)Z
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceRefreshInThread() mTimeout = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/util/NtpTrustedTimeInjector;->mTimeout:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NtpTrustedTimeInjector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "persist.sys.force_ntp_server"

    const-string v2, "default"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceRefreshInThread() forceNtpServer = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "CN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-direct {p0}, Landroid/util/NtpTrustedTimeInjector;->getTimeFromOppoServer()Z

    return v4

    :cond_0
    const-string v3, "OverSeas"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p1}, Landroid/util/NtpTrustedTimeInjector;->getTimeFromAndroidServerO2(Landroid/net/Network;)Z

    return v4

    :cond_1
    const-string v3, "NotGet"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "forceRefreshInThread() do nothing !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    new-array v3, v4, [I

    const/4 v5, 0x0

    aput v5, v3, v5

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "forceRefreshInThread() for CHINA SKU"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "persist.sys.oem.region"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "OC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    invoke-direct {p0, p1}, Landroid/util/NtpTrustedTimeInjector;->getTimeFromAndroidServerH2(Landroid/net/Network;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v4

    :cond_4
    invoke-direct {p0}, Landroid/util/NtpTrustedTimeInjector;->getTimeFromOppoServer()Z

    move-result v2

    if-eqz v2, :cond_5

    return v4

    :cond_5
    invoke-direct {p0, p1}, Landroid/util/NtpTrustedTimeInjector;->getTimeFromAndroidServerO2(Landroid/net/Network;)Z

    move-result v2

    if-eqz v2, :cond_6

    return v4

    :cond_6
    goto :goto_0

    :cond_7
    const-string v2, "forceRefreshInThread() for O2 SKU"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Landroid/util/NtpTrustedTimeInjector;->sContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Landroid/util/NtpTrustedTimeInjector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "persist.radio.dds.phone"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/util/NtpTrustedTimeInjector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "forceRefreshInThread() MccMnc = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-eqz v3, :cond_a

    const-string v6, "460"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-direct {p0, p1}, Landroid/util/NtpTrustedTimeInjector;->getTimeFromAndroidServerH2(Landroid/net/Network;)Z

    move-result v6

    if-eqz v6, :cond_9

    return v4

    :cond_9
    invoke-direct {p0}, Landroid/util/NtpTrustedTimeInjector;->getTimeFromOppoServer()Z

    move-result v6

    if-eqz v6, :cond_a

    return v4

    :cond_a
    invoke-direct {p0, p1}, Landroid/util/NtpTrustedTimeInjector;->getTimeFromAndroidServerO2(Landroid/net/Network;)Z

    move-result v6

    if-eqz v6, :cond_b

    return v4

    :cond_b
    :goto_0
    const-string v2, "forceRefreshInThread() return false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method private forceRefreshIntentSoftSim()V
    .locals 5

    sget-object v0, Landroid/util/NtpTrustedTimeInjector;->sContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/util/NtpTrustedTimeInjector;->isOPSoftSimEnable(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "NtpTrustedTimeInjector"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.oem.intent.action.NTP_TIMES"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Landroid/util/NtpTrustedTimeInjector;->mCachedNtpTime:J

    const-string/jumbo v4, "ntpTime"

    invoke-virtual {v0, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-wide v2, p0, Landroid/util/NtpTrustedTimeInjector;->mCachedNtpElapsedRealtime:J

    const-string/jumbo v4, "ntpTimeReference"

    invoke-virtual {v0, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceRefreshIntentSoftSim() mCachedNtpTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Landroid/util/NtpTrustedTimeInjector;->mCachedNtpTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", mCachedNtpElapsedRealtime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Landroid/util/NtpTrustedTimeInjector;->mCachedNtpElapsedRealtime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Landroid/util/NtpTrustedTimeInjector;->sContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v0, "forceRefreshIntentSoftSim() there is no soft sim app, do nothing!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;J)Landroid/util/NtpTrustedTimeInjector;
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const-class v0, Landroid/util/NtpTrustedTimeInjector;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/util/NtpTrustedTimeInjector;->sOpSingleton:Landroid/util/NtpTrustedTimeInjector;

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/NtpTrustedTimeInjector;

    invoke-direct {v1, p1, p2, p3}, Landroid/util/NtpTrustedTimeInjector;-><init>(Ljava/lang/String;J)V

    sput-object v1, Landroid/util/NtpTrustedTimeInjector;->sOpSingleton:Landroid/util/NtpTrustedTimeInjector;

    sput-object p0, Landroid/util/NtpTrustedTimeInjector;->sContext:Landroid/content/Context;

    :cond_0
    sget-object v1, Landroid/util/NtpTrustedTimeInjector;->sOpSingleton:Landroid/util/NtpTrustedTimeInjector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getTimeFromAndroidServerH2(Landroid/net/Network;)Z
    .locals 8

    new-instance v0, Landroid/net/SntpClient;

    invoke-direct {v0}, Landroid/net/SntpClient;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/util/NtpTrustedTimeInjector;->oemNTPserverH2:[Ljava/lang/String;

    array-length v2, v2

    const-string v3, "NtpTrustedTimeInjector"

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getTimeFromAndroidServerH2() SntpClient requestTime() start, server = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/util/NtpTrustedTimeInjector;->oemNTPserverH2:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", network = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/util/NtpTrustedTimeInjector;->oemNTPserverH2:[Ljava/lang/String;

    aget-object v2, v2, v1

    iget-wide v4, p0, Landroid/util/NtpTrustedTimeInjector;->mTimeout:J

    long-to-int v4, v4

    invoke-virtual {v0, v2, v4, p1}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;ILandroid/net/Network;)Z

    move-result v2

    const-string/jumbo v4, "getTimeFromAndroidServerH2() request time from "

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/util/NtpTrustedTimeInjector;->oemNTPserverH2:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " successfully!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/util/NtpTrustedTimeInjector;->mHasCache:Z

    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/util/NtpTrustedTimeInjector;->mCachedNtpTime:J

    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/util/NtpTrustedTimeInjector;->mCachedNtpElapsedRealtime:J

    invoke-virtual {v0}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    iput-wide v4, p0, Landroid/util/NtpTrustedTimeInjector;->mCachedNtpCertainty:J

    invoke-direct {p0}, Landroid/util/NtpTrustedTimeInjector;->forceRefreshIntentSoftSim()V

    const-string/jumbo v4, "getTimeFromAndroidServerH2() return true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/util/NtpTrustedTimeInjector;->oemNTPserverH2:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " failed!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v1, "getTimeFromAndroidServerH2() return false"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method private getTimeFromAndroidServerO2(Landroid/net/Network;)Z
    .locals 8

    new-instance v0, Landroid/net/SntpClient;

    invoke-direct {v0}, Landroid/net/SntpClient;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/util/NtpTrustedTimeInjector;->oemNTPserverO2:[Ljava/lang/String;

    array-length v2, v2

    const-string v3, "NtpTrustedTimeInjector"

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getTimeFromAndroidServerO2() SntpClient requestTime() start, server = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/util/NtpTrustedTimeInjector;->oemNTPserverO2:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", network = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/util/NtpTrustedTimeInjector;->oemNTPserverO2:[Ljava/lang/String;

    aget-object v2, v2, v1

    iget-wide v4, p0, Landroid/util/NtpTrustedTimeInjector;->mTimeout:J

    long-to-int v4, v4

    invoke-virtual {v0, v2, v4, p1}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;ILandroid/net/Network;)Z

    move-result v2

    const-string/jumbo v4, "getTimeFromAndroidServerO2() request time from "

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/util/NtpTrustedTimeInjector;->oemNTPserverO2:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " successfully!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/util/NtpTrustedTimeInjector;->mHasCache:Z

    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/util/NtpTrustedTimeInjector;->mCachedNtpTime:J

    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/util/NtpTrustedTimeInjector;->mCachedNtpElapsedRealtime:J

    invoke-virtual {v0}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    iput-wide v4, p0, Landroid/util/NtpTrustedTimeInjector;->mCachedNtpCertainty:J

    invoke-direct {p0}, Landroid/util/NtpTrustedTimeInjector;->forceRefreshIntentSoftSim()V

    const-string/jumbo v4, "getTimeFromAndroidServerO2() return true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/util/NtpTrustedTimeInjector;->oemNTPserverO2:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " failed!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v1, "getTimeFromAndroidServerO2() return false"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method private getTimeFromOppoServer()Z
    .locals 10

    new-instance v0, Landroid/util/OpHttpClient;

    invoke-direct {v0}, Landroid/util/OpHttpClient;-><init>()V

    const-string v1, "NtpTrustedTimeInjector"

    const-string/jumbo v2, "getTimeFromOppoServer() opHttpClient requestTime() from http server 1 start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Landroid/util/NtpTrustedTimeInjector;->sContext:Landroid/content/Context;

    iget-wide v3, p0, Landroid/util/NtpTrustedTimeInjector;->mTimeout:J

    long-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Landroid/util/OpHttpClient;->requestTime(Landroid/content/Context;II)Z

    move-result v2

    const-string/jumbo v3, "getTimeFromOppoServer() return true"

    const-wide/16 v5, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_0

    const-string/jumbo v2, "getTimeFromOppoServer() Use oem http server 1 algin time success!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v7, p0, Landroid/util/NtpTrustedTimeInjector;->mHasCache:Z

    invoke-virtual {v0}, Landroid/util/OpHttpClient;->getHttpTime()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/util/NtpTrustedTimeInjector;->mCachedNtpTime:J

    invoke-virtual {v0}, Landroid/util/OpHttpClient;->getHttpTimeReference()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/util/NtpTrustedTimeInjector;->mCachedNtpElapsedRealtime:J

    invoke-virtual {v0}, Landroid/util/OpHttpClient;->getRoundTripTime()J

    move-result-wide v8

    div-long/2addr v8, v5

    iput-wide v8, p0, Landroid/util/NtpTrustedTimeInjector;->mCachedNtpCertainty:J

    invoke-direct {p0}, Landroid/util/NtpTrustedTimeInjector;->forceRefreshIntentSoftSim()V

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_0
    const-string/jumbo v2, "getTimeFromOppoServer() opHttpClient requestTime() from http server 2 start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Landroid/util/NtpTrustedTimeInjector;->sContext:Landroid/content/Context;

    iget-wide v8, p0, Landroid/util/NtpTrustedTimeInjector;->mTimeout:J

    long-to-int v8, v8

    invoke-virtual {v0, v2, v7, v8}, Landroid/util/OpHttpClient;->requestTime(Landroid/content/Context;II)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "getTimeFromOppoServer() Use oem http server 2 algin time success!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v7, p0, Landroid/util/NtpTrustedTimeInjector;->mHasCache:Z

    invoke-virtual {v0}, Landroid/util/OpHttpClient;->getHttpTime()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/util/NtpTrustedTimeInjector;->mCachedNtpTime:J

    invoke-virtual {v0}, Landroid/util/OpHttpClient;->getHttpTimeReference()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/util/NtpTrustedTimeInjector;->mCachedNtpElapsedRealtime:J

    invoke-virtual {v0}, Landroid/util/OpHttpClient;->getRoundTripTime()J

    move-result-wide v8

    div-long/2addr v8, v5

    iput-wide v8, p0, Landroid/util/NtpTrustedTimeInjector;->mCachedNtpCertainty:J

    invoke-direct {p0}, Landroid/util/NtpTrustedTimeInjector;->forceRefreshIntentSoftSim()V

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_1
    const-string/jumbo v2, "getTimeFromOppoServer() Use oem http server 1 & 2 algin time failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method private isOPSoftSimEnable(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.redteamobile.virtual.softsim"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v1, v2

    :goto_0
    if-nez v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 4
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    iget-boolean v0, p0, Landroid/util/NtpTrustedTimeInjector;->mHasCache:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/util/NtpTrustedTimeInjector;->mCachedNtpTime:J

    invoke-virtual {p0}, Landroid/util/NtpTrustedTimeInjector;->getCacheAge()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing authoritative time source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public forceRefresh()Z
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    invoke-virtual {p0}, Landroid/util/NtpTrustedTimeInjector;->hasCache()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/util/NtpTrustedTimeInjector;->forceSync()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public forceRefresh(Landroid/net/Network;)Z
    .locals 5

    iget-object v0, p0, Landroid/util/NtpTrustedTimeInjector;->mServer:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "NtpTrustedTimeInjector"

    const-string/jumbo v2, "missing server, so no trusted time available"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/util/NtpTrustedTimeInjector;->mCM:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    sget-object v0, Landroid/util/NtpTrustedTimeInjector;->sContext:Landroid/content/Context;

    const-class v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/util/NtpTrustedTimeInjector;->mCM:Landroid/net/ConnectivityManager;

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/util/NtpTrustedTimeInjector;->mCM:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const-string v1, "NtpTrustedTimeInjector"

    const-string v2, "forceRefresh() send MSG_FORCE_REFRESH"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/util/NtpTrustedTimeInjector;->mNtpTrustedTimeInjectorHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v3, p0, Landroid/util/NtpTrustedTimeInjector;->mNtpTrustedTimeInjectorHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forceRefresh() hasCache() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/NtpTrustedTimeInjector;->hasCache()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NtpTrustedTimeInjector"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/util/NtpTrustedTimeInjector;->hasCache()Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "NtpTrustedTimeInjector"

    const-string v4, "forceRefresh() before 1sec delay"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    :cond_4
    const-string v3, "NtpTrustedTimeInjector"

    const-string v4, "forceRefresh() return true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5
    :goto_1
    const-string v2, "NtpTrustedTimeInjector"

    const-string v3, "forceRefresh: no connectivity"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public forceSync()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/util/NtpTrustedTimeInjector;->mCM:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    sget-object v0, Landroid/util/NtpTrustedTimeInjector;->sContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/util/NtpTrustedTimeInjector;->mCM:Landroid/net/ConnectivityManager;

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/util/NtpTrustedTimeInjector;->mCM:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceSync(): network = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NtpTrustedTimeInjector"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Landroid/util/NtpTrustedTimeInjector;->forceRefresh(Landroid/net/Network;)Z

    move-result v1

    return v1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getCacheAge()J
    .locals 4

    iget-boolean v0, p0, Landroid/util/NtpTrustedTimeInjector;->mHasCache:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/util/NtpTrustedTimeInjector;->mCachedNtpElapsedRealtime:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getCacheCertainty()J
    .locals 2

    iget-boolean v0, p0, Landroid/util/NtpTrustedTimeInjector;->mHasCache:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/util/NtpTrustedTimeInjector;->mCachedNtpCertainty:J

    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getCachedNtpTime()J
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    iget-wide v0, p0, Landroid/util/NtpTrustedTimeInjector;->mCachedNtpTime:J

    return-wide v0
.end method

.method public getCachedNtpTimeReference()J
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    iget-wide v0, p0, Landroid/util/NtpTrustedTimeInjector;->mCachedNtpElapsedRealtime:J

    return-wide v0
.end method

.method public hasCache()Z
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    iget-boolean v0, p0, Landroid/util/NtpTrustedTimeInjector;->mHasCache:Z

    return v0
.end method
