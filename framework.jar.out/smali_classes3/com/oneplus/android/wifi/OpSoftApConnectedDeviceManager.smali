.class public Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;
.super Ljava/lang/Object;
.source "OpSoftApConnectedDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager$PollingThread;
    }
.end annotation


# static fields
.field private static final ACTION_CLIENT_NAME:Ljava/lang/String; = "action_client_name"

.field private static final BLACKED_LIST:I = 0x0

.field private static final DBG:Z = true

.field private static final POLLING_INTERVAL:I = 0x3e8

.field private static final POLLING_MAX_TIMES:I = 0xa

.field private static final TAG:Ljava/lang/String; = "OpSoftApConnectedDeviceManager"

.field private static final UNBLACKED_LIST:I = 0x1

.field private static mClientNames:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context; = null

.field private static mSoftApDeviceMap:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiDevice;",
            ">;"
        }
    .end annotation
.end field

.field private static final tagAddr:Ljava/lang/String; = "addr"

.field private static final tagName:Ljava/lang/String; = "name"


# instance fields
.field private mConnectedDeviceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mL2ConnectedDeviceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mOpSoftApConnectedDeviceManagerCallback:Lcom/oneplus/android/wifi/IOpSoftApConnectedDeviceManagerCallback;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->mSoftApDeviceMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->mClientNames:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/android/wifi/IOpSoftApConnectedDeviceManagerCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->mL2ConnectedDeviceMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->mConnectedDeviceMap:Ljava/util/HashMap;

    sput-object p1, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->mOpSoftApConnectedDeviceManagerCallback:Lcom/oneplus/android/wifi/IOpSoftApConnectedDeviceManagerCallback;

    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->mClientNames:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;Landroid/net/wifi/WifiDevice;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->getDeviceName(Landroid/net/wifi/WifiDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->mL2ConnectedDeviceMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->mSoftApDeviceMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->mConnectedDeviceMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->sendConnectDevicesStateChangedBroadcast()V

    return-void
.end method

.method private getDeviceName(Landroid/net/wifi/WifiDevice;)Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->mClientNames:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    sget-object v1, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->mClientNames:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p1, Landroid/net/wifi/WifiDevice;->deviceName:Ljava/lang/String;

    :cond_0
    return v0
.end method

.method private interfaceMessageRecevied(Ljava/lang/String;Z)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interfaceMessageRecevied: message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpSoftApConnectedDeviceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/net/wifi/WifiDevice;

    invoke-direct {v0, p1, p2}, Landroid/net/wifi/WifiDevice;-><init>(Ljava/lang/String;Z)V

    iget v1, v0, Landroid/net/wifi/WifiDevice;->deviceState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->mL2ConnectedDeviceMap:Ljava/util/HashMap;

    iget-object v2, v0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "OpSoftApConnectedDeviceManager"

    const-string v2, "device: connected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/wifi/WifiDevice;->connectedTime:J

    invoke-direct {p0, v0}, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->getDeviceName(Landroid/net/wifi/WifiDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "OpSoftApConnectedDeviceManager"

    const-string v2, "getDeviceName"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->mSoftApDeviceMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->mSoftApDeviceMap:Ljava/util/HashMap;

    iget-object v3, v0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->mConnectedDeviceMap:Ljava/util/HashMap;

    iget-object v2, v0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->sendConnectDevicesStateChangedBroadcast()V

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting poll device info for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpSoftApConnectedDeviceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager$PollingThread;

    const/16 v2, 0x3e8

    const/16 v3, 0xa

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager$PollingThread;-><init>(Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;Landroid/net/wifi/WifiDevice;II)V

    invoke-virtual {v1}, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager$PollingThread;->start()V

    goto :goto_0

    :cond_1
    iget v1, v0, Landroid/net/wifi/WifiDevice;->deviceState:I

    if-nez v1, :cond_3

    const-string v1, "OpSoftApConnectedDeviceManager"

    const-string v2, "device: disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->mL2ConnectedDeviceMap:Ljava/util/HashMap;

    iget-object v2, v0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiDevice;

    iget-object v2, p0, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->mConnectedDeviceMap:Ljava/util/HashMap;

    iget-object v3, v0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->mClientNames:Ljava/util/HashMap;

    iget-object v3, v0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->mSoftApDeviceMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_2
    sget-object v3, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->mSoftApDeviceMap:Ljava/util/HashMap;

    iget-object v4, v0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->mSoftApDeviceMap:Ljava/util/HashMap;

    iget-object v4, v0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiDevice;

    if-eqz v3, :cond_2

    iget v4, v3, Landroid/net/wifi/WifiDevice;->deviceState:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    sget-object v4, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->mSoftApDeviceMap:Ljava/util/HashMap;

    iget-object v5, v0, Landroid/net/wifi/WifiDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->sendConnectDevicesStateChangedBroadcast()V

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    :cond_3
    :goto_0
    return-void
.end method

.method private sendConnectDevicesStateChangedBroadcast()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->mOpSoftApConnectedDeviceManagerCallback:Lcom/oneplus/android/wifi/IOpSoftApConnectedDeviceManagerCallback;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->getTetherSoftApSta(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/oneplus/android/wifi/IOpSoftApConnectedDeviceManagerCallback;->sendNumAssociatedStationsChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendConnectDevicesStateChangedBroadcast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpSoftApConnectedDeviceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized blackListWifiDevice(Ljava/lang/String;Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->mSoftApDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->mSoftApDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x2

    if-eqz p2, :cond_1

    :try_start_1
    iget v2, v0, Landroid/net/wifi/WifiDevice;->deviceState:I

    if-eq v2, v1, :cond_2

    iput v1, v0, Landroid/net/wifi/WifiDevice;->deviceState:I

    goto :goto_0

    :cond_1
    iget v2, v0, Landroid/net/wifi/WifiDevice;->deviceState:I

    if-ne v2, v1, :cond_2

    sget-object v1, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->mSoftApDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public clearConnectedDevice()V
    .locals 2

    sget-object v0, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->mSoftApDeviceMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->mSoftApDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->mConnectedDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->mL2ConnectedDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->mClientNames:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public connectionStatusChange(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "devices status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpSoftApConnectedDeviceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->interfaceMessageRecevied(Ljava/lang/String;Z)V

    return-void
.end method

.method public declared-synchronized getTetherSoftApSta(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiDevice;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->mSoftApDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->mSoftApDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiDevice;

    const-string v4, "OpSoftApConnectedDeviceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTetherSoftApSta: addr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/net/wifi/WifiDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " state ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/net/wifi/WifiDevice;->deviceState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    if-eqz p1, :cond_1

    const/4 v5, 0x1

    if-eq p1, v5, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget v5, v3, Landroid/net/wifi/WifiDevice;->deviceState:I

    if-eq v5, v4, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget v5, v3, Landroid/net/wifi/WifiDevice;->deviceState:I

    if-ne v5, v4, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    goto :goto_0

    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public registerClientReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "action_client_name"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager$1;

    invoke-direct {v1, p0}, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager$1;-><init>(Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;)V

    iput-object v1, p0, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v1, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unRegisterClientReceiver()V
    .locals 2

    sget-object v0, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/android/wifi/OpSoftApConnectedDeviceManager;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method
