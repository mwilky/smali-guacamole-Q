.class public abstract Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice$Stub;
.super Landroid/os/Binder;
.source "IOnePlusPodDevice.java"

# interfaces
.implements Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.oos.onepluspods.service.aidl.IOnePlusPodDevice"

.field static final TRANSACTION_getBattaryInfo:I = 0x6

.field static final TRANSACTION_getKeyFunction:I = 0x3

.field static final TRANSACTION_getVersion:I = 0x4

.field static final TRANSACTION_isOnePlusPods:I = 0x1

.field static final TRANSACTION_setIOnePlusUpdate:I = 0x5

.field static final TRANSACTION_setKeyFunction:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.oos.onepluspods.service.aidl.IOnePlusPodDevice"

    invoke-virtual {p0, p0, v0}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.oos.onepluspods.service.aidl.IOnePlusPodDevice"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    return-object v1

    :cond_1
    new-instance v1, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;
    .locals 1

    sget-object v0, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice$Stub$Proxy;->sDefaultImpl:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;)Z
    .locals 1

    sget-object v0, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice$Stub$Proxy;->sDefaultImpl:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice$Stub$Proxy;->sDefaultImpl:Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice;

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

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.oos.onepluspods.service.aidl.IOnePlusPodDevice"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice$Stub;->getBattaryInfo(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice$Stub;->setIOnePlusUpdate(Lcom/oos/onepluspods/service/aidl/IOnePlusUpdate;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice$Stub;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice$Stub;->getKeyFunction(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v3, v4}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice$Stub;->setKeyFunction(IILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oos/onepluspods/service/aidl/IOnePlusPodDevice$Stub;->isOnePlusPods(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
