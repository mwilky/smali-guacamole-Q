.class Lcom/android/server/obl$you;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/obl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# static fields
.field public static final GET_ONLINECONFIG:I


# instance fields
.field final synthetic this$0:Lcom/android/server/obl;


# direct methods
.method constructor <init>(Lcom/android/server/obl;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/obl$you;->this$0:Lcom/android/server/obl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/oneplus/config/ConfigGrabber;

    iget-object v0, p0, Lcom/android/server/obl$you;->this$0:Lcom/android/server/obl;

    invoke-static {v0}, Lcom/android/server/obl;->zta(Lcom/android/server/obl;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "ProcessManagement"

    invoke-direct {p1, v0, v1}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/16 v1, 0x5e

    aput v1, p1, v0

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/obl$you;->this$0:Lcom/android/server/obl;

    invoke-static {p0}, Lcom/android/server/obl;->you(Lcom/android/server/obl;)Lcom/android/server/obl$zta;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/obl$zta;->grabOnlineConfig()V

    :cond_1
    :goto_0
    return-void
.end method