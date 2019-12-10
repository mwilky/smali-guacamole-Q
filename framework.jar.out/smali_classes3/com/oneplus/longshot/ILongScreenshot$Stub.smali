.class public abstract Lcom/oneplus/longshot/ILongScreenshot$Stub;
.super Landroid/os/Binder;
.source "ILongScreenshot.java"

# interfaces
.implements Lcom/oneplus/longshot/ILongScreenshot;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/longshot/ILongScreenshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/longshot/ILongScreenshot$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.oneplus.longshot.ILongScreenshot"

.field static final TRANSACTION_isHandleState:I = 0x4

.field static final TRANSACTION_isMoveState:I = 0x3

.field static final TRANSACTION_notifyLongshotScrollChanged:I = 0x8

.field static final TRANSACTION_notifyScroll:I = 0x2

.field static final TRANSACTION_notifyScrollViewSearchComplete:I = 0xa

.field static final TRANSACTION_notifyScrollViewTop:I = 0x6

.field static final TRANSACTION_notifyWindowLayerChange:I = 0x9

.field static final TRANSACTION_onUnscrollableView:I = 0x7

.field static final TRANSACTION_start:I = 0x1

.field static final TRANSACTION_stopLongshot:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.oneplus.longshot.ILongScreenshot"

    invoke-virtual {p0, p0, v0}, Lcom/oneplus/longshot/ILongScreenshot$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oneplus/longshot/ILongScreenshot;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.oneplus.longshot.ILongScreenshot"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oneplus/longshot/ILongScreenshot;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/oneplus/longshot/ILongScreenshot;

    return-object v1

    :cond_1
    new-instance v1, Lcom/oneplus/longshot/ILongScreenshot$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oneplus/longshot/ILongScreenshot$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/oneplus/longshot/ILongScreenshot;
    .locals 1

    sget-object v0, Lcom/oneplus/longshot/ILongScreenshot$Stub$Proxy;->sDefaultImpl:Lcom/oneplus/longshot/ILongScreenshot;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "notifyScrollViewSearchComplete"

    return-object v0

    :pswitch_1
    const-string v0, "notifyWindowLayerChange"

    return-object v0

    :pswitch_2
    const-string v0, "notifyLongshotScrollChanged"

    return-object v0

    :pswitch_3
    const-string v0, "onUnscrollableView"

    return-object v0

    :pswitch_4
    const-string v0, "notifyScrollViewTop"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "stopLongshot"

    return-object v0

    :pswitch_6
    const-string v0, "isHandleState"

    return-object v0

    :pswitch_7
    const-string v0, "isMoveState"

    return-object v0

    :pswitch_8
    const-string v0, "notifyScroll"

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "start"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static setDefaultImpl(Lcom/oneplus/longshot/ILongScreenshot;)Z
    .locals 1

    sget-object v0, Lcom/oneplus/longshot/ILongScreenshot$Stub$Proxy;->sDefaultImpl:Lcom/oneplus/longshot/ILongScreenshot;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/oneplus/longshot/ILongScreenshot$Stub$Proxy;->sDefaultImpl:Lcom/oneplus/longshot/ILongScreenshot;

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

    invoke-static {p1}, Lcom/oneplus/longshot/ILongScreenshot$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "com.oneplus.longshot.ILongScreenshot"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v1, v3, v4}, Lcom/oneplus/longshot/ILongScreenshot$Stub;->notifyScrollViewSearchComplete(III)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/longshot/ILongScreenshot$Stub;->notifyWindowLayerChange(Landroid/os/IBinder;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/oneplus/longshot/ILongScreenshot$Stub;->notifyLongshotScrollChanged(IIII)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/longshot/ILongScreenshot$Stub;->onUnscrollableView()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/longshot/ILongScreenshot$Stub;->notifyScrollViewTop(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oneplus/longshot/ILongScreenshot$Stub;->stopLongshot(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/longshot/ILongScreenshot$Stub;->isHandleState()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/longshot/ILongScreenshot$Stub;->isMoveState()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/oneplus/longshot/ILongScreenshot$Stub;->notifyScroll(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/longshot/ILongScreenshotCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/longshot/ILongScreenshotCallback;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/longshot/ILongScreenshot$Stub;->start(Lcom/oneplus/longshot/ILongScreenshotCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
