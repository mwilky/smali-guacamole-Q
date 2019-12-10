.class public abstract Lcom/oneplus/android/power/IOpPowerController$Stub;
.super Landroid/os/Binder;
.source "IOpPowerController.java"

# interfaces
.implements Lcom/oneplus/android/power/IOpPowerController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/power/IOpPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/power/IOpPowerController$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.oneplus.android.power.IOpPowerController"

.field static final TRANSACTION_acquireNetworkTemp:I = 0x9

.field static final TRANSACTION_inform1stLightIdle:I = 0xd

.field static final TRANSACTION_informDeviceActive:I = 0xe

.field static final TRANSACTION_isAggressive:I = 0x4

.field static final TRANSACTION_isChinaRegion:I = 0x3

.field static final TRANSACTION_isInDeepIdle:I = 0x6

.field static final TRANSACTION_isInDeepSleep:I = 0x7

.field static final TRANSACTION_isInSleep:I = 0x5

.field static final TRANSACTION_isIndiaRegion:I = 0x2

.field static final TRANSACTION_isOemDeviceIdleWhitelist:I = 0x1

.field static final TRANSACTION_noteCameraOn:I = 0xc

.field static final TRANSACTION_notifyScreenState:I = 0xa

.field static final TRANSACTION_setDozeState:I = 0xb

.field static final TRANSACTION_shutdown:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.oneplus.android.power.IOpPowerController"

    invoke-virtual {p0, p0, v0}, Lcom/oneplus/android/power/IOpPowerController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oneplus/android/power/IOpPowerController;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.oneplus.android.power.IOpPowerController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oneplus/android/power/IOpPowerController;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/oneplus/android/power/IOpPowerController;

    return-object v1

    :cond_1
    new-instance v1, Lcom/oneplus/android/power/IOpPowerController$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oneplus/android/power/IOpPowerController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/oneplus/android/power/IOpPowerController;
    .locals 1

    sget-object v0, Lcom/oneplus/android/power/IOpPowerController$Stub$Proxy;->sDefaultImpl:Lcom/oneplus/android/power/IOpPowerController;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "informDeviceActive"

    return-object v0

    :pswitch_1
    const-string v0, "inform1stLightIdle"

    return-object v0

    :pswitch_2
    const-string v0, "noteCameraOn"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "setDozeState"

    return-object v0

    :pswitch_4
    const-string v0, "notifyScreenState"

    return-object v0

    :pswitch_5
    const-string v0, "acquireNetworkTemp"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "shutdown"

    return-object v0

    :pswitch_7
    const-string v0, "isInDeepSleep"

    return-object v0

    :pswitch_8
    const-string v0, "isInDeepIdle"

    return-object v0

    :pswitch_9
    const-string v0, "isInSleep"

    return-object v0

    :pswitch_a
    const-string v0, "isAggressive"

    return-object v0

    :pswitch_b
    const-string v0, "isChinaRegion"

    return-object v0

    :pswitch_c
    const-string v0, "isIndiaRegion"

    return-object v0

    :pswitch_d
    const-string v0, "isOemDeviceIdleWhitelist"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static setDefaultImpl(Lcom/oneplus/android/power/IOpPowerController;)Z
    .locals 1

    sget-object v0, Lcom/oneplus/android/power/IOpPowerController$Stub$Proxy;->sDefaultImpl:Lcom/oneplus/android/power/IOpPowerController;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/oneplus/android/power/IOpPowerController$Stub$Proxy;->sDefaultImpl:Lcom/oneplus/android/power/IOpPowerController;

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

    invoke-static {p1}, Lcom/oneplus/android/power/IOpPowerController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.oneplus.android.power.IOpPowerController"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/android/power/IOpPowerController$Stub;->informDeviceActive()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/android/power/IOpPowerController$Stub;->inform1stLightIdle()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/oneplus/android/power/IOpPowerController$Stub;->noteCameraOn(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/android/power/IOpPowerController$Stub;->setDozeState(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/android/power/IOpPowerController$Stub;->notifyScreenState(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/android/power/IOpPowerController$Stub;->acquireNetworkTemp()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/android/power/IOpPowerController$Stub;->shutdown()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/android/power/IOpPowerController$Stub;->isInDeepSleep()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/android/power/IOpPowerController$Stub;->isInDeepIdle()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/android/power/IOpPowerController$Stub;->isInSleep()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/android/power/IOpPowerController$Stub;->isAggressive()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/android/power/IOpPowerController$Stub;->isChinaRegion()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/android/power/IOpPowerController$Stub;->isIndiaRegion()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/android/power/IOpPowerController$Stub;->isOemDeviceIdleWhitelist(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
