.class public Landroid/util/NtpTrustedTime;
.super Ljava/lang/Object;
.source "NtpTrustedTime.java"

# interfaces
.implements Landroid/util/TrustedTime;


# static fields
.field private static final BACKUP_SERVER:Ljava/lang/String; = "persist.backup.ntpServer"

.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "NtpTrustedTime-AOSP"

.field private static mBackupServer:Ljava/lang/String;

.field private static mNtpRetries:I

.field private static mNtpRetriesMax:I

.field private static sContext:Landroid/content/Context;

.field private static sOpSingleton:Landroid/util/NtpTrustedTimeInjector;

.field private static sSingleton:Landroid/util/NtpTrustedTime;


# instance fields
.field private mBackupmode:Z

.field private mCM:Landroid/net/ConnectivityManager;

.field private mCachedNtpCertainty:J

.field private mCachedNtpElapsedRealtime:J

.field private mCachedNtpTime:J

.field private mHasCache:Z

.field private final mServer:Ljava/lang/String;

.field private final mTimeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Landroid/util/NtpTrustedTime;->mBackupServer:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Landroid/util/NtpTrustedTime;->mNtpRetries:I

    sput v0, Landroid/util/NtpTrustedTime;->mNtpRetriesMax:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/NtpTrustedTime;->mBackupmode:Z

    iput-object p1, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    iput-wide p2, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    return-void
.end method

.method private countInBackupmode()V
    .locals 3

    invoke-direct {p0}, Landroid/util/NtpTrustedTime;->isBackupSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/util/NtpTrustedTime;->mNtpRetries:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Landroid/util/NtpTrustedTime;->mNtpRetries:I

    sget v0, Landroid/util/NtpTrustedTime;->mNtpRetries:I

    sget v2, Landroid/util/NtpTrustedTime;->mNtpRetriesMax:I

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    sput v0, Landroid/util/NtpTrustedTime;->mNtpRetries:I

    invoke-virtual {p0, v1}, Landroid/util/NtpTrustedTime;->setBackupmode(Z)V

    :cond_0
    return-void
.end method

.method private getBackupmode()Z
    .locals 1

    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mBackupmode:Z

    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;
    .locals 17
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    move-object/from16 v0, p0

    const-class v1, Landroid/util/NtpTrustedTime;

    monitor-enter v1

    :try_start_0
    sget-object v2, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    if-nez v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const v4, 0x104019c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x10e009c

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v5, v5

    const-string/jumbo v7, "ntp_server"

    invoke-static {v3, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "ntp_timeout"

    invoke-static {v3, v8, v5, v6}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    if-eqz v7, :cond_0

    move-object v10, v7

    goto :goto_0

    :cond_0
    move-object v10, v4

    :goto_0
    new-instance v11, Landroid/util/NtpTrustedTime;

    invoke-direct {v11, v10, v8, v9}, Landroid/util/NtpTrustedTime;-><init>(Ljava/lang/String;J)V

    sput-object v11, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    invoke-static {v0, v10, v8, v9}, Landroid/util/NtpTrustedTimeInjector;->getInstance(Landroid/content/Context;Ljava/lang/String;J)Landroid/util/NtpTrustedTimeInjector;

    move-result-object v11

    sput-object v11, Landroid/util/NtpTrustedTime;->sOpSingleton:Landroid/util/NtpTrustedTimeInjector;

    sput-object v0, Landroid/util/NtpTrustedTime;->sContext:Landroid/content/Context;

    const-string/jumbo v11, "ntp_server_2"

    invoke-static {v3, v11}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_1

    move-object v12, v11

    goto :goto_1

    :cond_1
    const-string/jumbo v12, "persist.backup.ntpServer"

    :goto_1
    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_3

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_3

    const v14, 0x10e009a

    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    if-lez v14, :cond_2

    sget-object v15, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    sput v14, Landroid/util/NtpTrustedTime;->mNtpRetriesMax:I

    sget-object v15, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    const-string v0, "\""

    move-object/from16 v16, v2

    const-string v2, ""

    invoke-virtual {v15, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/NtpTrustedTime;->mBackupServer:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v16, v2

    goto :goto_2

    :cond_3
    move-object/from16 v16, v2

    :cond_4
    :goto_2
    sget-object v0, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isBackupSupported()Z
    .locals 1

    sget v0, Landroid/util/NtpTrustedTime;->mNtpRetriesMax:I

    if-lez v0, :cond_0

    sget-object v0, Landroid/util/NtpTrustedTime;->mBackupServer:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    sget-object v0, Landroid/util/NtpTrustedTime;->sOpSingleton:Landroid/util/NtpTrustedTimeInjector;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTimeInjector;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public forceRefresh()Z
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    sget-object v0, Landroid/util/NtpTrustedTime;->sOpSingleton:Landroid/util/NtpTrustedTimeInjector;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTimeInjector;->forceRefresh()Z

    move-result v0

    return v0
.end method

.method public forceRefresh(Landroid/net/Network;)Z
    .locals 1

    sget-object v0, Landroid/util/NtpTrustedTime;->sOpSingleton:Landroid/util/NtpTrustedTimeInjector;

    invoke-virtual {v0, p1}, Landroid/util/NtpTrustedTimeInjector;->forceRefresh(Landroid/net/Network;)Z

    move-result v0

    return v0
.end method

.method public forceSync()Z
    .locals 1

    sget-object v0, Landroid/util/NtpTrustedTime;->sOpSingleton:Landroid/util/NtpTrustedTimeInjector;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTimeInjector;->forceSync()Z

    move-result v0

    return v0
.end method

.method public getCacheAge()J
    .locals 2

    sget-object v0, Landroid/util/NtpTrustedTime;->sOpSingleton:Landroid/util/NtpTrustedTimeInjector;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTimeInjector;->getCacheAge()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCacheCertainty()J
    .locals 2

    sget-object v0, Landroid/util/NtpTrustedTime;->sOpSingleton:Landroid/util/NtpTrustedTimeInjector;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTimeInjector;->getCacheCertainty()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCachedNtpTime()J
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    sget-object v0, Landroid/util/NtpTrustedTime;->sOpSingleton:Landroid/util/NtpTrustedTimeInjector;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTimeInjector;->getCachedNtpTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCachedNtpTimeReference()J
    .locals 2
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    sget-object v0, Landroid/util/NtpTrustedTime;->sOpSingleton:Landroid/util/NtpTrustedTimeInjector;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTimeInjector;->getCachedNtpTimeReference()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasCache()Z
    .locals 1
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    sget-object v0, Landroid/util/NtpTrustedTime;->sOpSingleton:Landroid/util/NtpTrustedTimeInjector;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTimeInjector;->hasCache()Z

    move-result v0

    return v0
.end method

.method public setBackupmode(Z)V
    .locals 1

    invoke-direct {p0}, Landroid/util/NtpTrustedTime;->isBackupSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Landroid/util/NtpTrustedTime;->mBackupmode:Z

    :cond_0
    return-void
.end method
