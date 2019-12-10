.class public abstract Lcom/oneplus/display/IOneplusColorDisplay$Stub;
.super Landroid/os/Binder;
.source "IOneplusColorDisplay.java"

# interfaces
.implements Lcom/oneplus/display/IOneplusColorDisplay;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/display/IOneplusColorDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/display/IOneplusColorDisplay$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.oneplus.display.IOneplusColorDisplay"

.field static final TRANSACTION_adjustLightColorGamut:I = 0x1

.field static final TRANSACTION_disableColor:I = 0xf

.field static final TRANSACTION_disablelightSensor:I = 0x17

.field static final TRANSACTION_enterGoogleMatrix:I = 0x19

.field static final TRANSACTION_exitGoogleMatrix:I = 0x1a

.field static final TRANSACTION_notifyCameraStatus:I = 0x4

.field static final TRANSACTION_notifySetUp:I = 0x16

.field static final TRANSACTION_onDCEnable:I = 0x12

.field static final TRANSACTION_recoverOneplusColorMatrix:I = 0x14

.field static final TRANSACTION_screenColorModeChange:I = 0x10

.field static final TRANSACTION_screenStateChange:I = 0x11

.field static final TRANSACTION_setColorBalance2GrayColor:I = 0x8

.field static final TRANSACTION_setColorBalance2PaperColor:I = 0xd

.field static final TRANSACTION_setColorBalanceActivated:I = 0x7

.field static final TRANSACTION_setColorGamutMode:I = 0x2

.field static final TRANSACTION_setColorTemperature:I = 0x5

.field static final TRANSACTION_setCustomColorTemperature:I = 0x15

.field static final TRANSACTION_setGrayColor2ColorBalance:I = 0x9

.field static final TRANSACTION_setGrayColor2PaperColor:I = 0xb

.field static final TRANSACTION_setGrayColorActivated:I = 0x6

.field static final TRANSACTION_setMediaCodecState:I = 0x3

.field static final TRANSACTION_setNightBrightness:I = 0x13

.field static final TRANSACTION_setPaperColor2ColorBalance:I = 0xe

.field static final TRANSACTION_setPaperColor2GrayColor:I = 0xa

.field static final TRANSACTION_setPaperColorActivated:I = 0xc

.field static final TRANSACTION_updateAutoAssertiveDisplayStatus:I = 0x18


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.oneplus.display.IOneplusColorDisplay"

    invoke-virtual {p0, p0, v0}, Lcom/oneplus/display/IOneplusColorDisplay$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oneplus/display/IOneplusColorDisplay;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.oneplus.display.IOneplusColorDisplay"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oneplus/display/IOneplusColorDisplay;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/oneplus/display/IOneplusColorDisplay;

    return-object v1

    :cond_1
    new-instance v1, Lcom/oneplus/display/IOneplusColorDisplay$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oneplus/display/IOneplusColorDisplay$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/oneplus/display/IOneplusColorDisplay;
    .locals 1

    sget-object v0, Lcom/oneplus/display/IOneplusColorDisplay$Stub$Proxy;->sDefaultImpl:Lcom/oneplus/display/IOneplusColorDisplay;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "exitGoogleMatrix"

    return-object v0

    :pswitch_1
    const-string v0, "enterGoogleMatrix"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "updateAutoAssertiveDisplayStatus"

    return-object v0

    :pswitch_3
    const-string v0, "disablelightSensor"

    return-object v0

    :pswitch_4
    const-string v0, "notifySetUp"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "setCustomColorTemperature"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "recoverOneplusColorMatrix"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "setNightBrightness"

    return-object v0

    :pswitch_8
    const-string v0, "onDCEnable"

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "screenStateChange"

    return-object v0

    :pswitch_a
    const-string/jumbo v0, "screenColorModeChange"

    return-object v0

    :pswitch_b
    const-string v0, "disableColor"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "setPaperColor2ColorBalance"

    return-object v0

    :pswitch_d
    const-string/jumbo v0, "setColorBalance2PaperColor"

    return-object v0

    :pswitch_e
    const-string/jumbo v0, "setPaperColorActivated"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "setGrayColor2PaperColor"

    return-object v0

    :pswitch_10
    const-string/jumbo v0, "setPaperColor2GrayColor"

    return-object v0

    :pswitch_11
    const-string/jumbo v0, "setGrayColor2ColorBalance"

    return-object v0

    :pswitch_12
    const-string/jumbo v0, "setColorBalance2GrayColor"

    return-object v0

    :pswitch_13
    const-string/jumbo v0, "setColorBalanceActivated"

    return-object v0

    :pswitch_14
    const-string/jumbo v0, "setGrayColorActivated"

    return-object v0

    :pswitch_15
    const-string/jumbo v0, "setColorTemperature"

    return-object v0

    :pswitch_16
    const-string v0, "notifyCameraStatus"

    return-object v0

    :pswitch_17
    const-string/jumbo v0, "setMediaCodecState"

    return-object v0

    :pswitch_18
    const-string/jumbo v0, "setColorGamutMode"

    return-object v0

    :pswitch_19
    const-string v0, "adjustLightColorGamut"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static setDefaultImpl(Lcom/oneplus/display/IOneplusColorDisplay;)Z
    .locals 1

    sget-object v0, Lcom/oneplus/display/IOneplusColorDisplay$Stub$Proxy;->sDefaultImpl:Lcom/oneplus/display/IOneplusColorDisplay;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/oneplus/display/IOneplusColorDisplay$Stub$Proxy;->sDefaultImpl:Lcom/oneplus/display/IOneplusColorDisplay;

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

    invoke-static {p1}, Lcom/oneplus/display/IOneplusColorDisplay$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.oneplus.display.IOneplusColorDisplay"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_6

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/display/IOneplusColorDisplay$Stub;->exitGoogleMatrix()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/display/IOneplusColorDisplay$Stub;->enterGoogleMatrix()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/display/IOneplusColorDisplay$Stub;->updateAutoAssertiveDisplayStatus(F)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/display/IOneplusColorDisplay$Stub;->disablelightSensor()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/display/IOneplusColorDisplay$Stub;->notifySetUp(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/display/IOneplusColorDisplay$Stub;->setCustomColorTemperature()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/display/IOneplusColorDisplay$Stub;->recoverOneplusColorMatrix()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/display/IOneplusColorDisplay$Stub;->setNightBrightness()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/display/IOneplusColorDisplay$Stub;->onDCEnable()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/display/IOneplusColorDisplay$Stub;->screenStateChange(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/display/IOneplusColorDisplay$Stub;->screenColorModeChange()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/display/IOneplusColorDisplay$Stub;->disableColor(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/display/IOneplusColorDisplay$Stub;->setPaperColor2ColorBalance()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/display/IOneplusColorDisplay$Stub;->setColorBalance2PaperColor()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p0, v1}, Lcom/oneplus/display/IOneplusColorDisplay$Stub;->setPaperColorActivated(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/display/IOneplusColorDisplay$Stub;->setGrayColor2PaperColor()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/display/IOneplusColorDisplay$Stub;->setPaperColor2GrayColor()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/display/IOneplusColorDisplay$Stub;->setGrayColor2ColorBalance()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/display/IOneplusColorDisplay$Stub;->setColorBalance2GrayColor()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0, v1}, Lcom/oneplus/display/IOneplusColorDisplay$Stub;->setColorBalanceActivated(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Lcom/oneplus/display/IOneplusColorDisplay$Stub;->setGrayColorActivated(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/display/IOneplusColorDisplay$Stub;->setColorTemperature()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_16
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {p0, v1}, Lcom/oneplus/display/IOneplusColorDisplay$Stub;->notifyCameraStatus(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_17
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {p0, v1}, Lcom/oneplus/display/IOneplusColorDisplay$Stub;->setMediaCodecState(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_18
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    move v1, v2

    :cond_5
    invoke-virtual {p0, v3, v1}, Lcom/oneplus/display/IOneplusColorDisplay$Stub;->setColorGamutMode(IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_19
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/display/IOneplusColorDisplay$Stub;->adjustLightColorGamut(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
