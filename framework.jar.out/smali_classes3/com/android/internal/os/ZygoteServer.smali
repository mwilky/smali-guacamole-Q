.class Lcom/android/internal/os/ZygoteServer;
.super Ljava/lang/Object;
.source "ZygoteServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;
    }
.end annotation


# static fields
.field private static final INVALID_TIMESTAMP:I = -0x1

.field public static final TAG:Ljava/lang/String; = "ZygoteServer"

.field private static final USAP_POOL_SIZE_MAX_DEFAULT:Ljava/lang/String; = "10"

.field private static final USAP_POOL_SIZE_MAX_LIMIT:I = 0x64

.field private static final USAP_POOL_SIZE_MIN_DEFAULT:Ljava/lang/String; = "1"

.field private static final USAP_POOL_SIZE_MIN_LIMIT:I = 0x1

.field private static final USAP_REFILL_DELAY_MS:I = 0xbb8


# instance fields
.field private mCloseSocketFd:Z

.field private mIsFirstPropertyCheck:Z

.field private mIsForkChild:Z

.field private mLastPropCheckTimestamp:J

.field private mUsapPoolEnabled:Z

.field private mUsapPoolEventFD:Ljava/io/FileDescriptor;

.field private mUsapPoolRefillThreshold:I

.field private mUsapPoolSizeMax:I

.field private mUsapPoolSizeMin:I

.field private mUsapPoolSocket:Landroid/net/LocalServerSocket;

.field private final mUsapPoolSupported:Z

.field private mZygoteSocket:Landroid/net/LocalServerSocket;


# direct methods
.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEnabled:Z

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMin:I

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillThreshold:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/os/ZygoteServer;->mIsFirstPropertyCheck:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/ZygoteServer;->mLastPropCheckTimestamp:J

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEventFD:Ljava/io/FileDescriptor;

    iput-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    iput-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSocket:Landroid/net/LocalServerSocket;

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSupported:Z

    return-void
.end method

.method constructor <init>(Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEnabled:Z

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMin:I

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillThreshold:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mIsFirstPropertyCheck:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/ZygoteServer;->mLastPropCheckTimestamp:J

    invoke-static {}, Lcom/android/internal/os/Zygote;->getUsapPoolEventFD()Ljava/io/FileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEventFD:Ljava/io/FileDescriptor;

    if-eqz p1, :cond_0

    const-string/jumbo v1, "zygote"

    invoke-static {v1}, Lcom/android/internal/os/Zygote;->createManagedSocketFromInitSocket(Ljava/lang/String;)Landroid/net/LocalServerSocket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    nop

    const-string/jumbo v1, "usap_pool_primary"

    invoke-static {v1}, Lcom/android/internal/os/Zygote;->createManagedSocketFromInitSocket(Ljava/lang/String;)Landroid/net/LocalServerSocket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSocket:Landroid/net/LocalServerSocket;

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "zygote_secondary"

    invoke-static {v1}, Lcom/android/internal/os/Zygote;->createManagedSocketFromInitSocket(Ljava/lang/String;)Landroid/net/LocalServerSocket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    nop

    const-string/jumbo v1, "usap_pool_secondary"

    invoke-static {v1}, Lcom/android/internal/os/Zygote;->createManagedSocketFromInitSocket(Ljava/lang/String;)Landroid/net/LocalServerSocket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSocket:Landroid/net/LocalServerSocket;

    :goto_0
    invoke-direct {p0}, Lcom/android/internal/os/ZygoteServer;->fetchUsapPoolPolicyProps()V

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSupported:Z

    return-void
.end method

.method private acceptCommandPeer(Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/os/ZygoteServer;->createNewConnection(Landroid/net/LocalSocket;Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "IOException during accept()"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private fetchUsapPoolPolicyProps()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSupported:Z

    if-eqz v0, :cond_3

    const-string v0, "10"

    const-string/jumbo v1, "usap_pool_size_max"

    invoke-static {v1, v0}, Lcom/android/internal/os/Zygote;->getConfigurationProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x64

    invoke-static {v2, v3}, Ljava/lang/Integer;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    :cond_0
    const-string v2, "1"

    const-string/jumbo v3, "usap_pool_size_min"

    invoke-static {v3, v2}, Lcom/android/internal/os/Zygote;->getConfigurationProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    nop

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Ljava/lang/Integer;->max(II)I

    move-result v4

    iput v4, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMin:I

    :cond_1
    iget v4, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    div-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "usap_refill_threshold"

    invoke-static {v5, v4}, Lcom/android/internal/os/Zygote;->getConfigurationProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    nop

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget v6, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    invoke-static {v5, v6}, Ljava/lang/Integer;->min(II)I

    move-result v5

    iput v5, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillThreshold:I

    :cond_2
    iget v5, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMin:I

    iget v6, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    if-lt v5, v6, :cond_3

    const-string v5, "ZygoteServer"

    const-string v6, "The max size of the USAP pool must be greater than the minimum size.  Restoring default values."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMin:I

    iget v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillThreshold:I

    :cond_3
    return-void
.end method

.method private fetchUsapPoolPolicyPropsIfUnfetched()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mIsFirstPropertyCheck:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mIsFirstPropertyCheck:Z

    invoke-direct {p0}, Lcom/android/internal/os/ZygoteServer;->fetchUsapPoolPolicyProps()V

    :cond_0
    return-void
.end method

.method private fetchUsapPoolPolicyPropsWithMinInterval()V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/android/internal/os/ZygoteServer;->mIsFirstPropertyCheck:Z

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/os/ZygoteServer;->mLastPropCheckTimestamp:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/os/ZygoteServer;->mIsFirstPropertyCheck:Z

    iput-wide v0, p0, Lcom/android/internal/os/ZygoteServer;->mLastPropCheckTimestamp:J

    invoke-direct {p0}, Lcom/android/internal/os/ZygoteServer;->fetchUsapPoolPolicyProps()V

    :cond_1
    return-void
.end method

.method static synthetic lambda$runSelectLoop$0(Ljava/io/FileDescriptor;)I
    .locals 1

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    return v0
.end method


# virtual methods
.method closeServerSocket()V
    .locals 3

    const-string v0, "ZygoteServer"

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v1}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->close()V

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/os/ZygoteServer;->mCloseSocketFd:Z

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Zygote:  error closing descriptor"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "Zygote:  error closing sockets"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    nop

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    return-void
.end method

.method protected createNewConnection(Landroid/net/LocalSocket;Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/internal/os/ZygoteConnection;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/os/ZygoteConnection;-><init>(Landroid/net/LocalSocket;Ljava/lang/String;)V

    return-object v0
.end method

.method fillUsapPool([IZ)Ljava/lang/Runnable;
    .locals 7

    const-wide/16 v0, 0x40

    const-string v2, "Zygote:FillUsapPool"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/os/ZygoteServer;->fetchUsapPoolPolicyPropsIfUnfetched()V

    invoke-static {}, Lcom/android/internal/os/Zygote;->getUsapPoolCount()I

    move-result v2

    const-string/jumbo v3, "zygote"

    if-eqz p2, :cond_0

    iget v4, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMin:I

    sub-int/2addr v4, v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Priority USAP Pool refill. New USAPs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    sub-int/2addr v4, v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delayed USAP Pool refill. New USAPs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {}, Ldalvik/system/ZygoteHooks;->preFork()V

    :goto_1
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_2

    iget-object v3, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSocket:Landroid/net/LocalServerSocket;

    invoke-static {v3, p1, p2}, Lcom/android/internal/os/Zygote;->forkUsap(Landroid/net/LocalServerSocket;[IZ)Ljava/lang/Runnable;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    goto :goto_1

    :cond_2
    invoke-static {}, Ldalvik/system/ZygoteHooks;->postForkCommon()V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    const/4 v0, 0x0

    return-object v0
.end method

.method getZygoteSocketFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public isUsapPoolEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEnabled:Z

    return v0
.end method

.method registerServerSocketAtAbstractName(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/net/LocalServerSocket;

    invoke-direct {v0, p1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mCloseSocketFd:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error binding to abstract socket \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method runSelectLoop(Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 23

    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    iget-object v0, v1, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v4, -0x1

    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/ZygoteServer;->fetchUsapPoolPolicyPropsWithMinInterval()V

    const/4 v0, 0x0

    const/4 v6, 0x0

    iget-boolean v7, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEnabled:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/android/internal/os/Zygote;->getUsapPipeFDs()[I

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v7, v8

    array-length v9, v0

    add-int/2addr v7, v9

    new-array v6, v7, [Landroid/system/StructPollfd;

    move-object v7, v0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v6, v7, [Landroid/system/StructPollfd;

    move-object v7, v0

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/io/FileDescriptor;

    new-instance v11, Landroid/system/StructPollfd;

    invoke-direct {v11}, Landroid/system/StructPollfd;-><init>()V

    aput-object v11, v6, v0

    aget-object v11, v6, v0

    iput-object v10, v11, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    aget-object v11, v6, v0

    sget v12, Landroid/system/OsConstants;->POLLIN:I

    int-to-short v12, v12

    iput-short v12, v11, Landroid/system/StructPollfd;->events:S

    nop

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    move v9, v0

    iget-boolean v10, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEnabled:Z

    if-eqz v10, :cond_2

    new-instance v10, Landroid/system/StructPollfd;

    invoke-direct {v10}, Landroid/system/StructPollfd;-><init>()V

    aput-object v10, v6, v0

    aget-object v10, v6, v0

    iget-object v12, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEventFD:Ljava/io/FileDescriptor;

    iput-object v12, v10, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    aget-object v10, v6, v0

    sget v12, Landroid/system/OsConstants;->POLLIN:I

    int-to-short v12, v12

    iput-short v12, v10, Landroid/system/StructPollfd;->events:S

    add-int/lit8 v0, v0, 0x1

    array-length v10, v7

    move v12, v0

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v10, :cond_3

    aget v13, v7, v0

    new-instance v14, Ljava/io/FileDescriptor;

    invoke-direct {v14}, Ljava/io/FileDescriptor;-><init>()V

    invoke-virtual {v14, v13}, Ljava/io/FileDescriptor;->setInt$(I)V

    new-instance v15, Landroid/system/StructPollfd;

    invoke-direct {v15}, Landroid/system/StructPollfd;-><init>()V

    aput-object v15, v6, v12

    aget-object v15, v6, v12

    iput-object v14, v15, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    aget-object v15, v6, v12

    sget v8, Landroid/system/OsConstants;->POLLIN:I

    int-to-short v8, v8

    iput-short v8, v15, Landroid/system/StructPollfd;->events:S

    nop

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v0, v0, 0x1

    const/4 v8, 0x1

    goto :goto_3

    :cond_2
    move v12, v0

    :cond_3
    const-wide/16 v13, -0x1

    cmp-long v0, v4, v13

    if-nez v0, :cond_4

    const/4 v0, -0x1

    move v8, v0

    goto :goto_4

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v4

    long-to-int v0, v13

    const/16 v8, 0xbb8

    if-lt v0, v8, :cond_5

    const/4 v8, -0x1

    goto :goto_4

    :cond_5
    rsub-int v0, v0, 0xbb8

    move v8, v0

    :goto_4
    :try_start_0
    invoke-static {v6, v8}, Landroid/system/Os;->poll([Landroid/system/StructPollfd;I)I

    move-result v0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_4

    move v10, v0

    nop

    sget-object v13, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->NONE:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    if-nez v10, :cond_6

    const-wide/16 v4, -0x1

    sget-object v13, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->DELAYED:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    move-object/from16 v16, v3

    move-wide/from16 v17, v4

    const/4 v3, 0x0

    goto/16 :goto_e

    :cond_6
    const/4 v0, 0x0

    move v14, v0

    :goto_5
    add-int/lit8 v12, v12, -0x1

    if-ltz v12, :cond_12

    aget-object v0, v6, v12

    iget-short v0, v0, Landroid/system/StructPollfd;->revents:S

    sget v15, Landroid/system/OsConstants;->POLLIN:I

    and-int/2addr v0, v15

    if-nez v0, :cond_7

    move-object/from16 v16, v3

    move-wide/from16 v17, v4

    const/4 v3, 0x0

    goto/16 :goto_d

    :cond_7
    if-nez v12, :cond_8

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/os/ZygoteServer;->acceptCommandPeer(Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/android/internal/os/ZygoteConnection;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v3

    move-wide/from16 v17, v4

    const/4 v3, 0x0

    goto/16 :goto_d

    :cond_8
    const-string v15, "ZygoteServer"

    if-ge v12, v9, :cond_e

    :try_start_1
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ZygoteConnection;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/ZygoteConnection;->processOneCommand(Lcom/android/internal/os/ZygoteServer;)Ljava/lang/Runnable;

    move-result-object v16

    iget-boolean v11, v1, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v11, :cond_a

    if-eqz v16, :cond_9

    nop

    const/4 v11, 0x0

    iput-boolean v11, v1, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    return-object v16

    :cond_9
    :try_start_2
    new-instance v11, Ljava/lang/IllegalStateException;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide/from16 v17, v4

    :try_start_3
    const-string v4, "command == null"

    invoke-direct {v11, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_a
    move-wide/from16 v17, v4

    if-nez v16, :cond_c

    invoke-virtual {v0}, Lcom/android/internal/os/ZygoteConnection;->isClosedByPeer()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v0}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_b
    :goto_6
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_7

    :cond_c
    :try_start_4
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "command != null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_0
    move-exception v0

    move-wide/from16 v17, v4

    goto :goto_9

    :catch_1
    move-exception v0

    move-wide/from16 v17, v4

    :goto_7
    :try_start_5
    iget-boolean v4, v1, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    if-nez v4, :cond_d

    const-string v4, "Exception executing zygote command: "

    invoke-static {v15, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/ZygoteConnection;

    invoke-virtual {v4}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    nop

    goto :goto_6

    :goto_8
    move-object/from16 v16, v3

    const/4 v3, 0x0

    goto/16 :goto_d

    :cond_d
    const-string v4, "Caught post-fork exception in child process."

    invoke-static {v15, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    :goto_9
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    throw v0

    :cond_e
    move-wide/from16 v17, v4

    const/16 v0, 0x8

    :try_start_6
    new-array v4, v0, [B

    aget-object v5, v6, v12

    iget-object v5, v5, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    array-length v11, v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-object/from16 v16, v3

    const/4 v3, 0x0

    :try_start_7
    invoke-static {v5, v4, v3, v11}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v5

    if-ne v5, v0, :cond_10

    new-instance v0, Ljava/io/DataInputStream;

    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-direct {v11, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v11}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v19
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    move-wide/from16 v21, v19

    nop

    nop

    if-le v12, v9, :cond_f

    move-wide/from16 v4, v21

    long-to-int v0, v4

    invoke-static {v0}, Lcom/android/internal/os/Zygote;->removeUsapTableEntry(I)Z

    goto :goto_a

    :cond_f
    move-wide/from16 v4, v21

    :goto_a
    const/4 v14, 0x1

    move-object/from16 v3, v16

    move-wide/from16 v4, v17

    goto/16 :goto_5

    :cond_10
    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Incomplete read from USAP management FD of size "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_d

    :catch_2
    move-exception v0

    goto :goto_b

    :catch_3
    move-exception v0

    move-object/from16 v16, v3

    const/4 v3, 0x0

    :goto_b
    if-ne v12, v9, :cond_11

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read from USAP pool event FD: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read from USAP reporting pipe: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    nop

    :goto_d
    move-object/from16 v3, v16

    move-wide/from16 v4, v17

    goto/16 :goto_5

    :cond_12
    move-object/from16 v16, v3

    move-wide/from16 v17, v4

    const/4 v3, 0x0

    if-eqz v14, :cond_14

    invoke-static {}, Lcom/android/internal/os/Zygote;->getUsapPoolCount()I

    move-result v0

    iget v4, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMin:I

    if-ge v0, v4, :cond_13

    sget-object v13, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->IMMEDIATE:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    goto :goto_e

    :cond_13
    iget v4, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    sub-int/2addr v4, v0

    iget v5, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillThreshold:I

    if-lt v4, v5, :cond_14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-wide/from16 v17, v4

    :cond_14
    :goto_e
    sget-object v0, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->NONE:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    if-eq v13, v0, :cond_17

    nop

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v5, Lcom/android/internal/os/-$$Lambda$ZygoteServer$NJVbduCrCzDq0RHpPga7lyCk4eE;->INSTANCE:Lcom/android/internal/os/-$$Lambda$ZygoteServer$NJVbduCrCzDq0RHpPga7lyCk4eE;

    invoke-interface {v0, v5}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    sget-object v5, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->IMMEDIATE:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    if-ne v13, v5, :cond_15

    move v3, v4

    :cond_15
    nop

    invoke-virtual {v1, v0, v3}, Lcom/android/internal/os/ZygoteServer;->fillUsapPool([IZ)Ljava/lang/Runnable;

    move-result-object v4

    if-eqz v4, :cond_16

    return-object v4

    :cond_16
    if-eqz v3, :cond_17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-wide v4, v14

    goto :goto_f

    :cond_17
    move-wide/from16 v4, v17

    :goto_f
    move-object/from16 v3, v16

    goto/16 :goto_0

    :catch_4
    move-exception v0

    move-object/from16 v16, v3

    move-wide/from16 v17, v4

    move-object v3, v0

    move-object v0, v3

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "poll failed"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method setForkChild()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    return-void
.end method

.method setUsapPoolStatus(ZLandroid/net/LocalSocket;)Ljava/lang/Runnable;
    .locals 4

    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSupported:Z

    const-string v1, "ZygoteServer"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "Attempting to enable a USAP pool for a Zygote that doesn\'t support it."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEnabled:Z

    if-ne v0, p1, :cond_1

    return-object v2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USAP Pool status change: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    const-string v3, "ENABLED"

    goto :goto_0

    :cond_2
    const-string v3, "DISABLED"

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEnabled:Z

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    new-array v0, v0, [I

    invoke-virtual {p2}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/os/ZygoteServer;->fillUsapPool([IZ)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-static {}, Lcom/android/internal/os/Zygote;->emptyUsapPool()V

    return-object v2
.end method
