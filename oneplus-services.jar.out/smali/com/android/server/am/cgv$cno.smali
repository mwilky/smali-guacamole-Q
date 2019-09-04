.class Lcom/android/server/am/cgv$cno;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/cgv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "cno"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/cgv;


# direct methods
.method public constructor <init>(Lcom/android/server/am/cgv;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/cgv$cno;->this$0:Lcom/android/server/am/cgv;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p0, p1, Landroid/os/Message;->what:I

    if-eqz p0, :cond_9

    const/16 v0, 0x2328

    if-eq p0, v0, :cond_8

    const/16 v0, 0x238c

    if-eq p0, v0, :cond_7

    const/16 v0, 0x23f0

    if-eq p0, v0, :cond_6

    const/16 v0, 0x2422

    if-eq p0, v0, :cond_5

    const/16 v0, 0x2454

    if-eq p0, v0, :cond_4

    const/16 v0, 0x24b8

    if-eq p0, v0, :cond_3

    const/16 v0, 0x251c

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2580

    if-eq p0, v0, :cond_1

    const/16 v0, 0x25e4

    if-eq p0, v0, :cond_0

    goto :goto_1

    :cond_0
    iget p0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    const-string v0, "NOTIFY_CHANGE_TIMEOUT"

    goto :goto_0

    :cond_1
    iget p0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    const-string v0, "ATTACH_APPLICATION_LOCKED_TIMEOUT"

    goto :goto_0

    :cond_2
    iget p0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    const-string v0, "BIND_SERVICE_LOCKED_TIMEOUT"

    goto :goto_0

    :cond_3
    iget p0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    const-string v0, "DISPATCH_RESIZED_TIMEOUT"

    goto :goto_0

    :cond_4
    iget p0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    const-string v0, "DISPATCH_APP_VISIBILITY_TIMEOUT"

    goto :goto_0

    :cond_5
    iget p0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    const-string v0, "DISPLAY_EVENT_LOCAL_TIMEOUT"

    goto :goto_0

    :cond_6
    iget p0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    const-string v0, "DISPLAY_EVENT_TIMEOUT"

    goto :goto_0

    :cond_7
    iget p0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    const-string v0, "INPUT_DEVICES_CHANGE_TIMEOUT"

    goto :goto_0

    :cond_8
    iget p0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    const-string v0, "PUBLISH_SERVICE_TIMEOUT"

    :goto_0
    invoke-static {p0, p1, v0}, Lcom/android/server/am/cgv;->zta(IILjava/lang/String;)V

    goto :goto_1

    :cond_9
    iget p0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, p1}, Landroid/os/Process;->killProcessGroup(II)I

    :goto_1
    return-void
.end method
