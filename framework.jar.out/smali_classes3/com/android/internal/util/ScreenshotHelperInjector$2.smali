.class Lcom/android/internal/util/ScreenshotHelperInjector$2;
.super Ljava/lang/Object;
.source "ScreenshotHelperInjector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/ScreenshotHelperInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/util/ScreenshotHelperInjector;


# direct methods
.method constructor <init>(Lcom/android/internal/util/ScreenshotHelperInjector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/util/ScreenshotHelperInjector$2;->this$0:Lcom/android/internal/util/ScreenshotHelperInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelperInjector$2;->this$0:Lcom/android/internal/util/ScreenshotHelperInjector;

    invoke-static {v0}, Lcom/android/internal/util/ScreenshotHelperInjector;->access$000(Lcom/android/internal/util/ScreenshotHelperInjector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelperInjector$2;->this$0:Lcom/android/internal/util/ScreenshotHelperInjector;

    invoke-static {v1}, Lcom/android/internal/util/ScreenshotHelperInjector;->access$100(Lcom/android/internal/util/ScreenshotHelperInjector;)Landroid/content/ServiceConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelperInjector$2;->this$0:Lcom/android/internal/util/ScreenshotHelperInjector;

    invoke-static {v1}, Lcom/android/internal/util/ScreenshotHelperInjector;->access$200(Lcom/android/internal/util/ScreenshotHelperInjector;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/util/ScreenshotHelperInjector$2;->this$0:Lcom/android/internal/util/ScreenshotHelperInjector;

    invoke-static {v2}, Lcom/android/internal/util/ScreenshotHelperInjector;->access$100(Lcom/android/internal/util/ScreenshotHelperInjector;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelperInjector$2;->this$0:Lcom/android/internal/util/ScreenshotHelperInjector;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/util/ScreenshotHelperInjector;->access$102(Lcom/android/internal/util/ScreenshotHelperInjector;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelperInjector$2;->this$0:Lcom/android/internal/util/ScreenshotHelperInjector;

    invoke-virtual {v1}, Lcom/android/internal/util/ScreenshotHelperInjector;->notifyScreenshotError()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
