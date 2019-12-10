.class Lcom/oneplus/widget/OPTextClock$2;
.super Ljava/lang/Object;
.source "OPTextClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/widget/OPTextClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/widget/OPTextClock;


# direct methods
.method constructor <init>(Lcom/oneplus/widget/OPTextClock;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/widget/OPTextClock$2;->this$0:Lcom/oneplus/widget/OPTextClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/widget/OPTextClock$2;->this$0:Lcom/oneplus/widget/OPTextClock;

    invoke-static {v0}, Lcom/oneplus/widget/OPTextClock;->access$200(Lcom/oneplus/widget/OPTextClock;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/widget/OPTextClock$2;->this$0:Lcom/oneplus/widget/OPTextClock;

    invoke-static {v0}, Lcom/oneplus/widget/OPTextClock;->access$100(Lcom/oneplus/widget/OPTextClock;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    rem-long v4, v0, v2

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    iget-object v4, p0, Lcom/oneplus/widget/OPTextClock$2;->this$0:Lcom/oneplus/widget/OPTextClock;

    invoke-virtual {v4}, Lcom/oneplus/widget/OPTextClock;->getHandler()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/widget/OPTextClock$2;->this$0:Lcom/oneplus/widget/OPTextClock;

    invoke-static {v5}, Lcom/oneplus/widget/OPTextClock;->access$500(Lcom/oneplus/widget/OPTextClock;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method
