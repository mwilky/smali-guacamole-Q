.class Lcom/oneplus/android/wifi/OpWifiSar$4;
.super Landroid/os/Handler;
.source "OpWifiSar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/wifi/OpWifiSar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/wifi/OpWifiSar;


# direct methods
.method constructor <init>(Lcom/oneplus/android/wifi/OpWifiSar;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/wifi/OpWifiSar$4;->this$0:Lcom/oneplus/android/wifi/OpWifiSar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string v0, "OpWifiSar"

    const-string v1, "Not define message"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar$4;->this$0:Lcom/oneplus/android/wifi/OpWifiSar;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/android/wifi/OpWifiSar;->enableSarExt(ZZ)V

    nop

    :goto_0
    return-void
.end method
