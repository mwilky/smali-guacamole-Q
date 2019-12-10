.class public Lcom/android/internal/os/KernelCpuSpeedReader;
.super Ljava/lang/Object;
.source "KernelCpuSpeedReader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KernelCpuSpeedReader"


# instance fields
.field private final mDeltaSpeedTimesMs:[J

.field private final mJiffyMillis:J

.field private final mLastSpeedTimesMs:[J

.field private final mNumSpeedSteps:I

.field private final mProcFile:Ljava/lang/String;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method public constructor <init>(II)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "/sys/devices/system/cpu/cpu%d/cpufreq/stats/time_in_state"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mProcFile:Ljava/lang/String;

    iput p2, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mNumSpeedSteps:I

    new-array v0, p2, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimesMs:[J

    new-array v0, p2, [J

    iput-object v0, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimesMs:[J

    sget v0, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mJiffyMillis:J

    return-void
.end method


# virtual methods
.method public readAbsolute()[J
    .locals 12

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mNumSpeedSteps:I

    new-array v1, v1, [J

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    iget-object v4, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mProcFile:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v3, 0x0

    :try_start_1
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x20

    invoke-direct {v4, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    const/4 v5, 0x0

    :goto_0
    iget v6, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mNumSpeedSteps:I

    if-ge v5, v6, :cond_0

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    if-eqz v6, :cond_0

    invoke-virtual {v4, v7}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mJiffyMillis:J

    mul-long/2addr v8, v10

    aput-wide v8, v1, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-static {v3, v2}, Lcom/android/internal/os/KernelCpuSpeedReader;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-static {v3, v2}, Lcom/android/internal/os/KernelCpuSpeedReader;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_5
    const-string v3, "KernelCpuSpeedReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read cpu-freq: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x0

    invoke-static {v1, v3, v4}, Ljava/util/Arrays;->fill([JJ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_1
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    nop

    return-object v1

    :goto_2
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v2
.end method

.method public readDelta()[J
    .locals 15

    const-string v0, "Failed to read cpu-freq: "

    const-string v1, "KernelCpuSpeedReader"

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    const-wide/16 v3, 0x0

    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    iget-object v7, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mProcFile:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v6, 0x0

    :try_start_1
    new-instance v7, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v8, 0x20

    invoke-direct {v7, v8}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    const/4 v8, 0x0

    :goto_0
    iget-object v9, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimesMs:[J

    array-length v9, v9

    if-ge v8, v9, :cond_1

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    if-eqz v9, :cond_1

    invoke-virtual {v7, v10}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    invoke-virtual {v7}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    iget-wide v13, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mJiffyMillis:J

    mul-long/2addr v11, v13

    iget-object v9, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimesMs:[J

    aget-wide v13, v9, v8

    cmp-long v9, v11, v13

    if-gez v9, :cond_0

    iget-object v9, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimesMs:[J

    aput-wide v11, v9, v8

    goto :goto_1

    :cond_0
    iget-object v9, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimesMs:[J

    iget-object v13, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimesMs:[J

    aget-wide v13, v13, v8

    sub-long v13, v11, v13

    aput-wide v13, v9, v8

    :goto_1
    iget-object v9, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mLastSpeedTimesMs:[J

    aput-wide v11, v9, v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-static {v6, v5}, Lcom/android/internal/os/KernelCpuSpeedReader;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception v6

    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v7

    :try_start_4
    invoke-static {v6, v5}, Lcom/android/internal/os/KernelCpuSpeedReader;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v7
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v5

    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimesMs:[J

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->fill([JJ)V

    goto :goto_2

    :catch_1
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimesMs:[J

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->fill([JJ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_2
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    nop

    iget-object v0, p0, Lcom/android/internal/os/KernelCpuSpeedReader;->mDeltaSpeedTimesMs:[J

    return-object v0

    :goto_3
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0
.end method
