.class public abstract Landroid/secrecy/ISecrecyService$Stub;
.super Landroid/os/Binder;
.source "ISecrecyService.java"

# interfaces
.implements Landroid/secrecy/ISecrecyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/secrecy/ISecrecyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/secrecy/ISecrecyService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.secrecy.ISecrecyService"

.field static final TRANSACTION_getSecrecyKey:I = 0x2

.field static final TRANSACTION_getSecrecyState:I = 0x1

.field static final TRANSACTION_isInEncryptedAppList:I = 0x5

.field static final TRANSACTION_isSecrecySupport:I = 0x4

.field static final TRANSACTION_registerSecrecyServiceReceiver:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.secrecy.ISecrecyService"

    invoke-virtual {p0, p0, v0}, Landroid/secrecy/ISecrecyService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/secrecy/ISecrecyService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.secrecy.ISecrecyService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/secrecy/ISecrecyService;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/secrecy/ISecrecyService;

    return-object v1

    :cond_1
    new-instance v1, Landroid/secrecy/ISecrecyService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/secrecy/ISecrecyService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/secrecy/ISecrecyService;
    .locals 1

    sget-object v0, Landroid/secrecy/ISecrecyService$Stub$Proxy;->sDefaultImpl:Landroid/secrecy/ISecrecyService;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string/jumbo v0, "isInEncryptedAppList"

    return-object v0

    :cond_1
    const-string/jumbo v0, "isSecrecySupport"

    return-object v0

    :cond_2
    const-string/jumbo v0, "registerSecrecyServiceReceiver"

    return-object v0

    :cond_3
    const-string/jumbo v0, "getSecrecyKey"

    return-object v0

    :cond_4
    const-string/jumbo v0, "getSecrecyState"

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/secrecy/ISecrecyService;)Z
    .locals 1

    sget-object v0, Landroid/secrecy/ISecrecyService$Stub$Proxy;->sDefaultImpl:Landroid/secrecy/ISecrecyService;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Landroid/secrecy/ISecrecyService$Stub$Proxy;->sDefaultImpl:Landroid/secrecy/ISecrecyService;

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

    invoke-static {p1}, Landroid/secrecy/ISecrecyService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.secrecy.ISecrecyService"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_7

    const/4 v2, 0x2

    if-eq p1, v2, :cond_5

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    const/4 v2, 0x4

    if-eq p1, v2, :cond_3

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

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

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ActivityInfo;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/secrecy/ISecrecyService$Stub;->isInEncryptedAppList(Landroid/content/pm/ActivityInfo;Ljava/lang/String;II)Z

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/secrecy/ISecrecyService$Stub;->isSecrecySupport()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/secrecy/ISecrecyServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/secrecy/ISecrecyServiceReceiver;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/secrecy/ISecrecyService$Stub;->registerSecrecyServiceReceiver(Landroid/secrecy/ISecrecyServiceReceiver;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :cond_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-gez v2, :cond_6

    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    new-array v3, v2, [B

    :goto_1
    invoke-virtual {p0, v3}, Landroid/secrecy/ISecrecyService$Stub;->getSecrecyKey([B)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    return v1

    :cond_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/secrecy/ISecrecyService$Stub;->getSecrecyState(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v1
.end method
