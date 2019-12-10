.class public abstract Landroid/view/IOpWindowManager$Stub;
.super Landroid/os/Binder;
.source "IOpWindowManager.java"

# interfaces
.implements Landroid/view/IOpWindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IOpWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IOpWindowManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IOpWindowManager"

.field static final TRANSACTION_addAppLockerPassedPackage:I = 0x2

.field static final TRANSACTION_exitQuickReply:I = 0x4

.field static final TRANSACTION_getQuickReplyList:I = 0x3

.field static final TRANSACTION_isKeyguardDone:I = 0x5

.field static final TRANSACTION_needToAddNameForToast:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.view.IOpWindowManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/IOpWindowManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IOpWindowManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.view.IOpWindowManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IOpWindowManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/view/IOpWindowManager;

    return-object v1

    :cond_1
    new-instance v1, Landroid/view/IOpWindowManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IOpWindowManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/view/IOpWindowManager;
    .locals 1

    sget-object v0, Landroid/view/IOpWindowManager$Stub$Proxy;->sDefaultImpl:Landroid/view/IOpWindowManager;

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
    const-string v0, "isKeyguardDone"

    return-object v0

    :cond_1
    const-string v0, "exitQuickReply"

    return-object v0

    :cond_2
    const-string v0, "getQuickReplyList"

    return-object v0

    :cond_3
    const-string v0, "addAppLockerPassedPackage"

    return-object v0

    :cond_4
    const-string v0, "needToAddNameForToast"

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/view/IOpWindowManager;)Z
    .locals 1

    sget-object v0, Landroid/view/IOpWindowManager$Stub$Proxy;->sDefaultImpl:Landroid/view/IOpWindowManager;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Landroid/view/IOpWindowManager$Stub$Proxy;->sDefaultImpl:Landroid/view/IOpWindowManager;

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

    invoke-static {p1}, Landroid/view/IOpWindowManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.view.IOpWindowManager"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

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

    invoke-virtual {p0}, Landroid/view/IOpWindowManager$Stub;->isKeyguardDone()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/IOpWindowManager$Stub;->exitQuickReply()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/view/IOpWindowManager$Stub;->getQuickReplyList(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v1

    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/IOpWindowManager$Stub;->addAppLockerPassedPackage(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/IOpWindowManager$Stub;->needToAddNameForToast(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v1
.end method
