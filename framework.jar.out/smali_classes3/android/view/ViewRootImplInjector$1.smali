.class Landroid/view/ViewRootImplInjector$1;
.super Landroid/util/Singleton;
.source "ViewRootImplInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImplInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/oneplus/os/IOnePlusService;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/oneplus/os/IOnePlusService;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "opservice"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "ViewRootImplInjector"

    if-nez v1, :cond_0

    const-string v3, "can\'t get service binder: ViewRootImplInjector"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    invoke-static {v1}, Lcom/oneplus/os/IOnePlusService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/os/IOnePlusService;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v3, "can\'t get service interface: ViewRootImplInjector"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewRootImplInjector$1;->create()Lcom/oneplus/os/IOnePlusService;

    move-result-object v0

    return-object v0
.end method
