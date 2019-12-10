.class public abstract Lcom/android/internal/statusbar/IStatusBarService$Stub;
.super Landroid/os/Binder;
.source "IStatusBarService.java"

# interfaces
.implements Lcom/android/internal/statusbar/IStatusBarService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IStatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IStatusBarService"

.field static final TRANSACTION_addTile:I = 0x23

.field static final TRANSACTION_clearNotificationEffects:I = 0x11

.field static final TRANSACTION_clickTile:I = 0x25

.field static final TRANSACTION_collapsePanels:I = 0x2

.field static final TRANSACTION_disable:I = 0x4

.field static final TRANSACTION_disable2:I = 0x6

.field static final TRANSACTION_disable2ForUser:I = 0x7

.field static final TRANSACTION_disableForUser:I = 0x5

.field static final TRANSACTION_expandNotificationsPanel:I = 0x1

.field static final TRANSACTION_expandSettingsPanel:I = 0xd

.field static final TRANSACTION_getDisableFlags:I = 0x8

.field static final TRANSACTION_getTopIsFullscreen:I = 0x36

.field static final TRANSACTION_handleSystemKey:I = 0x26

.field static final TRANSACTION_hideBiometricDialog:I = 0x2d

.field static final TRANSACTION_notifyNavBarColorChanged:I = 0x34

.field static final TRANSACTION_onAuthenticatedFailed:I = 0x30

.field static final TRANSACTION_onBiometricAuthenticated:I = 0x2a

.field static final TRANSACTION_onBiometricError:I = 0x2c

.field static final TRANSACTION_onBiometricHelp:I = 0x2b

.field static final TRANSACTION_onClearAllNotifications:I = 0x15

.field static final TRANSACTION_onFingerprintAcquired:I = 0x2e

.field static final TRANSACTION_onFingerprintAuthenticated:I = 0x31

.field static final TRANSACTION_onFingerprintEnrollResult:I = 0x2f

.field static final TRANSACTION_onFingerprintError:I = 0x33

.field static final TRANSACTION_onFingerprintHelp:I = 0x32

.field static final TRANSACTION_onGlobalActionsHidden:I = 0x20

.field static final TRANSACTION_onGlobalActionsShown:I = 0x1f

.field static final TRANSACTION_onNotificationActionClick:I = 0x13

.field static final TRANSACTION_onNotificationBubbleChanged:I = 0x1e

.field static final TRANSACTION_onNotificationClear:I = 0x16

.field static final TRANSACTION_onNotificationClick:I = 0x12

.field static final TRANSACTION_onNotificationDirectReplied:I = 0x19

.field static final TRANSACTION_onNotificationError:I = 0x14

.field static final TRANSACTION_onNotificationExpansionChanged:I = 0x18

.field static final TRANSACTION_onNotificationSettingsViewed:I = 0x1c

.field static final TRANSACTION_onNotificationSmartReplySent:I = 0x1b

.field static final TRANSACTION_onNotificationSmartSuggestionsAdded:I = 0x1a

.field static final TRANSACTION_onNotificationVisibilityChanged:I = 0x17

.field static final TRANSACTION_onPanelHidden:I = 0x10

.field static final TRANSACTION_onPanelRevealed:I = 0xf

.field static final TRANSACTION_op_reboot:I = 0x35

.field static final TRANSACTION_reboot:I = 0x22

.field static final TRANSACTION_registerStatusBar:I = 0xe

.field static final TRANSACTION_remTile:I = 0x24

.field static final TRANSACTION_removeIcon:I = 0xb

.field static final TRANSACTION_setIcon:I = 0x9

.field static final TRANSACTION_setIconVisibility:I = 0xa

.field static final TRANSACTION_setImeWindowStatus:I = 0xc

.field static final TRANSACTION_setSystemUiVisibility:I = 0x1d

.field static final TRANSACTION_showBiometricDialog:I = 0x29

.field static final TRANSACTION_showPinningEnterExitToast:I = 0x27

.field static final TRANSACTION_showPinningEscapeToast:I = 0x28

.field static final TRANSACTION_shutdown:I = 0x21

.field static final TRANSACTION_togglePanel:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/android/internal/statusbar/IStatusBarService;

    return-object v1

    :cond_1
    new-instance v1, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1

    sget-object v0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "getTopIsFullscreen"

    return-object v0

    :pswitch_1
    const-string v0, "op_reboot"

    return-object v0

    :pswitch_2
    const-string v0, "notifyNavBarColorChanged"

    return-object v0

    :pswitch_3
    const-string v0, "onFingerprintError"

    return-object v0

    :pswitch_4
    const-string v0, "onFingerprintHelp"

    return-object v0

    :pswitch_5
    const-string v0, "onFingerprintAuthenticated"

    return-object v0

    :pswitch_6
    const-string v0, "onAuthenticatedFailed"

    return-object v0

    :pswitch_7
    const-string v0, "onFingerprintEnrollResult"

    return-object v0

    :pswitch_8
    const-string v0, "onFingerprintAcquired"

    return-object v0

    :pswitch_9
    const-string v0, "hideBiometricDialog"

    return-object v0

    :pswitch_a
    const-string v0, "onBiometricError"

    return-object v0

    :pswitch_b
    const-string v0, "onBiometricHelp"

    return-object v0

    :pswitch_c
    const-string v0, "onBiometricAuthenticated"

    return-object v0

    :pswitch_d
    const-string/jumbo v0, "showBiometricDialog"

    return-object v0

    :pswitch_e
    const-string/jumbo v0, "showPinningEscapeToast"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "showPinningEnterExitToast"

    return-object v0

    :pswitch_10
    const-string v0, "handleSystemKey"

    return-object v0

    :pswitch_11
    const-string v0, "clickTile"

    return-object v0

    :pswitch_12
    const-string/jumbo v0, "remTile"

    return-object v0

    :pswitch_13
    const-string v0, "addTile"

    return-object v0

    :pswitch_14
    const-string/jumbo v0, "reboot"

    return-object v0

    :pswitch_15
    const-string/jumbo v0, "shutdown"

    return-object v0

    :pswitch_16
    const-string v0, "onGlobalActionsHidden"

    return-object v0

    :pswitch_17
    const-string v0, "onGlobalActionsShown"

    return-object v0

    :pswitch_18
    const-string v0, "onNotificationBubbleChanged"

    return-object v0

    :pswitch_19
    const-string/jumbo v0, "setSystemUiVisibility"

    return-object v0

    :pswitch_1a
    const-string v0, "onNotificationSettingsViewed"

    return-object v0

    :pswitch_1b
    const-string v0, "onNotificationSmartReplySent"

    return-object v0

    :pswitch_1c
    const-string v0, "onNotificationSmartSuggestionsAdded"

    return-object v0

    :pswitch_1d
    const-string v0, "onNotificationDirectReplied"

    return-object v0

    :pswitch_1e
    const-string v0, "onNotificationExpansionChanged"

    return-object v0

    :pswitch_1f
    const-string v0, "onNotificationVisibilityChanged"

    return-object v0

    :pswitch_20
    const-string v0, "onNotificationClear"

    return-object v0

    :pswitch_21
    const-string v0, "onClearAllNotifications"

    return-object v0

    :pswitch_22
    const-string v0, "onNotificationError"

    return-object v0

    :pswitch_23
    const-string v0, "onNotificationActionClick"

    return-object v0

    :pswitch_24
    const-string v0, "onNotificationClick"

    return-object v0

    :pswitch_25
    const-string v0, "clearNotificationEffects"

    return-object v0

    :pswitch_26
    const-string v0, "onPanelHidden"

    return-object v0

    :pswitch_27
    const-string v0, "onPanelRevealed"

    return-object v0

    :pswitch_28
    const-string/jumbo v0, "registerStatusBar"

    return-object v0

    :pswitch_29
    const-string v0, "expandSettingsPanel"

    return-object v0

    :pswitch_2a
    const-string/jumbo v0, "setImeWindowStatus"

    return-object v0

    :pswitch_2b
    const-string/jumbo v0, "removeIcon"

    return-object v0

    :pswitch_2c
    const-string/jumbo v0, "setIconVisibility"

    return-object v0

    :pswitch_2d
    const-string/jumbo v0, "setIcon"

    return-object v0

    :pswitch_2e
    const-string v0, "getDisableFlags"

    return-object v0

    :pswitch_2f
    const-string v0, "disable2ForUser"

    return-object v0

    :pswitch_30
    const-string v0, "disable2"

    return-object v0

    :pswitch_31
    const-string v0, "disableForUser"

    return-object v0

    :pswitch_32
    const-string v0, "disable"

    return-object v0

    :pswitch_33
    const-string/jumbo v0, "togglePanel"

    return-object v0

    :pswitch_34
    const-string v0, "collapsePanels"

    return-object v0

    :pswitch_35
    const-string v0, "expandNotificationsPanel"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setDefaultImpl(Lcom/android/internal/statusbar/IStatusBarService;)Z
    .locals 1

    sget-object v0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/android/internal/statusbar/IStatusBarService$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/statusbar/IStatusBarService;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    const-string v13, "com.android.internal.statusbar.IStatusBarService"

    const v0, 0x5f4e5446

    const/4 v14, 0x1

    if-eq v10, v0, :cond_1b

    const/4 v0, 0x0

    packed-switch v10, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->getTopIsFullscreen()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v14

    :pswitch_1
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v14

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v0, v14

    :cond_1
    invoke-virtual {v9, v1, v2, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->op_reboot(ZLjava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_2
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->notifyNavBarColorChanged(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_3
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onFingerprintError(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_4
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onFingerprintHelp(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_5
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    move v0, v14

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onFingerprintAuthenticated(ZLjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_6
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onAuthenticatedFailed()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_7
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onFingerprintEnrollResult()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_8
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onFingerprintAcquired(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_9
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->hideBiometricDialog()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_a
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onBiometricError(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_b
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onBiometricHelp(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_c
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    move v0, v14

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onBiometricAuthenticated(ZLjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_d
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    move-object v6, v1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    move-object v6, v1

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    move v4, v14

    goto :goto_2

    :cond_5
    move v4, v0

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->showBiometricDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;IZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_e
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->showPinningEscapeToast()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_f
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    move v0, v14

    :cond_6
    invoke-virtual {v9, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->showPinningEnterExitToast(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_10
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->handleSystemKey(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_11
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v9, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->clickTile(Landroid/content/ComponentName;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_12
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v9, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->remTile(Landroid/content/ComponentName;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_13
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v9, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->addTile(Landroid/content/ComponentName;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_14
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    move v0, v14

    :cond_a
    invoke-virtual {v9, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->reboot(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_15
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->shutdown()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_16
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onGlobalActionsHidden()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_17
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onGlobalActionsShown()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_18
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b

    move v0, v14

    :cond_b
    invoke-virtual {v9, v1, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationBubbleChanged(Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_19
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setSystemUiVisibility(IIILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_1a
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationSettingsViewed(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_1b
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    move-object v8, v1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    move-object v8, v1

    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    move v5, v14

    goto :goto_7

    :cond_d
    move v5, v0

    :goto_7
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move-object v3, v8

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationSmartReplySent(Ljava/lang/String;ILjava/lang/CharSequence;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_1c
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e

    move v4, v14

    goto :goto_8

    :cond_e
    move v4, v0

    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f

    move v5, v14

    goto :goto_9

    :cond_f
    move v5, v0

    :goto_9
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationSmartSuggestionsAdded(Ljava/lang/String;IIZZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_1d
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationDirectReplied(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_1e
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_10

    move v2, v14

    goto :goto_a

    :cond_10
    move v2, v0

    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_11

    move v0, v14

    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v9, v1, v2, v0, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationExpansionChanged(Ljava/lang/String;ZZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_1f
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/statusbar/NotificationVisibility;

    sget-object v1, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/internal/statusbar/NotificationVisibility;

    invoke-virtual {v9, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_20
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/statusbar/NotificationVisibility;

    move-object/from16 v22, v0

    goto :goto_b

    :cond_12
    const/4 v0, 0x0

    move-object/from16 v22, v0

    :goto_b
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move-object/from16 v5, v19

    move/from16 v6, v20

    move/from16 v7, v21

    move-object/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationClear(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IILcom/android/internal/statusbar/NotificationVisibility;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_21
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onClearAllNotifications(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_22
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move-object/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_23
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_13

    sget-object v1, Landroid/app/Notification$Action;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$Action;

    move-object v8, v1

    goto :goto_c

    :cond_13
    const/4 v1, 0x0

    move-object v8, v1

    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_14

    sget-object v1, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/statusbar/NotificationVisibility;

    move-object v15, v1

    goto :goto_d

    :cond_14
    const/4 v1, 0x0

    move-object v15, v1

    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_15

    move v5, v14

    goto :goto_e

    :cond_15
    move v5, v0

    :goto_e
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move-object v3, v8

    move-object v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationActionClick(Ljava/lang/String;ILandroid/app/Notification$Action;Lcom/android/internal/statusbar/NotificationVisibility;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_24
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_16

    sget-object v1, Lcom/android/internal/statusbar/NotificationVisibility;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v11}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/statusbar/NotificationVisibility;

    goto :goto_f

    :cond_16
    const/4 v1, 0x0

    :goto_f
    invoke-virtual {v9, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onNotificationClick(Ljava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_25
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->clearNotificationEffects()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_26
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onPanelHidden()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_27
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_17

    move v0, v14

    :cond_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->onPanelRevealed(ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_28
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;)Lcom/android/internal/statusbar/RegisterStatusBarResult;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_18

    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, v12, v14}, Lcom/android/internal/statusbar/RegisterStatusBarResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_10

    :cond_18
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_10
    return v14

    :pswitch_29
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->expandSettingsPanel(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_2a
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_19

    move v5, v14

    goto :goto_11

    :cond_19
    move v5, v0

    :goto_11
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setImeWindowStatus(ILandroid/os/IBinder;IIZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_2b
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->removeIcon(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_2c
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1a

    move v0, v14

    :cond_1a
    invoke-virtual {v9, v1, v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setIconVisibility(Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_2d
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_2e
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->getDisableFlags(Landroid/os/IBinder;I)[I

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    return v14

    :pswitch_2f
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_30
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disable2(ILandroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_31
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_32
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_33
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->togglePanel()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_34
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->collapsePanels()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :pswitch_35
    invoke-virtual {v11, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->expandNotificationsPanel()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v14

    :cond_1b
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v14

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
