.class Lcom/oneplus/screenshot/TakeScreenshotService$1;
.super Landroid/os/Handler;
.source "TakeScreenshotService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/TakeScreenshotService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/TakeScreenshotService;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/TakeScreenshotService;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/TakeScreenshotService$1;->this$0:Lcom/oneplus/screenshot/TakeScreenshotService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "Longshot.TakeScreenshotService"

    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    const-string v0, "longshotStart"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v3, "focusWindow"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/oneplus/screenshot/longshot/util/Configs;->mTopFocusWindow:Ljava/lang/String;

    const-string v3, "longshot"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    xor-int/2addr v3, v2

    sput-boolean v3, Lcom/oneplus/screenshot/longshot/util/Configs;->mNoFooter:Z

    const-string v3, "offset"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/oneplus/screenshot/longshot/util/Configs;->mHeaderOffset:I

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    new-instance v3, Lcom/oneplus/screenshot/TakeScreenshotService$1$1;

    invoke-direct {v3, p0, v0}, Lcom/oneplus/screenshot/TakeScreenshotService$1$1;-><init>(Lcom/oneplus/screenshot/TakeScreenshotService$1;Landroid/os/Messenger;)V

    iget-object v4, p0, Lcom/oneplus/screenshot/TakeScreenshotService$1;->this$0:Lcom/oneplus/screenshot/TakeScreenshotService;

    const-class v5, Landroid/os/UserManager;

    invoke-virtual {v4, v5}, Lcom/oneplus/screenshot/TakeScreenshotService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v2, "Skipping screenshot because storage is locked!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/oneplus/screenshot/TakeScreenshotService$1;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    invoke-static {}, Lcom/oneplus/screenshot/TakeScreenshotService;->access$000()Lcom/oneplus/screenshot/GlobalScreenshot;

    move-result-object v4

    if-nez v4, :cond_3

    new-instance v4, Lcom/oneplus/screenshot/GlobalScreenshot;

    iget-object v5, p0, Lcom/oneplus/screenshot/TakeScreenshotService$1;->this$0:Lcom/oneplus/screenshot/TakeScreenshotService;

    invoke-direct {v4, v5}, Lcom/oneplus/screenshot/GlobalScreenshot;-><init>(Landroid/content/Context;)V

    invoke-static {v4}, Lcom/oneplus/screenshot/TakeScreenshotService;->access$002(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/GlobalScreenshot;

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/oneplus/screenshot/TakeScreenshotService;->access$000()Lcom/oneplus/screenshot/GlobalScreenshot;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/screenshot/GlobalScreenshot;->updateLayout()V

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {}, Lcom/oneplus/screenshot/TakeScreenshotService;->access$000()Lcom/oneplus/screenshot/GlobalScreenshot;

    sget-wide v6, Lcom/oneplus/screenshot/GlobalScreenshot;->mLastImageTime:J

    cmp-long v6, v6, v4

    if-nez v6, :cond_4

    const-string v2, "Skipping screenshot because screenshot at the same time"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/oneplus/screenshot/TakeScreenshotService$1;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_4
    invoke-static {}, Lcom/oneplus/screenshot/TakeScreenshotService;->access$000()Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sput-wide v6, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotBeginTime:J

    sget-object v6, Lcom/oneplus/screenshot/longshot/util/Configs;->mTopFocusWindow:Ljava/lang/String;

    const-string v7, "com.oneplus.camera"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    sput-boolean v2, Lcom/oneplus/screenshot/longshot/util/Configs;->mNoFooter:Z

    :cond_5
    sget-boolean v6, Lcom/oneplus/screenshot/longshot/util/Configs;->mNoFooter:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/oneplus/screenshot/TakeScreenshotService$1;->this$0:Lcom/oneplus/screenshot/TakeScreenshotService;

    invoke-static {v6}, Lcom/oneplus/screenshot/util/Utils;->isKeyguardOn(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    sput-boolean v7, Lcom/oneplus/screenshot/longshot/util/Configs;->mNoFooter:Z

    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "takescreenshot for "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/oneplus/screenshot/longshot/util/Configs;->mTopFocusWindow:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", longshot: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v8, Lcom/oneplus/screenshot/longshot/util/Configs;->mNoFooter:Z

    xor-int/2addr v8, v2

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", offset:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lcom/oneplus/screenshot/longshot/util/Configs;->mHeaderOffset:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", time:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/screenshot/TakeScreenshotService;->access$000()Lcom/oneplus/screenshot/GlobalScreenshot;

    sget-wide v8, Lcom/oneplus/screenshot/GlobalScreenshot;->mScreenshotBeginTime:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Landroid/os/Message;->what:I

    if-eq v1, v2, :cond_a

    const/4 v6, 0x2

    if-eq v1, v6, :cond_7

    goto :goto_5

    :cond_7
    invoke-static {}, Lcom/oneplus/screenshot/TakeScreenshotService;->access$000()Lcom/oneplus/screenshot/GlobalScreenshot;

    move-result-object v1

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-lez v6, :cond_8

    move v6, v2

    goto :goto_1

    :cond_8
    move v6, v7

    :goto_1
    iget v8, p1, Landroid/os/Message;->arg2:I

    if-lez v8, :cond_9

    goto :goto_2

    :cond_9
    move v2, v7

    :goto_2
    invoke-virtual {v1, v3, v6, v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->takeScreenshotPartial(Ljava/lang/Runnable;ZZ)V

    goto :goto_5

    :cond_a
    invoke-static {}, Lcom/oneplus/screenshot/TakeScreenshotService;->access$000()Lcom/oneplus/screenshot/GlobalScreenshot;

    move-result-object v1

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-lez v6, :cond_b

    move v6, v2

    goto :goto_3

    :cond_b
    move v6, v7

    :goto_3
    iget v8, p1, Landroid/os/Message;->arg2:I

    if-lez v8, :cond_c

    goto :goto_4

    :cond_c
    move v2, v7

    :goto_4
    invoke-virtual {v1, v3, v6, v2}, Lcom/oneplus/screenshot/GlobalScreenshot;->takeScreenshot(Ljava/lang/Runnable;ZZ)V

    nop

    :goto_5
    return-void
.end method
