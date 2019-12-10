.class Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager$PollingThread;
.super Ljava/lang/Thread;
.source "OpSoftApConnectedDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PollingThread"
.end annotation


# instance fields
.field private mDevice:Landroid/net/wifi/WifiDevice;

.field private mInterval:I

.field private mMaxTimes:I

.field private final mOpSoftApConnectedDeviceManager:Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;


# direct methods
.method public constructor <init>(Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;Landroid/net/wifi/WifiDevice;II)V
    .locals 1

    const-string v0, "SoftAp"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager$PollingThread;->mOpSoftApConnectedDeviceManager:Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;

    iput p3, p0, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager$PollingThread;->mInterval:I

    iput p4, p0, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager$PollingThread;->mMaxTimes:I

    iput-object p2, p0, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager$PollingThread;->mDevice:Landroid/net/wifi/WifiDevice;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    :try_start_0
    iget v2, p0, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager$PollingThread;->mMaxTimes:I

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager$PollingThread;->mOpSoftApConnectedDeviceManager:Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;

    iget-object v3, p0, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager$PollingThread;->mDevice:Landroid/net/wifi/WifiDevice;

    invoke-static {v2, v3}, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->access$100(Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;Landroid/net/wifi/WifiDevice;)Z

    move-result v2

    move v0, v2

    const-string v2, "OpSoftApConnectedDeviceManager"

    const-string v3, "Thread Running"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const-string v2, "OpSoftApConnectedDeviceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Successfully poll device info for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager$PollingThread;->mDevice:Landroid/net/wifi/WifiDevice;

    iget-object v4, v4, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    iget v2, p0, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager$PollingThread;->mMaxTimes:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager$PollingThread;->mMaxTimes:I

    iget v2, p0, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager$PollingThread;->mInterval:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v2

    const/4 v0, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Polling "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager$PollingThread;->mDevice:Landroid/net/wifi/WifiDevice;

    iget-object v4, v4, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OpSoftApConnectedDeviceManager"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-nez v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Polling timeout, suppose STA uses static ip "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager$PollingThread;->mDevice:Landroid/net/wifi/WifiDevice;

    iget-object v3, v3, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpSoftApConnectedDeviceManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager$PollingThread;->mOpSoftApConnectedDeviceManager:Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;

    invoke-static {v2}, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->access$200(Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager$PollingThread;->mDevice:Landroid/net/wifi/WifiDevice;

    iget-object v3, v3, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiDevice;

    if-eqz v2, :cond_3

    iget v3, v2, Landroid/net/wifi/WifiDevice;->deviceState:I

    if-ne v3, v1, :cond_3

    invoke-static {}, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->access$300()Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    invoke-static {}, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->access$300()Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager$PollingThread;->mDevice:Landroid/net/wifi/WifiDevice;

    iget-object v4, v4, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager$PollingThread;->mDevice:Landroid/net/wifi/WifiDevice;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager$PollingThread;->mOpSoftApConnectedDeviceManager:Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;

    invoke-static {v1}, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->access$400(Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, p0, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager$PollingThread;->mDevice:Landroid/net/wifi/WifiDevice;

    iget-object v3, v3, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    iget-object v4, p0, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager$PollingThread;->mDevice:Landroid/net/wifi/WifiDevice;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager$PollingThread;->mOpSoftApConnectedDeviceManager:Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;

    invoke-static {v1}, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->access$500(Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;)V

    goto :goto_3

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager$PollingThread;->mDevice:Landroid/net/wifi/WifiDevice;

    iget-object v3, v3, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " already disconnected, ignoring"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OpSoftApConnectedDeviceManager"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method
