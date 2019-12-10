.class public abstract Lcom/oneplus/os/IOnePlusService$Stub;
.super Landroid/os/Binder;
.source "IOnePlusService.java"

# interfaces
.implements Lcom/oneplus/os/IOnePlusService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/os/IOnePlusService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/os/IOnePlusService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.oneplus.os.IOnePlusService"

.field static final TRANSACTION_disableTheme:I = 0x2

.field static final TRANSACTION_enableTheme:I = 0x1

.field static final TRANSACTION_getAllAppControlModes:I = 0x5

.field static final TRANSACTION_getAppControlMode:I = 0x6

.field static final TRANSACTION_getAppControlState:I = 0x8

.field static final TRANSACTION_getBgPowerHungryList:I = 0xa

.field static final TRANSACTION_isInConfigList:I = 0xe

.field static final TRANSACTION_isInSpecialTesting:I = 0xf

.field static final TRANSACTION_notifySurfaceFlingerUpdate:I = 0xd

.field static final TRANSACTION_processDisableThemeCategory:I = 0x4

.field static final TRANSACTION_processEnableThemeCategory:I = 0x3

.field static final TRANSACTION_reportJank:I = 0xc

.field static final TRANSACTION_setAppControlMode:I = 0x7

.field static final TRANSACTION_setAppControlState:I = 0x9

.field static final TRANSACTION_stopBgPowerHungryApp:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.oneplus.os.IOnePlusService"

    invoke-virtual {p0, p0, v0}, Lcom/oneplus/os/IOnePlusService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oneplus/os/IOnePlusService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.oneplus.os.IOnePlusService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oneplus/os/IOnePlusService;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/oneplus/os/IOnePlusService;

    return-object v1

    :cond_1
    new-instance v1, Lcom/oneplus/os/IOnePlusService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oneplus/os/IOnePlusService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/oneplus/os/IOnePlusService;
    .locals 1

    sget-object v0, Lcom/oneplus/os/IOnePlusService$Stub$Proxy;->sDefaultImpl:Lcom/oneplus/os/IOnePlusService;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "isInSpecialTesting"

    return-object v0

    :pswitch_1
    const-string v0, "isInConfigList"

    return-object v0

    :pswitch_2
    const-string v0, "notifySurfaceFlingerUpdate"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "reportJank"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "stopBgPowerHungryApp"

    return-object v0

    :pswitch_5
    const-string v0, "getBgPowerHungryList"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "setAppControlState"

    return-object v0

    :pswitch_7
    const-string v0, "getAppControlState"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "setAppControlMode"

    return-object v0

    :pswitch_9
    const-string v0, "getAppControlMode"

    return-object v0

    :pswitch_a
    const-string v0, "getAllAppControlModes"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "processDisableThemeCategory"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "processEnableThemeCategory"

    return-object v0

    :pswitch_d
    const-string v0, "disableTheme"

    return-object v0

    :pswitch_e
    const-string v0, "enableTheme"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static setDefaultImpl(Lcom/oneplus/os/IOnePlusService;)Z
    .locals 1

    sget-object v0, Lcom/oneplus/os/IOnePlusService$Stub$Proxy;->sDefaultImpl:Lcom/oneplus/os/IOnePlusService;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/oneplus/os/IOnePlusService$Stub$Proxy;->sDefaultImpl:Lcom/oneplus/os/IOnePlusService;

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

    invoke-static {p1}, Lcom/oneplus/os/IOnePlusService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.oneplus.os.IOnePlusService"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/os/IOnePlusService$Stub;->isInSpecialTesting()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/oneplus/os/IOnePlusService$Stub;->isInConfigList(ILjava/lang/String;)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/os/IOnePlusService$Stub;->notifySurfaceFlingerUpdate()V

    return v2

    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/oneplus/os/IOnePlusService$Stub;->reportJank(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/oneplus/os/IOnePlusService$Stub;->stopBgPowerHungryApp(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/os/IOnePlusService$Stub;->getBgPowerHungryList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v2

    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/oneplus/os/IOnePlusService$Stub;->setAppControlState(II)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/os/IOnePlusService$Stub;->getAppControlState(I)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v1, v3, v4}, Lcom/oneplus/os/IOnePlusService$Stub;->setAppControlMode(Ljava/lang/String;II)I

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/oneplus/os/IOnePlusService$Stub;->getAppControlMode(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/os/IOnePlusService$Stub;->getAllAppControlModes(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v2

    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/oneplus/os/IOnePlusService$Stub;->processDisableThemeCategory(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/oneplus/os/IOnePlusService$Stub;->processEnableThemeCategory(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/os/IOnePlusService$Stub;->disableTheme(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/os/IOnePlusService$Stub;->enableTheme(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
