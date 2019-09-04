.class public Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;
.super Ljava/lang/Object;
.source "HoustonProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager$Instance;
    }
.end annotation


# static fields
.field private static final MAX_JANK_COUNT:I = 0x32

.field private static final TAG:Ljava/lang/String; = "HoustonProcessManager"


# instance fields
.field private mAiPicker:Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;

.field private final mBoostedPids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBrain:Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;

.field private mCurrentPackage:Ljava/lang/String;

.field private final mHwBrainDeath:Landroid/os/IHwBinder$DeathRecipient;

.field private mIsWarmStart:Z

.field private final mJankPackcages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private final mPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;",
            ">;"
        }
    .end annotation
.end field

.field private mTopPackage:Ljava/lang/String;

.field private mTopProcess:I

.field private mWarmStartTime:J

.field private mWhiteGameArray:[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mProcesses:Landroid/util/SparseArray;

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mTopProcess:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mPackages:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mJankPackcages:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBoostedPids:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mTopPackage:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mIsWarmStart:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWarmStartTime:J

    const-string v3, "com.tencent.tmgp.sgame"

    const-string v4, "com.tencent.tmgp.pubgmhd"

    const-string v5, "com.tencent.tmgp.speedmobile"

    const-string v6, "com.rekoo.pubgm"

    const-string v7, "com.nianticlabs.pokemongo"

    const-string v8, "com.supercell.clashofclans"

    const-string v9, "com.kiloo.subwaysurf"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWhiteGameArray:[Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBrain:Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    iput-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mCurrentPackage:Ljava/lang/String;

    new-instance v0, Lcom/oneplus/houston/apkserver/bridge/-$$Lambda$HoustonProcessManager$bHScbsAdNuA1gY7dSwbsdUMnMIw;

    invoke-direct {v0, p0}, Lcom/oneplus/houston/apkserver/bridge/-$$Lambda$HoustonProcessManager$bHScbsAdNuA1gY7dSwbsdUMnMIw;-><init>(Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;)V

    iput-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mHwBrainDeath:Landroid/os/IHwBinder$DeathRecipient;

    invoke-direct {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->brainInit()Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBrain:Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;-><init>()V

    return-void
.end method

.method private brainInit()Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;
    .locals 5

    const-string v0, "HoustonProcessManager"

    :try_start_0
    invoke-static {}, Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;->getService()Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBrain:Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;

    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBrain:Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBrain:Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;

    invoke-interface {v1}, Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mHwBrainDeath:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    const-string v1, "mBrain. init Done"

    invoke-static {v0, v1}, Lcom/oneplus/houston/common/client/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBrain:Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBrain:Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;

    return-object v0
.end method

.method public static getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;
    .locals 1

    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager$Instance;->access$100()Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;

    move-result-object v0

    return-object v0
.end method

.method private isBoostPackage(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWhiteGameArray:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private pause(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->isBoostPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " pause : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " main_pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mMainProcess:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HoustonProcessManager"

    invoke-static {v1, v0}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBrain:Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBrain:Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;

    iget-object v2, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mPackageName:Ljava/lang/String;

    iget v3, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mMainProcess:I

    invoke-interface {v1, v2, v3}, Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;->notifyAppPause(Ljava/lang/String;I)V

    const-string v1, "HoustonProcessManager"

    const-string v2, "mBrain.notifyAppPause done"

    invoke-static {v1, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "HoustonProcessManager"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/houston/common/client/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    :goto_2
    return-void
.end method

.method private remove(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;)V
    .locals 4

    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->isBoostPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " remove : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " main_pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mMainProcess:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HoustonProcessManager"

    invoke-static {v1, v0}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBrain:Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBrain:Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;

    iget-object v2, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mPackageName:Ljava/lang/String;

    iget v3, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mMainProcess:I

    invoke-interface {v1, v2, v3}, Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;->notifyAppDied(Ljava/lang/String;I)V

    const-string v1, "HoustonProcessManager"

    const-string v2, "mBrain.notifyAppDied done"

    invoke-static {v1, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "HoustonProcessManager"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/houston/common/client/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBoostedPids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget v2, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mMainProcess:I

    iget-object v3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBoostedPids:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBoostedPids:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    monitor-exit v0

    goto :goto_4

    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_3
    :goto_4
    const/4 v0, -0x1

    iput v0, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mMainProcess:I

    return-void
.end method

.method private start(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;)V
    .locals 4

    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->isBoostPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " start : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " main_pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mMainProcess:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HoustonProcessManager"

    invoke-static {v1, v0}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBrain:Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->brainInit()Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBrain:Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;

    :cond_0
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBrain:Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBrain:Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;

    iget-object v2, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mPackageName:Ljava/lang/String;

    iget v3, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mMainProcess:I

    invoke-interface {v1, v2, v3}, Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;->notifyAppResume(Ljava/lang/String;I)V

    const-string v1, "HoustonProcessManager"

    const-string v2, "mBrain.notifyAppResume done"

    invoke-static {v1, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "HoustonProcessManager"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/houston/common/client/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBoostedPids:Ljava/util/ArrayList;

    iget v2, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mMainProcess:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBoostedPids:Ljava/util/ArrayList;

    iget v2, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mMainProcess:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public add(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ILjava/lang/String;)V
    .locals 15

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v11, p2

    move/from16 v12, p3

    iget-object v13, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v13

    :try_start_0
    iget-object v0, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mPackages:Ljava/util/HashMap;

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    if-nez v0, :cond_0

    new-instance v3, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v3, v2, v4, v5}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;-><init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)V

    move-object v0, v3

    iget-object v3, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mPackages:Ljava/util/HashMap;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v11, :cond_1

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput v12, v0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mMainProcess:I

    :cond_1
    iget-object v3, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mProcesses:Landroid/util/SparseArray;

    new-instance v4, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v14, p4

    :try_start_1
    invoke-direct {v4, v2, v11, v12, v14}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;-><init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v3, v12, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v6, 0x0

    iget v9, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    move-object/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v10, p4

    invoke-virtual/range {v3 .. v10}, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;->add(Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object/from16 v14, p4

    :goto_0
    monitor-exit v13

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v14, p4

    :goto_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public autoAcquireOrRelease(Z)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "HoustonProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoAcquireOrRelease isAwake :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mPackages:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mCurrentPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    if-eqz p1, :cond_0

    invoke-direct {p0, v1}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->start(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->pause(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public coldStart(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;IZ)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mPackages:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    if-eqz v1, :cond_0

    iput p3, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mType:I

    iget v2, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mColdStartCounts:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mColdStartCounts:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    invoke-direct {v2, p1, p2, p3}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;-><init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)V

    move-object v1, v2

    iget v2, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mColdStartCounts:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mColdStartCounts:I

    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/4 v2, 0x2

    if-ne p3, v2, :cond_1

    const-string v2, "HoustonProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " cold GAMEMODE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v2, "HoustonProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " cold NORMALMODE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iput-object p2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mTopPackage:Ljava/lang/String;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mIsWarmStart:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "------------------Dump fps-------------------------------------"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mJankPackcages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mJankPackcages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public fillProcesses(Lcom/oneplus/houston/common/client/parcel/InitArg;)V
    .locals 7

    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mProcesses:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    new-array v2, v1, [Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    iput-object v2, p1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mProcesses:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;

    move-object v2, v4

    iget-object v4, p1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    new-instance v5, Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    invoke-direct {v5}, Lcom/oneplus/houston/common/client/parcel/InitArg$P;-><init>()V

    aput-object v5, v4, v3

    iget-object v4, p1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    aget-object v4, v4, v3

    iget-object v5, v2, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Lcom/oneplus/houston/common/client/parcel/InitArg$P;->pkg:Ljava/lang/String;

    iget-object v4, p1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    aget-object v4, v4, v3

    iget-object v5, v2, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v5, v4, Lcom/oneplus/houston/common/client/parcel/InitArg$P;->uid:I

    iget-object v4, p1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    aget-object v4, v4, v3

    const/4 v5, 0x0

    iput v5, v4, Lcom/oneplus/houston/common/client/parcel/InitArg$P;->id:I

    iget-object v4, p1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    aget-object v4, v4, v3

    iget-object v5, v2, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    iput v5, v4, Lcom/oneplus/houston/common/client/parcel/InitArg$P;->packageFlags:I

    iget-object v4, p1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    aget-object v4, v4, v3

    iget-object v5, v2, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mCreateReason:Ljava/lang/String;

    iput-object v5, v4, Lcom/oneplus/houston/common/client/parcel/InitArg$P;->reason:Ljava/lang/String;

    iget-object v4, p1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    aget-object v4, v4, v3

    iget-object v5, v2, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mName:Ljava/lang/String;

    iput-object v5, v4, Lcom/oneplus/houston/common/client/parcel/InitArg$P;->name:Ljava/lang/String;

    iget-object v4, p1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    aget-object v4, v4, v3

    iget v5, v2, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mPid:I

    iput v5, v4, Lcom/oneplus/houston/common/client/parcel/InitArg$P;->pid:I

    iget-object v4, p1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    aget-object v4, v4, v3

    iget v5, v2, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mCurAdj:I

    iput v5, v4, Lcom/oneplus/houston/common/client/parcel/InitArg$P;->adj:I

    iget-object v4, p1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    aget-object v4, v4, v3

    iget v5, v2, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mCurOomPid:I

    iput v5, v4, Lcom/oneplus/houston/common/client/parcel/InitArg$P;->oomPid:I

    iget-object v4, p1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    aget-object v4, v4, v3

    iget v5, v2, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mFlags:I

    iput v5, v4, Lcom/oneplus/houston/common/client/parcel/InitArg$P;->flags:I

    iget-object v4, p1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    aget-object v4, v4, v3

    iget v5, v2, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mPss:I

    iput v5, v4, Lcom/oneplus/houston/common/client/parcel/InitArg$P;->pss:I

    iget-object v4, p1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    aget-object v4, v4, v3

    iget v5, v2, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mRss:I

    iput v5, v4, Lcom/oneplus/houston/common/client/parcel/InitArg$P;->rss:I

    iget-object v4, p1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    aget-object v4, v4, v3

    iget-wide v5, v2, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mCreateTime:J

    iput-wide v5, v4, Lcom/oneplus/houston/common/client/parcel/InitArg$P;->createTime:J

    iget-object v4, p1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    aget-object v4, v4, v3

    iget-wide v5, v2, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mLastActiveTime:J

    iput-wide v5, v4, Lcom/oneplus/houston/common/client/parcel/InitArg$P;->lastActiveTime:J

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public initOnlineConfig(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;

    invoke-direct {v0, p1}, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mAiPicker:Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;

    return-void
.end method

.method public synthetic lambda$new$0$HoustonProcessManager(J)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->brainInit()Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public moveForeground(I)V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mTopProcess:I

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mProcesses:Landroid/util/SparseArray;

    iget v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mTopProcess:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;

    if-eqz v1, :cond_0

    sget v2, Lcom/oneplus/houston/common/client/config/Consts$ProcessFlags;->FOREGROUND:I

    invoke-virtual {v1, v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->clearFlags(I)V

    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mTopProcess:I

    const/4 v4, 0x0

    sget v5, Lcom/oneplus/houston/common/client/config/Consts$ProcessFlags;->FOREGROUND:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;->setFlags(III)V

    :cond_0
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mProcesses:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;

    if-eqz v2, :cond_1

    sget v3, Lcom/oneplus/houston/common/client/config/Consts$ProcessFlags;->FOREGROUND:I

    invoke-virtual {v2, v3}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->addFlags(I)V

    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;

    move-result-object v3

    sget v4, Lcom/oneplus/houston/common/client/config/Consts$ProcessFlags;->FOREGROUND:I

    sget v5, Lcom/oneplus/houston/common/client/config/Consts$ProcessFlags;->FOREGROUND:I

    invoke-virtual {v3, p1, v4, v5}, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;->setFlags(III)V

    :cond_1
    iput p1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mTopProcess:I

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public remove(ILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mProcesses:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mPackages:Ljava/util/HashMap;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    iget v4, v3, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mMainProcess:I

    if-ne v4, p1, :cond_0

    invoke-direct {p0, v3}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->remove(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;)V

    :cond_0
    iget-object v4, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mProcesses:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;->remove(ILjava/lang/String;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reportFpsJank(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    if-nez v0, :cond_1

    new-instance v1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;-><init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0, p2, p3, p4}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->addJankInfo(Ljava/lang/String;II)V

    return-void
.end method

.method public reportOnDrawnTime(ILjava/lang/String;)V
    .locals 9

    const-string v0, ""

    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p2, :cond_1

    :try_start_0
    const-string v2, "\\/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, v2, v3

    move-object v0, v4

    iget-object v4, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mTopPackage:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mIsWarmStart:Z

    if-eqz v4, :cond_1

    iput-boolean v3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mIsWarmStart:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWarmStartTime:J

    sub-long/2addr v4, v6

    const-string v6, "HoustonProcessManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reportOnDrawnTime type:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " spend:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " component:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    if-eqz v6, :cond_0

    invoke-virtual {v6, p2, v3, v4, v5}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->addLaunchInfo(Ljava/lang/String;ZJ)V

    goto :goto_0

    :cond_0
    const-string v3, "HoustonProcessManager"

    const-string v7, "error, warm start hp is null"

    invoke-static {v3, v7}, Lcom/oneplus/houston/common/client/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public reportStartTime(IJJLjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, ""

    if-eqz p6, :cond_1

    const-string v2, "\\/"

    invoke-virtual {p6, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    move-object v1, v3

    iget-object v3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mTopPackage:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mTopPackage:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "HoustonProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reportStartTime type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", thisTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " ,totalTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", component:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v3, p6, v4, p4, p5}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->addLaunchInfo(Ljava/lang/String;ZJ)V

    goto :goto_0

    :cond_0
    const-string v4, "HoustonProcessManager"

    const-string v5, "error, cold start hp is null"

    invoke-static {v4, v5}, Lcom/oneplus/houston/common/client/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setFront(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "HoustonProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "frontPackageChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mCurrentPackage:Ljava/lang/String;

    iput-object p2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mCurrentPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    invoke-direct {p0, v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->start(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;)V

    const-string v3, "HoustonProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lpacakge:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", current:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mCurrentPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mCurrentPackage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    invoke-direct {p0, v3}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->pause(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateConfig([Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWhiteGameArray:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWhiteGameArray:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    const-string v2, "HoustonProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " package[i"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWhiteGameArray:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateScreenState(Z)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;->updateScreenState(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public warmStart(ILjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    if-nez v1, :cond_0

    const-string v2, "HoustonProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "warm start error! pkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/houston/common/client/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget v2, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mWarmStartCounts:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mWarmStartCounts:I

    iget v2, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mType:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    const-string v2, "HoustonProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " warm GAMEMODE : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "HoustonProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " warm NORMALMODE : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iput-object p2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mTopPackage:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mIsWarmStart:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWarmStartTime:J

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
