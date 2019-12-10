.class public Lcom/android/internal/os/CpuPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "CpuPowerCalculator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final MICROSEC_IN_HR:J = 0xd693a400L

.field private static final TAG:Ljava/lang/String; = "CpuPowerCalculator"


# instance fields
.field private final mProfile:Lcom/android/internal/os/PowerProfile;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/CpuPowerCalculator;->mProfile:Lcom/android/internal/os/PowerProfile;

    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p7

    invoke-virtual {v2, v3}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v4

    invoke-virtual {v2, v3}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v6

    add-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iput-wide v4, v1, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    iget-object v4, v0, Lcom/android/internal/os/CpuPowerCalculator;->mProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v4}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    move-result v4

    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    iget-object v10, v0, Lcom/android/internal/os/CpuPowerCalculator;->mProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v10, v5}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v10

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_0

    invoke-virtual {v2, v5, v11, v3}, Landroid/os/BatteryStats$Uid;->getTimeAtCpuSpeed(III)J

    move-result-wide v12

    long-to-double v14, v12

    iget-object v6, v0, Lcom/android/internal/os/CpuPowerCalculator;->mProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v6, v5, v11}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuCore(II)D

    move-result-wide v6

    mul-double/2addr v14, v6

    add-double/2addr v8, v14

    add-int/lit8 v11, v11, 0x1

    const-wide/16 v6, 0x3e8

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    const-wide/16 v6, 0x3e8

    goto :goto_0

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getCpuActiveTime()J

    move-result-wide v5

    const-wide/16 v10, 0x3e8

    mul-long/2addr v5, v10

    long-to-double v5, v5

    iget-object v7, v0, Lcom/android/internal/os/CpuPowerCalculator;->mProfile:Lcom/android/internal/os/PowerProfile;

    const-string v10, "cpu.active"

    invoke-virtual {v7, v10}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v10

    mul-double/2addr v5, v10

    add-double/2addr v8, v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getCpuClusterTimes()[J

    move-result-object v5

    const-string v6, "CpuPowerCalculator"

    if-eqz v5, :cond_4

    array-length v7, v5

    if-ne v7, v4, :cond_3

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v4, :cond_2

    aget-wide v10, v5, v7

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    long-to-double v10, v10

    iget-object v14, v0, Lcom/android/internal/os/CpuPowerCalculator;->mProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v14, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpuCluster(I)D

    move-result-wide v14

    mul-double/2addr v10, v14

    add-double/2addr v8, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    goto :goto_3

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UID "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " CPU cluster # mismatch: Power Profile # "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " actual # "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v10, v5

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    const-wide v10, 0x41ead27480000000L    # 3.6E9

    div-double v10, v8, v10

    iput-wide v10, v1, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    iput-wide v12, v1, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v12, :cond_9

    invoke-virtual {v7, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/BatteryStats$Uid$Proc;

    if-nez v14, :cond_5

    const-string v15, "WARNING! getProcessStats()\'s value is null"

    invoke-static {v6, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v16, v4

    move-object/from16 v17, v5

    move-object v0, v6

    move-object/from16 v18, v7

    goto :goto_6

    :cond_5
    invoke-virtual {v7, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move/from16 v16, v4

    move-object/from16 v17, v5

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    invoke-virtual {v14, v3}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v18

    add-long v4, v4, v18

    iput-wide v4, v1, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    invoke-virtual {v14, v3}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v4

    invoke-virtual {v14, v3}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v18

    add-long v4, v4, v18

    invoke-virtual {v14, v3}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v18

    add-long v4, v4, v18

    iget-object v0, v1, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v6

    move-object/from16 v18, v7

    goto :goto_5

    :cond_6
    move-object v0, v6

    move-object/from16 v18, v7

    long-to-double v6, v4

    cmpg-double v6, v10, v6

    if-gez v6, :cond_8

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    long-to-double v6, v4

    iput-object v15, v1, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-wide v10, v6

    goto :goto_6

    :cond_7
    move-object v0, v6

    move-object/from16 v18, v7

    :goto_5
    long-to-double v6, v4

    iput-object v15, v1, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-wide v10, v6

    :cond_8
    :goto_6
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p2

    move-object v6, v0

    move/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v7, v18

    move-object/from16 v0, p0

    goto :goto_4

    :cond_9
    move/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v7

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    iget-wide v6, v1, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_a

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    iput-wide v4, v1, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    :cond_a
    return-void
.end method
