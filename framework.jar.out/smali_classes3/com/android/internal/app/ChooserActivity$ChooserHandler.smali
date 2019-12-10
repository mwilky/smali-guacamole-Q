.class Lcom/android/internal/app/ChooserActivity$ChooserHandler;
.super Landroid/os/Handler;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChooserHandler"
.end annotation


# static fields
.field private static final CHOOSER_TARGET_SERVICE_RESULT:I = 0x1

.field private static final CHOOSER_TARGET_SERVICE_WATCHDOG_MAX_TIMEOUT:I = 0x3

.field private static final CHOOSER_TARGET_SERVICE_WATCHDOG_MIN_TIMEOUT:I = 0x2

.field private static final LIST_VIEW_UPDATE_MESSAGE:I = 0x6

.field private static final SHORTCUT_MANAGER_SHARE_TARGET_RESULT:I = 0x4

.field private static final SHORTCUT_MANAGER_SHARE_TARGET_RESULT_COMPLETED:I = 0x5

.field private static final WATCHDOG_TIMEOUT_MAX_MILLIS:I = 0x2710

.field private static final WATCHDOG_TIMEOUT_MIN_MILLIS:I = 0xbb8


# instance fields
.field private mMinTimeoutPassed:Z

.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method private constructor <init>(Lcom/android/internal/app/ChooserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->mMinTimeoutPassed:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/app/ChooserActivity$ChooserHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->removeAllMessages()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/app/ChooserActivity$ChooserHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->restartServiceRequestTimer()V

    return-void
.end method

.method private maybeStopServiceRequestTimer()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->mMinTimeoutPassed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->access$600(Lcom/android/internal/app/ChooserActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/16 v1, 0x6b7

    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivity;->access$700(Lcom/android/internal/app/ChooserActivity;I)V

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->sendVoiceChoicesIfNeeded()V

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->access$800(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->completeServiceTargetLoading()V

    :cond_0
    return-void
.end method

.method private removeAllMessages()V
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->removeMessages(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->removeMessages(I)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->removeMessages(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->removeMessages(I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->removeMessages(I)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->removeMessages(I)V

    return-void
.end method

.method private restartServiceRequestTimer()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->mMinTimeoutPassed:Z

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->removeMessages(I)V

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->removeMessages(I)V

    invoke-static {}, Lcom/android/internal/app/ChooserActivity;->access$500()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ChooserActivity"

    const-string/jumbo v3, "queryTargets setting watchdog timer for 3000-10000ms"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->sendEmptyMessageDelayed(IJ)Z

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->access$800(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string v2, "ChooserActivity"

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_0
    invoke-static {}, Lcom/android/internal/app/ChooserActivity;->access$500()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "LIST_VIEW_UPDATE_MESSAGE; "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->access$800(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->access$900(Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/16 v1, 0x6b6

    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivity;->access$700(Lcom/android/internal/app/ChooserActivity;I)V

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->sendVoiceChoicesIfNeeded()V

    goto/16 :goto_0

    :pswitch_2
    invoke-static {}, Lcom/android/internal/app/ChooserActivity;->access$500()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SHORTCUT_MANAGER_SHARE_TARGET_RESULT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;

    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->resultTargets:Ljava/util/List;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->access$800(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->originalTarget:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iget-object v4, v0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->resultTargets:Ljava/util/List;

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->addServiceResults(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Ljava/util/List;Z)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->unbindRemainingServices()V

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->maybeStopServiceRequestTimer()V

    goto :goto_0

    :pswitch_4
    iput-boolean v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->mMinTimeoutPassed:Z

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->maybeStopServiceRequestTimer()V

    goto :goto_0

    :pswitch_5
    invoke-static {}, Lcom/android/internal/app/ChooserActivity;->access$500()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "CHOOSER_TARGET_SERVICE_RESULT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->access$600(Lcom/android/internal/app/ChooserActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v3, v0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->connection:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChooserTargetServiceConnection "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->connection:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " returned after being removed from active connections. Have you considered returning results faster?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v1, v0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->resultTargets:Ljava/util/List;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->access$800(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->originalTarget:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iget-object v3, v0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->resultTargets:Ljava/util/List;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->addServiceResults(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Ljava/util/List;Z)V

    :cond_5
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->connection:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ChooserActivity;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v1, v0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->connection:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->destroy()V

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->access$600(Lcom/android/internal/app/ChooserActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;->connection:Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ChooserHandler;->maybeStopServiceRequestTimer()V

    nop

    :cond_6
    :goto_0
    return-void

    :cond_7
    :goto_1
    return-void

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
