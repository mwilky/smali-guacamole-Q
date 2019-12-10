.class public abstract Lorg/ifaa/android/manager/IIFAAService$Stub;
.super Landroid/os/Binder;
.source "IIFAAService.java"

# interfaces
.implements Lorg/ifaa/android/manager/IIFAAService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ifaa/android/manager/IIFAAService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ifaa/android/manager/IIFAAService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.ifaa.android.manager.IIFAAService"

.field static final TRANSACTION_processCmdV2:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "org.ifaa.android.manager.IIFAAService"

    invoke-virtual {p0, p0, v0}, Lorg/ifaa/android/manager/IIFAAService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/ifaa/android/manager/IIFAAService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "org.ifaa.android.manager.IIFAAService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/ifaa/android/manager/IIFAAService;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lorg/ifaa/android/manager/IIFAAService;

    return-object v1

    :cond_1
    new-instance v1, Lorg/ifaa/android/manager/IIFAAService$Stub$Proxy;

    invoke-direct {v1, p0}, Lorg/ifaa/android/manager/IIFAAService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lorg/ifaa/android/manager/IIFAAService;
    .locals 1

    sget-object v0, Lorg/ifaa/android/manager/IIFAAService$Stub$Proxy;->sDefaultImpl:Lorg/ifaa/android/manager/IIFAAService;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string/jumbo v0, "processCmdV2"

    return-object v0
.end method

.method public static setDefaultImpl(Lorg/ifaa/android/manager/IIFAAService;)Z
    .locals 1

    sget-object v0, Lorg/ifaa/android/manager/IIFAAService$Stub$Proxy;->sDefaultImpl:Lorg/ifaa/android/manager/IIFAAService;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lorg/ifaa/android/manager/IIFAAService$Stub$Proxy;->sDefaultImpl:Lorg/ifaa/android/manager/IIFAAService;

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

    invoke-static {p1}, Lorg/ifaa/android/manager/IIFAAService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "org.ifaa.android.manager.IIFAAService"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/ifaa/android/manager/IIFAAService$Stub;->processCmdV2([B)[B

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    return v1
.end method
