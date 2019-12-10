.class final Landroid/app/LoadedApk$ReceiverDispatcher$Args;
.super Landroid/content/BroadcastReceiver$PendingResult;
.source "LoadedApk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk$ReceiverDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Args"
.end annotation


# instance fields
.field private mCurIntent:Landroid/content/Intent;

.field private mDispatched:Z

.field private final mOrdered:Z

.field private mRunCalled:Z

.field final synthetic this$0:Landroid/app/LoadedApk$ReceiverDispatcher;


# direct methods
.method public constructor <init>(Landroid/app/LoadedApk$ReceiverDispatcher;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 12

    move-object v10, p0

    move-object v11, p1

    iput-object v11, v10, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    nop

    iget-boolean v0, v11, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    move v4, v0

    iget-object v0, v11, Landroid/app/LoadedApk$ReceiverDispatcher;->mIIntentReceiver:Landroid/content/IIntentReceiver$Stub;

    invoke-virtual {v0}, Landroid/content/IIntentReceiver$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v9

    move-object v0, p0

    move v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Landroid/content/BroadcastReceiver$PendingResult;-><init>(ILjava/lang/String;Landroid/os/Bundle;IZZLandroid/os/IBinder;II)V

    move-object v0, p2

    iput-object v0, v10, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    move/from16 v1, p6

    iput-boolean v1, v10, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mOrdered:Z

    return-void
.end method


# virtual methods
.method public final getRunnable()Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Landroid/app/-$$Lambda$LoadedApk$ReceiverDispatcher$Args$_BumDX2UKsnxLVrE6UJsJZkotuA;

    invoke-direct {v0, p0}, Landroid/app/-$$Lambda$LoadedApk$ReceiverDispatcher$Args$_BumDX2UKsnxLVrE6UJsJZkotuA;-><init>(Landroid/app/LoadedApk$ReceiverDispatcher$Args;)V

    return-object v0
.end method

.method public synthetic lambda$getRunnable$0$LoadedApk$ReceiverDispatcher$Args()V
    .locals 15

    const-string v0, " in "

    iget-object v1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v1, v1, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-boolean v2, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mOrdered:Z

    sget-boolean v3, Landroid/app/ActivityThread;->DEBUG_BROADCAST:Z

    const-string v4, "ActivityThread"

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    const/4 v5, -0x1

    const-string/jumbo v6, "seq"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dispatching broadcast "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " seq="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v6, v6, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mRegistered="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-boolean v6, v6, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mOrderedHint="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v5, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    const-string v6, "LoadedApk"

    if-nez v5, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Null intent being dispatched, mDispatched="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mDispatched:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mRunCalled:Z

    if-eqz v8, :cond_1

    const-string v8, ", run() has already been called"

    goto :goto_0

    :cond_1
    const-string v8, ""

    :goto_0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mDispatched:Z

    iput-boolean v7, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mRunCalled:Z

    if-eqz v1, :cond_a

    if-eqz v5, :cond_a

    iget-object v7, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-boolean v7, v7, Landroid/app/LoadedApk$ReceiverDispatcher;->mForgotten:Z

    if-eqz v7, :cond_3

    goto/16 :goto_2

    :cond_3
    const-wide/16 v7, 0x40

    const-string v9, "broadcastReceiveReg"

    invoke-static {v7, v8, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v9, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v9, v9, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {v5}, Landroid/content/Intent;->prepareToEnterProcess()V

    invoke-virtual {p0, v9}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {v1, p0}, Landroid/content/BroadcastReceiver;->setPendingResult(Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sget-boolean v12, Landroid/app/ActivityThread;->DEBUG_ONEPLUS:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v13, " onReceive "

    if-eqz v12, :cond_4

    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " start"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v12, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v12, v12, Landroid/app/LoadedApk$ReceiverDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v12, v5}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    sget-boolean v12, Landroid/app/ActivityThread;->DEBUG_ONEPLUS:Z

    if-eqz v12, :cond_5

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v10

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, "ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    goto :goto_1

    :catch_0
    move-exception v6

    iget-object v9, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-boolean v9, v9, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    if-eqz v9, :cond_7

    if-eqz v2, :cond_7

    sget-boolean v9, Landroid/app/ActivityThread;->DEBUG_BROADCAST:Z

    if-eqz v9, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Finishing failed broadcast to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v10, v10, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {p0, v3}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->sendFinished(Landroid/app/IActivityManager;)V

    :cond_7
    iget-object v4, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v4, v4, Landroid/app/LoadedApk$ReceiverDispatcher;->mInstrumentation:Landroid/app/Instrumentation;

    if-eqz v4, :cond_9

    iget-object v4, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v4, v4, Landroid/app/LoadedApk$ReceiverDispatcher;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v9, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v9, v9, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v9, v6}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_1
    invoke-virtual {v1}, Landroid/content/BroadcastReceiver;->getPendingResult()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->finish()V

    :cond_8
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_9
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error receiving broadcast "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v0, v0, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_a
    :goto_2
    iget-object v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-boolean v0, v0, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    if-eqz v0, :cond_c

    if-eqz v2, :cond_c

    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_BROADCAST:Z

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Finishing null broadcast to "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$0:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v6, v6, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-virtual {p0, v3}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->sendFinished(Landroid/app/IActivityManager;)V

    :cond_c
    return-void
.end method
