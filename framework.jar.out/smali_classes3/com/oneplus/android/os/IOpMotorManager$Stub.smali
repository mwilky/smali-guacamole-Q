.class public abstract Lcom/oneplus/android/os/IOpMotorManager$Stub;
.super Landroid/os/Binder;
.source "IOpMotorManager.java"

# interfaces
.implements Lcom/oneplus/android/os/IOpMotorManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/os/IOpMotorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/os/IOpMotorManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.oneplus.android.os.IOpMotorManager"

.field static final TRANSACTION_downMotorByPrivacyApp:I = 0x4

.field static final TRANSACTION_downMotorBySystemApp:I = 0x2

.field static final TRANSACTION_getMotorStateBySystemApp:I = 0x1

.field static final TRANSACTION_registerMotorStateChangedCallback:I = 0x5

.field static final TRANSACTION_unregisterMotorStateChangedCallback:I = 0x6

.field static final TRANSACTION_upMotorBySystemApp:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.oneplus.android.os.IOpMotorManager"

    invoke-virtual {p0, p0, v0}, Lcom/oneplus/android/os/IOpMotorManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oneplus/android/os/IOpMotorManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.oneplus.android.os.IOpMotorManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oneplus/android/os/IOpMotorManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/oneplus/android/os/IOpMotorManager;

    return-object v1

    :cond_1
    new-instance v1, Lcom/oneplus/android/os/IOpMotorManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oneplus/android/os/IOpMotorManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/oneplus/android/os/IOpMotorManager;
    .locals 1

    sget-object v0, Lcom/oneplus/android/os/IOpMotorManager$Stub$Proxy;->sDefaultImpl:Lcom/oneplus/android/os/IOpMotorManager;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "unregisterMotorStateChangedCallback"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "registerMotorStateChangedCallback"

    return-object v0

    :pswitch_2
    const-string v0, "downMotorByPrivacyApp"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "upMotorBySystemApp"

    return-object v0

    :pswitch_4
    const-string v0, "downMotorBySystemApp"

    return-object v0

    :pswitch_5
    const-string v0, "getMotorStateBySystemApp"

    return-object v0

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

.method public static setDefaultImpl(Lcom/oneplus/android/os/IOpMotorManager;)Z
    .locals 1

    sget-object v0, Lcom/oneplus/android/os/IOpMotorManager$Stub$Proxy;->sDefaultImpl:Lcom/oneplus/android/os/IOpMotorManager;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/oneplus/android/os/IOpMotorManager$Stub$Proxy;->sDefaultImpl:Lcom/oneplus/android/os/IOpMotorManager;

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

    invoke-static {p1}, Lcom/oneplus/android/os/IOpMotorManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "com.oneplus.android.os.IOpMotorManager"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/android/os/IOpMotorStateChangedCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/android/os/IOpMotorStateChangedCallback;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/android/os/IOpMotorManager$Stub;->unregisterMotorStateChangedCallback(Lcom/oneplus/android/os/IOpMotorStateChangedCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/android/os/IOpMotorStateChangedCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/android/os/IOpMotorStateChangedCallback;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/android/os/IOpMotorManager$Stub;->registerMotorStateChangedCallback(Lcom/oneplus/android/os/IOpMotorStateChangedCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p0, v1, v3, v4}, Lcom/oneplus/android/os/IOpMotorManager$Stub;->downMotorByPrivacyApp(Ljava/lang/String;ILandroid/os/IBinder;)I

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/oneplus/android/os/IOpMotorManager$Stub;->upMotorBySystemApp(Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/oneplus/android/os/IOpMotorManager$Stub;->downMotorBySystemApp(Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/android/os/IOpMotorManager$Stub;->getMotorStateBySystemApp()I

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

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
