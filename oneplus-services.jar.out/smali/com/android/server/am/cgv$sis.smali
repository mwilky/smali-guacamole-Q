.class Lcom/android/server/am/cgv$sis;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/cgv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "sis"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/cgv;


# direct methods
.method public constructor <init>(Lcom/android/server/am/cgv;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/cgv$sis;->this$0:Lcom/android/server/am/cgv;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/cgv$sis;->this$0:Lcom/android/server/am/cgv;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lcom/android/server/am/cgv;->cno(Lcom/android/server/am/cgv;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/cgv$sis;->this$0:Lcom/android/server/am/cgv;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v2}, Lcom/android/server/am/cgv;->kth(Lcom/android/server/am/cgv;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/cgv$sis;->this$0:Lcom/android/server/am/cgv;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/server/am/cgv;->zta(Lcom/android/server/am/cgv;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x8

    const/4 v6, 0x4

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/cgv$sis;->this$0:Lcom/android/server/am/cgv;

    invoke-static {p0}, Lcom/android/server/am/cgv;->ugm(Lcom/android/server/am/cgv;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MSG_GT_OPT_APPLIST_CHANGE e:"

    goto/16 :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/android/server/am/cgv$sis;->this$0:Lcom/android/server/am/cgv;

    invoke-static {p1, v0}, Lcom/android/server/am/cgv;->bio(Lcom/android/server/am/cgv;I)Z

    move-result p1

    const/16 v1, 0xd

    if-nez p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "GeneralThread------MSG_GT_FOREGROUND_SWITCH_PROTECT end, uid:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not exist, return"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/cgv;->access$3600()Landroid/os/Handler;

    move-result-object p0

    invoke-static {v0, v1}, Lcom/android/server/am/cgv;->access$3500(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/cgv$sis;->this$0:Lcom/android/server/am/cgv;

    invoke-static {p0, v0}, Lcom/android/server/am/cgv;->zta(Lcom/android/server/am/cgv;I)Lcom/android/server/am/cgv$bio;

    move-result-object v2

    monitor-enter v2

    :try_start_1
    invoke-static {}, Lcom/android/server/am/cgv;->access$3600()Landroid/os/Handler;

    move-result-object p0

    invoke-static {v0, v1}, Lcom/android/server/am/cgv;->access$3500(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "GeneralThread------MSG_GT_FOREGROUND_SWITCH_PROTECT end uid:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " there is also the same uid message behind, return"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "event removeForegroundSwitchProtect uid:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    invoke-static {v2}, Lcom/android/server/am/cgv$bio;->tsu(Lcom/android/server/am/cgv$bio;)V

    monitor-exit v2

    goto/16 :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_2

    instance-of v2, p1, Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :cond_2
    const-string p1, "writePidToTasksFile"

    invoke-static {v4, v5, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/cgv$sis;->this$0:Lcom/android/server/am/cgv;

    invoke-static {p0, v0, v1, v3}, Lcom/android/server/am/cgv;->zta(Lcom/android/server/am/cgv;IIZ)V

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_1

    :pswitch_3
    iget-object p0, p0, Lcom/android/server/am/cgv$sis;->this$0:Lcom/android/server/am/cgv;

    invoke-static {p0, v0}, Lcom/android/server/am/cgv;->gck(Lcom/android/server/am/cgv;I)V

    goto/16 :goto_1

    :pswitch_4
    invoke-static {}, Lcom/android/server/am/cgv;->access$3600()Landroid/os/Handler;

    move-result-object p1

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/android/server/am/cgv;->access$3500(II)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/am/cgv$sis;->this$0:Lcom/android/server/am/cgv;

    invoke-static {p0, v0, v2}, Lcom/android/server/am/cgv;->zta(Lcom/android/server/am/cgv;ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    iget-object p0, p0, Lcom/android/server/am/cgv$sis;->this$0:Lcom/android/server/am/cgv;

    invoke-static {p0, v0, p1}, Lcom/android/server/am/cgv;->you(Lcom/android/server/am/cgv;II)V

    goto/16 :goto_1

    :pswitch_6
    iget-object p0, p0, Lcom/android/server/am/cgv$sis;->this$0:Lcom/android/server/am/cgv;

    invoke-static {p0, v0}, Lcom/android/server/am/cgv;->wtn(Lcom/android/server/am/cgv;I)V

    goto/16 :goto_1

    :pswitch_7
    :try_start_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/util/HashSet;

    if-eqz v1, :cond_3

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/util/HashSet;

    :cond_3
    iget-object p0, p0, Lcom/android/server/am/cgv$sis;->this$0:Lcom/android/server/am/cgv;

    invoke-static {p0, v0}, Lcom/android/server/am/cgv;->zta(Lcom/android/server/am/cgv;Ljava/util/HashSet;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MSG_GT_IMPORTANT_CHANGE e:"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OPBF"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :pswitch_8
    iget-object p0, p0, Lcom/android/server/am/cgv$sis;->this$0:Lcom/android/server/am/cgv;

    invoke-static {p0}, Lcom/android/server/am/cgv;->oif(Lcom/android/server/am/cgv;)V

    goto/16 :goto_1

    :pswitch_9
    iget-object p0, p0, Lcom/android/server/am/cgv$sis;->this$0:Lcom/android/server/am/cgv;

    invoke-static {p0, v0}, Lcom/android/server/am/cgv;->igw(Lcom/android/server/am/cgv;I)V

    goto/16 :goto_1

    :pswitch_a
    iget-object p0, p0, Lcom/android/server/am/cgv$sis;->this$0:Lcom/android/server/am/cgv;

    invoke-static {p0}, Lcom/android/server/am/cgv;->sis(Lcom/android/server/am/cgv;)V

    goto/16 :goto_1

    :pswitch_b
    iget-object p0, p0, Lcom/android/server/am/cgv$sis;->this$0:Lcom/android/server/am/cgv;

    invoke-static {p0}, Lcom/android/server/am/cgv;->tsu(Lcom/android/server/am/cgv;)V

    goto/16 :goto_1

    :pswitch_c
    invoke-static {}, Lcom/android/server/am/cgv;->access$3400()Z

    move-result p1

    if-nez p1, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "GeneralThread------MSG_GT_DELAY_FREEZE end, uid:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " |sEnable:false , return"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/android/server/am/cgv$sis;->this$0:Lcom/android/server/am/cgv;

    invoke-static {p1, v0}, Lcom/android/server/am/cgv;->bio(Lcom/android/server/am/cgv;I)Z

    move-result p1

    const/4 v1, 0x2

    if-nez p1, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "GeneralThread------MSG_GT_DELAY_FREEZE end, uid:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not exist, return"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/cgv;->access$3600()Landroid/os/Handler;

    move-result-object p0

    invoke-static {v0, v1}, Lcom/android/server/am/cgv;->access$3500(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/android/server/am/cgv$sis;->this$0:Lcom/android/server/am/cgv;

    invoke-static {p1, v0}, Lcom/android/server/am/cgv;->zta(Lcom/android/server/am/cgv;I)Lcom/android/server/am/cgv$bio;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object v3, p0, Lcom/android/server/am/cgv$sis;->this$0:Lcom/android/server/am/cgv;

    const/4 v7, 0x1

    invoke-static {v3, v0, v7}, Lcom/android/server/am/cgv;->sis(Lcom/android/server/am/cgv;IZ)V

    iget-object v3, p0, Lcom/android/server/am/cgv$sis;->this$0:Lcom/android/server/am/cgv;

    invoke-static {v3, v0, v7}, Lcom/android/server/am/cgv;->you(Lcom/android/server/am/cgv;IZ)V

    monitor-enter p1

    :try_start_3
    invoke-static {}, Lcom/android/server/am/cgv;->access$3600()Landroid/os/Handler;

    move-result-object v3

    invoke-static {v0, v1}, Lcom/android/server/am/cgv;->access$3500(II)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeneralThread------MSG_GT_DELAY_FREEZE end uid:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " there is also the same uid message behind, return"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lcom/android/server/am/cgv;->sis(ILjava/lang/String;)V

    monitor-exit p1

    return-void

    :cond_6
    const-string v0, "handleDelayFreeze"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/cgv$sis;->this$0:Lcom/android/server/am/cgv;

    invoke-static {p0, p1, v2}, Lcom/android/server/am/cgv;->zta(Lcom/android/server/am/cgv;Lcom/android/server/am/cgv$bio;Ljava/lang/String;)V

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit p1

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :pswitch_d
    iget-object p1, p0, Lcom/android/server/am/cgv$sis;->this$0:Lcom/android/server/am/cgv;

    invoke-static {p1}, Lcom/android/server/am/cgv;->qbh(Lcom/android/server/am/cgv;)V

    new-instance p1, Lcom/oneplus/config/ConfigGrabber;

    iget-object v0, p0, Lcom/android/server/am/cgv$sis;->this$0:Lcom/android/server/am/cgv;

    invoke-static {v0}, Lcom/android/server/am/cgv;->cno(Lcom/android/server/am/cgv;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "ProcessFreezer"

    invoke-direct {p1, v0, v1}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/cgv$sis;->this$0:Lcom/android/server/am/cgv;

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/am/cgv;->zta(Lcom/android/server/am/cgv;Lorg/json/JSONArray;)V

    iget-object p1, p0, Lcom/android/server/am/cgv$sis;->this$0:Lcom/android/server/am/cgv;

    invoke-static {p1}, Lcom/android/server/am/cgv;->oif(Lcom/android/server/am/cgv;)V

    iget-object p1, p0, Lcom/android/server/am/cgv$sis;->this$0:Lcom/android/server/am/cgv;

    invoke-static {p1}, Lcom/android/server/am/cgv;->gck(Lcom/android/server/am/cgv;)V

    iget-object p1, p0, Lcom/android/server/am/cgv$sis;->this$0:Lcom/android/server/am/cgv;

    invoke-static {p1}, Lcom/android/server/am/cgv;->wtn(Lcom/android/server/am/cgv;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "oneplus_opbf_switch"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/cgv$sis;->this$0:Lcom/android/server/am/cgv;

    invoke-static {v1}, Lcom/android/server/am/cgv;->bvj(Lcom/android/server/am/cgv;)Lcom/android/server/am/cgv$rtg;

    move-result-object v1

    invoke-virtual {p1, v0, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p0, p0, Lcom/android/server/am/cgv$sis;->this$0:Lcom/android/server/am/cgv;

    invoke-static {p0}, Lcom/android/server/am/cgv;->ibl(Lcom/android/server/am/cgv;)Lcom/oneplus/config/ConfigObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/config/ConfigObserver;->register()V

    :cond_7
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
