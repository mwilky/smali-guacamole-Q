.class Lcom/android/internal/util/ScreenshotHelperInjector$1$1;
.super Landroid/os/Handler;
.source "ScreenshotHelperInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/util/ScreenshotHelperInjector$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/util/ScreenshotHelperInjector$1;

.field final synthetic val$myConn:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Lcom/android/internal/util/ScreenshotHelperInjector$1;Landroid/os/Looper;Landroid/content/ServiceConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/util/ScreenshotHelperInjector$1$1;->this$1:Lcom/android/internal/util/ScreenshotHelperInjector$1;

    iput-object p3, p0, Lcom/android/internal/util/ScreenshotHelperInjector$1$1;->val$myConn:Landroid/content/ServiceConnection;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OPLongshot handleMessage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelperInjector$1$1;->val$myConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPScreenshotHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelperInjector$1$1;->this$1:Lcom/android/internal/util/ScreenshotHelperInjector$1;

    iget-object v0, v0, Lcom/android/internal/util/ScreenshotHelperInjector$1;->this$0:Lcom/android/internal/util/ScreenshotHelperInjector;

    invoke-static {v0}, Lcom/android/internal/util/ScreenshotHelperInjector;->access$000(Lcom/android/internal/util/ScreenshotHelperInjector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, "OPScreenshotHelper"

    const-string/jumbo v2, "remove screenshot timeout"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelperInjector$1$1;->this$1:Lcom/android/internal/util/ScreenshotHelperInjector$1;

    iget-object v1, v1, Lcom/android/internal/util/ScreenshotHelperInjector$1;->val$handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/util/ScreenshotHelperInjector$1$1;->this$1:Lcom/android/internal/util/ScreenshotHelperInjector$1;

    iget-object v2, v2, Lcom/android/internal/util/ScreenshotHelperInjector$1;->this$0:Lcom/android/internal/util/ScreenshotHelperInjector;

    iget-object v2, v2, Lcom/android/internal/util/ScreenshotHelperInjector;->mLongshotTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelperInjector$1$1;->this$1:Lcom/android/internal/util/ScreenshotHelperInjector$1;

    iget-object v1, v1, Lcom/android/internal/util/ScreenshotHelperInjector$1;->this$0:Lcom/android/internal/util/ScreenshotHelperInjector;

    invoke-static {v1}, Lcom/android/internal/util/ScreenshotHelperInjector;->access$100(Lcom/android/internal/util/ScreenshotHelperInjector;)Landroid/content/ServiceConnection;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/util/ScreenshotHelperInjector$1$1;->val$myConn:Landroid/content/ServiceConnection;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelperInjector$1$1;->this$1:Lcom/android/internal/util/ScreenshotHelperInjector$1;

    iget-object v1, v1, Lcom/android/internal/util/ScreenshotHelperInjector$1;->this$0:Lcom/android/internal/util/ScreenshotHelperInjector;

    invoke-static {v1}, Lcom/android/internal/util/ScreenshotHelperInjector;->access$200(Lcom/android/internal/util/ScreenshotHelperInjector;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/util/ScreenshotHelperInjector$1$1;->this$1:Lcom/android/internal/util/ScreenshotHelperInjector$1;

    iget-object v2, v2, Lcom/android/internal/util/ScreenshotHelperInjector$1;->this$0:Lcom/android/internal/util/ScreenshotHelperInjector;

    invoke-static {v2}, Lcom/android/internal/util/ScreenshotHelperInjector;->access$100(Lcom/android/internal/util/ScreenshotHelperInjector;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelperInjector$1$1;->this$1:Lcom/android/internal/util/ScreenshotHelperInjector$1;

    iget-object v1, v1, Lcom/android/internal/util/ScreenshotHelperInjector$1;->this$0:Lcom/android/internal/util/ScreenshotHelperInjector;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/util/ScreenshotHelperInjector;->access$102(Lcom/android/internal/util/ScreenshotHelperInjector;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelperInjector$1$1;->this$1:Lcom/android/internal/util/ScreenshotHelperInjector$1;

    iget-object v1, v1, Lcom/android/internal/util/ScreenshotHelperInjector$1;->val$handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/util/ScreenshotHelperInjector$1$1;->this$1:Lcom/android/internal/util/ScreenshotHelperInjector$1;

    iget-object v2, v2, Lcom/android/internal/util/ScreenshotHelperInjector$1;->this$0:Lcom/android/internal/util/ScreenshotHelperInjector;

    iget-object v2, v2, Lcom/android/internal/util/ScreenshotHelperInjector;->mLongshotTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
