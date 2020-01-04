.class public final Landroid/hardware/camera2/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;,
        Landroid/hardware/camera2/CameraManager$TorchCallback;,
        Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
    }
.end annotation


# static fields
.field private static final API_VERSION_1:I = 0x1

.field private static final API_VERSION_2:I = 0x2

.field private static final CAMERA_TYPE_ALL:I = 0x1

.field private static final CAMERA_TYPE_BACKWARD_COMPATIBLE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CameraManager"

.field private static final USE_CALLING_UID:I = -0x1


# instance fields
.field private final DEBUG:Z

.field private final mContext:Landroid/content/Context;

.field private mDeviceIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/CameraManager;->DEBUG:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getDisplaySize()Landroid/util/Size;
    .locals 6

    new-instance v0, Landroid/util/Size;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v4

    if-le v4, v3, :cond_0

    move v4, v3

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v5

    move v3, v5

    :cond_0
    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v3, v4}, Landroid/util/Size;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDisplaySize Failed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CameraManager"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method public static isHiddenPhysicalCamera(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-interface {v1, p0}, Landroid/hardware/ICameraService;->isHiddenPhysicalCamera(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method private openCameraDeviceUserAsync(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;I)Landroid/hardware/camera2/CameraDevice;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p0 .. p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v9

    const/4 v10, 0x0

    iget-object v11, v1, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    const/4 v12, 0x0

    :try_start_0
    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v2, v1, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v7, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move-object v2, v0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v9

    invoke-direct/range {v2 .. v7}, Landroid/hardware/camera2/impl/CameraDeviceImpl;-><init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCharacteristics;I)V

    move-object v2, v0

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v0

    const/4 v4, 0x4

    :try_start_1
    invoke-direct/range {p0 .. p1}, Landroid/hardware/camera2/CameraManager;->supportsCamera2ApiLocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v5, v1, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v6, p4

    :try_start_2
    invoke-interface {v0, v3, v8, v5, v6}, Landroid/hardware/ICameraService;->connectDevice(Landroid/hardware/camera2/ICameraDeviceCallbacks;Ljava/lang/String;Ljava/lang/String;I)Landroid/hardware/camera2/ICameraDeviceUser;

    move-result-object v4

    move-object v0, v4

    move-object v12, v0

    goto :goto_0

    :cond_0
    move/from16 v6, p4

    new-instance v5, Landroid/os/ServiceSpecificException;

    const-string v7, "Camera service is currently unavailable"

    invoke-direct {v5, v4, v7}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw v5
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    move/from16 v6, p4

    :try_start_3
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    nop

    :try_start_4
    const-string v5, "CameraManager"

    const-string v7, "Using legacy camera HAL."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager;->getDisplaySize()Landroid/util/Size;

    move-result-object v5

    invoke-static {v3, v0, v5}, Landroid/hardware/camera2/legacy/CameraDeviceUserShim;->connectBinderShim(Landroid/hardware/camera2/ICameraDeviceCallbacks;ILandroid/util/Size;)Landroid/hardware/camera2/legacy/CameraDeviceUserShim;

    move-result-object v4

    move-object v12, v4

    :cond_2
    :goto_0
    goto/16 :goto_4

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Expected cameraId to be numeric, but it was: "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_4
    .catch Landroid/os/ServiceSpecificException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_3
    move-exception v0

    move/from16 v6, p4

    :goto_1
    :try_start_5
    new-instance v5, Landroid/os/ServiceSpecificException;

    const-string v7, "Camera service is currently unavailable"

    invoke-direct {v5, v4, v7}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    move-object v4, v5

    invoke-virtual {v2, v4}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteFailure(Landroid/os/ServiceSpecificException;)V

    invoke-static {v4}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_4
    move-exception v0

    move/from16 v6, p4

    :goto_2
    iget v5, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v7, 0x9

    if-eq v5, v7, :cond_6

    iget v5, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v7, 0x6

    const/4 v13, 0x7

    if-eq v5, v13, :cond_4

    iget v5, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v14, 0x8

    if-eq v5, v14, :cond_4

    iget v5, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    if-eq v5, v7, :cond_4

    iget v5, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    if-eq v5, v4, :cond_4

    iget v5, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    const/16 v14, 0xa

    if-ne v5, v14, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    :goto_3
    invoke-virtual {v2, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteFailure(Landroid/os/ServiceSpecificException;)V

    iget v5, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    if-eq v5, v7, :cond_5

    iget v5, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    if-eq v5, v4, :cond_5

    iget v4, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    if-ne v4, v13, :cond_2

    :cond_5
    invoke-static {v0}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    goto :goto_0

    :goto_4
    invoke-virtual {v2, v12}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRemoteDevice(Landroid/hardware/camera2/ICameraDeviceUser;)V

    move-object v10, v2

    monitor-exit v11

    return-object v10

    :cond_6
    new-instance v4, Ljava/lang/AssertionError;

    const-string v5, "Should\'ve gone down the shim path"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    :catchall_0
    move-exception v0

    move/from16 v6, p4

    :goto_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5
.end method

.method private supportsCamera2ApiLocked(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/CameraManager;->supportsCameraApiLocked(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private supportsCameraApiLocked(Ljava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-interface {v1, p1, p2}, Landroid/hardware/ICameraService;->supportsCameraApi(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method public static throwAsPublicException(Ljava/lang/Throwable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    instance-of v0, p0, Landroid/os/ServiceSpecificException;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/os/ServiceSpecificException;

    const/4 v1, 0x3

    iget v2, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    const/4 v1, 0x3

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x3e8

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x5

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x4

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_5
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :pswitch_7
    new-instance v2, Ljava/lang/SecurityException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :goto_0
    new-instance v2, Landroid/hardware/camera2/CameraAccessException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3, v0}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    instance-of v0, p0, Landroid/os/DeadObjectException;

    if-nez v0, :cond_3

    instance-of v0, p0, Landroid/os/RemoteException;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-nez v0, :cond_1

    return-void

    :cond_1
    move-object v0, p0

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "An unknown RemoteException was thrown which should never happen."

    invoke-direct {v0, v1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v1, 0x2

    const-string v2, "Camera service has died unexpectedly"

    invoke-direct {v0, v1, v2, p0}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    move-object/from16 v1, p1

    const/4 v2, 0x0

    sget-boolean v3, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v3, :cond_16

    move-object/from16 v3, p0

    iget-object v4, v3, Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x2

    if-eqz v5, :cond_15

    :try_start_1
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/CameraManager;->getDisplaySize()Landroid/util/Size;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Landroid/hardware/camera2/CameraManager;->isHiddenPhysicalCamera(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-direct/range {p0 .. p1}, Landroid/hardware/camera2/CameraManager;->supportsCamera2ApiLocked(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/hardware/ICameraService;->getLegacyParameters(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v8}, Landroid/hardware/ICameraService;->getCameraInfo(I)Landroid/hardware/CameraInfo;

    move-result-object v10

    invoke-static {v9, v10, v8, v7}, Landroid/hardware/camera2/legacy/LegacyMetadataMapper;->createCharacteristics(Ljava/lang/String;Landroid/hardware/CameraInfo;ILandroid/util/Size;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v6

    move-object v2, v6

    goto/16 :goto_6

    :cond_0
    invoke-interface {v5, v1}, Landroid/hardware/ICameraService;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v8
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setCameraId(I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v9, v0

    :try_start_3
    const-string v10, "CameraManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to parse camera Id "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " to integer"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {v8, v7}, Landroid/hardware/camera2/impl/CameraMetadataNative;->setDisplaySize(Landroid/util/Size;)V

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    if-eqz v9, :cond_c

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_c

    const-string/jumbo v11, "sdm845"

    const-string/jumbo v12, "ro.board.platform"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    const-string v11, "com.android.cts.verifier"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v8, v11}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/hardware/camera2/params/StreamConfiguration;

    if-nez v11, :cond_1

    const-string v12, "CameraManager"

    const-string v13, "Get NULL StreamConfiguration!"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move v13, v10

    :goto_1
    array-length v14, v11

    if-ge v13, v14, :cond_a

    aget-object v14, v11, v13

    invoke-virtual {v14}, Landroid/hardware/camera2/params/StreamConfiguration;->getWidth()I

    move-result v14

    const/16 v15, 0x1040

    if-ne v14, v15, :cond_2

    aget-object v14, v11, v13

    invoke-virtual {v14}, Landroid/hardware/camera2/params/StreamConfiguration;->getHeight()I

    move-result v14

    const/16 v15, 0xc30

    if-eq v14, v15, :cond_9

    :cond_2
    aget-object v14, v11, v13

    invoke-virtual {v14}, Landroid/hardware/camera2/params/StreamConfiguration;->getWidth()I

    move-result v14

    const/16 v15, 0xfa0

    if-ne v14, v15, :cond_3

    aget-object v14, v11, v13

    invoke-virtual {v14}, Landroid/hardware/camera2/params/StreamConfiguration;->getHeight()I

    move-result v14

    const/16 v15, 0xbb8

    if-eq v14, v15, :cond_9

    :cond_3
    aget-object v14, v11, v13

    invoke-virtual {v14}, Landroid/hardware/camera2/params/StreamConfiguration;->getWidth()I

    move-result v14

    const/16 v15, 0x5a0

    if-ne v14, v15, :cond_4

    aget-object v14, v11, v13

    invoke-virtual {v14}, Landroid/hardware/camera2/params/StreamConfiguration;->getHeight()I

    move-result v14

    const/16 v15, 0x438

    if-eq v14, v15, :cond_9

    :cond_4
    aget-object v14, v11, v13

    invoke-virtual {v14}, Landroid/hardware/camera2/params/StreamConfiguration;->getWidth()I

    move-result v14

    const/16 v15, 0x500

    if-ne v14, v15, :cond_5

    aget-object v14, v11, v13

    invoke-virtual {v14}, Landroid/hardware/camera2/params/StreamConfiguration;->getHeight()I

    move-result v14

    const/16 v15, 0x3c0

    if-eq v14, v15, :cond_9

    :cond_5
    aget-object v14, v11, v13

    invoke-virtual {v14}, Landroid/hardware/camera2/params/StreamConfiguration;->getWidth()I

    move-result v14

    const/16 v15, 0x400

    if-ne v14, v15, :cond_6

    aget-object v14, v11, v13

    invoke-virtual {v14}, Landroid/hardware/camera2/params/StreamConfiguration;->getHeight()I

    move-result v14

    const/16 v15, 0x300

    if-eq v14, v15, :cond_9

    :cond_6
    aget-object v14, v11, v13

    invoke-virtual {v14}, Landroid/hardware/camera2/params/StreamConfiguration;->getWidth()I

    move-result v14

    const/16 v15, 0x320

    if-ne v14, v15, :cond_7

    aget-object v14, v11, v13

    invoke-virtual {v14}, Landroid/hardware/camera2/params/StreamConfiguration;->getHeight()I

    move-result v14

    const/16 v15, 0x258

    if-eq v14, v15, :cond_9

    :cond_7
    aget-object v14, v11, v13

    invoke-virtual {v14}, Landroid/hardware/camera2/params/StreamConfiguration;->getWidth()I

    move-result v14

    const/16 v15, 0x140

    if-ne v14, v15, :cond_8

    aget-object v14, v11, v13

    invoke-virtual {v14}, Landroid/hardware/camera2/params/StreamConfiguration;->getHeight()I

    move-result v14

    const/16 v15, 0xf0

    if-ne v14, v15, :cond_8

    goto :goto_2

    :cond_8
    aget-object v14, v11, v13

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v13, v13, [Landroid/hardware/camera2/params/StreamConfiguration;

    move v14, v10

    :goto_3
    array-length v15, v13

    if-ge v14, v15, :cond_b

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/hardware/camera2/params/StreamConfiguration;

    aput-object v15, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_b
    sget-object v14, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v8, v14, v13}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    :cond_c
    :goto_4
    const/4 v11, 0x1

    if-eqz v9, :cond_d

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_d

    const-string/jumbo v12, "sdm845"

    const-string/jumbo v13, "ro.board.platform"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    const-string v12, "com.android.cts.verifier"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    new-array v12, v6, [I

    aput v10, v12, v10

    aput v6, v12, v11

    sget-object v13, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_EFFECTS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v8, v13, v12}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    :cond_d
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_e

    const-string v12, "com.android.cts.verifier"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    const-string v12, "msmnile"

    const-string/jumbo v13, "ro.board.platform"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    new-instance v12, Landroid/util/Range;

    const-string v13, "100000"

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const-string v14, "2000000000"

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sget-object v13, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v8, v13, v12}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    :cond_e
    const-string v12, "msmnile"

    const-string/jumbo v13, "ro.board.platform"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_f

    const-string/jumbo v12, "sdm845"

    const-string/jumbo v13, "ro.board.platform"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    :cond_f
    const-string v12, "1"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    const-string v12, "android.camera.cts"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10

    const-string v12, "com.android.cts.verifier"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    :cond_10
    const-string v12, "11"

    invoke-interface {v5, v12}, Landroid/hardware/ICameraService;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v13

    const-string v14, "CameraManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DEBUG packageName = "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v14, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "com.android.cts.verifier"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_11

    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PRE_CORRECTION_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v13, v10}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    const-string v11, "CameraManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DEBUG rect: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v13, v11, v10}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_11
    sget-object v11, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v13, v11}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Rect;

    const-string v14, "CameraManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DEBUG rect: "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v14, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "msmnile"

    const-string/jumbo v14, "ro.board.platform"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_12

    new-array v10, v6, [I

    const/4 v14, 0x0

    aput v14, v10, v14

    const/4 v14, 0x1

    aput v6, v10, v14

    sget-object v14, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_EFFECTS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v13, v14, v10}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    :cond_12
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v14, 0x1

    if-ne v10, v14, :cond_13

    const-string v10, "msmnile"

    const-string/jumbo v14, "ro.board.platform"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    new-instance v10, Landroid/util/Range;

    const-string v14, "100000"

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string v15, "2000000000"

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-direct {v10, v14, v15}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sget-object v14, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v13, v14, v10}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    :cond_13
    :goto_5
    new-instance v10, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v10, v13}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    move-object v2, v10

    goto :goto_6

    :cond_14
    new-instance v10, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v10, v8}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    :try_end_3
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v10

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v7, v0

    :try_start_4
    new-instance v8, Landroid/hardware/camera2/CameraAccessException;

    const-string v9, "Camera service is currently unavailable"

    invoke-direct {v8, v6, v9, v7}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    :catch_2
    move-exception v0

    move-object v6, v0

    invoke-static {v6}, Landroid/hardware/camera2/CameraManager;->throwAsPublicException(Ljava/lang/Throwable;)V

    :goto_6
    nop

    monitor-exit v4

    return-object v2

    :cond_15
    new-instance v7, Landroid/hardware/camera2/CameraAccessException;

    const-string v8, "Camera service is currently unavailable"

    invoke-direct {v7, v6, v8}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    move-object v5, v2

    move-object v2, v0

    :goto_7
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2

    :catchall_1
    move-exception v0

    move-object v2, v0

    goto :goto_7

    :cond_16
    move-object/from16 v3, p0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "No cameras available on device"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getCameraIdList()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    invoke-static {p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/hardware/camera2/CameraManager;->openCameraForUid(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;I)V

    return-void
.end method

.method public openCamera(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p3, p2, v0}, Landroid/hardware/camera2/CameraManager;->openCameraForUid(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openCameraForUid(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/hardware/camera2/CameraManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Landroid/util/PermissionInjector;->rejectPerm(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/app/OpQuickReplyApp;->exitQuickReply()V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/camera2/CameraManager;->openCameraDeviceUserAsync(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Ljava/util/concurrent/Executor;I)Landroid/hardware/camera2/CameraDevice;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No cameras available on device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cameraId was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V
    .locals 2

    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-static {p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public registerAvailabilityCallback(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V
    .locals 2

    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-static {p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndWrapHandler(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public registerTorchCallback(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$TorchCallback;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor was null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTorchMode(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    sget-boolean v0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->sCameraServiceDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->setTorchMode(Ljava/lang/String;Z)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No cameras available on device"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .locals 1

    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    return-void
.end method

.method public unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V
    .locals 1

    invoke-static {}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->get()Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V

    return-void
.end method
