.class final Landroid/view/ViewRootImpl$NativePostImeInputStage;
.super Landroid/view/ViewRootImpl$AsyncInputStage;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/InputQueue$FinishedInputEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NativePostImeInputStage"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewRootImpl$NativePostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewRootImpl$AsyncInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onFinishedInputEvent(Ljava/lang/Object;Z)V
    .locals 2

    move-object v0, p1

    check-cast v0, Landroid/view/ViewRootImpl$QueuedInputEvent;

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewRootImpl$NativePostImeInputStage;->finish(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl$NativePostImeInputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    return-void
.end method

.method protected onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 6

    iget-object v0, p0, Landroid/view/ViewRootImpl$NativePostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v0, v0, Landroid/view/MotionEvent;

    const/4 v2, 0x3

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v0}, Landroid/view/InputEvent;->getSource()I

    move-result v0

    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_0

    iget-object v3, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v3, Landroid/view/MotionEvent;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/view/ViewRootImpl$NativePostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v4}, Landroid/view/ViewRootImpl;->access$1600(Landroid/view/ViewRootImpl;)Landroid/view/ViewRootImplInjector;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/view/ViewRootImplInjector;->processGameShakeMotionEvent(Landroid/view/MotionEvent;Z)Landroid/view/MotionEvent;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Landroid/view/ViewRootImpl$NativePostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    invoke-virtual {v5, v4, p1, v1, p0}, Landroid/view/InputQueue;->sendInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;ZLandroid/view/InputQueue$FinishedInputEventCallback;)V

    return v2

    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$NativePostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    iget-object v3, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v0, v3, p1, v1, p0}, Landroid/view/InputQueue;->sendInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;ZLandroid/view/InputQueue$FinishedInputEventCallback;)V

    return v2

    :cond_1
    return v1
.end method
