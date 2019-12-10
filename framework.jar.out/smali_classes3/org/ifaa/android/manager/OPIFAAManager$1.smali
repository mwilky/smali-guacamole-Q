.class Lorg/ifaa/android/manager/OPIFAAManager$1;
.super Ljava/lang/Object;
.source "OPIFAAManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ifaa/android/manager/OPIFAAManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ifaa/android/manager/OPIFAAManager;


# direct methods
.method constructor <init>(Lorg/ifaa/android/manager/OPIFAAManager;)V
    .locals 0

    iput-object p1, p0, Lorg/ifaa/android/manager/OPIFAAManager$1;->this$0:Lorg/ifaa/android/manager/OPIFAAManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lorg/ifaa/android/manager/OPIFAAManager$1;->this$0:Lorg/ifaa/android/manager/OPIFAAManager;

    invoke-static {p2}, Lorg/ifaa/android/manager/IIFAAService$Stub;->asInterface(Landroid/os/IBinder;)Lorg/ifaa/android/manager/IIFAAService;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/ifaa/android/manager/OPIFAAManager;->access$002(Lorg/ifaa/android/manager/OPIFAAManager;Lorg/ifaa/android/manager/IIFAAService;)Lorg/ifaa/android/manager/IIFAAService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IFAAService was bound successfully: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ifaa/android/manager/OPIFAAManager$1;->this$0:Lorg/ifaa/android/manager/OPIFAAManager;

    invoke-static {v1}, Lorg/ifaa/android/manager/OPIFAAManager;->access$000(Lorg/ifaa/android/manager/OPIFAAManager;)Lorg/ifaa/android/manager/IIFAAService;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPIFAAManager"

    invoke-static {v1, v0}, Lorg/ifaa/android/manager/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/ifaa/android/manager/OPIFAAManager$1;->this$0:Lorg/ifaa/android/manager/OPIFAAManager;

    invoke-static {v0}, Lorg/ifaa/android/manager/OPIFAAManager;->access$100(Lorg/ifaa/android/manager/OPIFAAManager;)Landroid/content/ServiceConnection;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lorg/ifaa/android/manager/OPIFAAManager$1;->this$0:Lorg/ifaa/android/manager/OPIFAAManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/ifaa/android/manager/OPIFAAManager;->access$002(Lorg/ifaa/android/manager/OPIFAAManager;Lorg/ifaa/android/manager/IIFAAService;)Lorg/ifaa/android/manager/IIFAAService;

    const-string v0, "OPIFAAManager"

    const-string v1, "IFAAService was unbound"

    invoke-static {v0, v1}, Lorg/ifaa/android/manager/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
