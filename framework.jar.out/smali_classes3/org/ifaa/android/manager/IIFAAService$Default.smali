.class public Lorg/ifaa/android/manager/IIFAAService$Default;
.super Ljava/lang/Object;
.source "IIFAAService.java"

# interfaces
.implements Lorg/ifaa/android/manager/IIFAAService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ifaa/android/manager/IIFAAService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public processCmdV2([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
