.class Lcom/oneplus/android/wifi/OpWifiSar$2;
.super Landroid/database/ContentObserver;
.source "OpWifiSar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/wifi/OpWifiSar;-><init>(Landroid/content/Context;Lcom/oneplus/android/wifi/IOpWifiSarCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/wifi/OpWifiSar;


# direct methods
.method constructor <init>(Lcom/oneplus/android/wifi/OpWifiSar;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/wifi/OpWifiSar$2;->this$0:Lcom/oneplus/android/wifi/OpWifiSar;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar$2;->this$0:Lcom/oneplus/android/wifi/OpWifiSar;

    invoke-static {v0}, Lcom/oneplus/android/wifi/OpWifiSar;->access$000(Lcom/oneplus/android/wifi/OpWifiSar;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar$2;->this$0:Lcom/oneplus/android/wifi/OpWifiSar;

    invoke-static {v0}, Lcom/oneplus/android/wifi/OpWifiSar;->access$100(Lcom/oneplus/android/wifi/OpWifiSar;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar$2;->this$0:Lcom/oneplus/android/wifi/OpWifiSar;

    nop

    invoke-static {v0}, Lcom/oneplus/android/wifi/OpWifiSar;->access$300(Lcom/oneplus/android/wifi/OpWifiSar;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "display_ctrl_psensor_positive"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-static {v0, v1}, Lcom/oneplus/android/wifi/OpWifiSar;->access$202(Lcom/oneplus/android/wifi/OpWifiSar;Z)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPSensorPositive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/android/wifi/OpWifiSar$2;->this$0:Lcom/oneplus/android/wifi/OpWifiSar;

    invoke-static {v1}, Lcom/oneplus/android/wifi/OpWifiSar;->access$200(Lcom/oneplus/android/wifi/OpWifiSar;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpWifiSar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar$2;->this$0:Lcom/oneplus/android/wifi/OpWifiSar;

    invoke-static {v0}, Lcom/oneplus/android/wifi/OpWifiSar;->access$200(Lcom/oneplus/android/wifi/OpWifiSar;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar$2;->this$0:Lcom/oneplus/android/wifi/OpWifiSar;

    invoke-static {v0}, Lcom/oneplus/android/wifi/OpWifiSar;->access$400(Lcom/oneplus/android/wifi/OpWifiSar;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar$2;->this$0:Lcom/oneplus/android/wifi/OpWifiSar;

    invoke-static {v0}, Lcom/oneplus/android/wifi/OpWifiSar;->access$400(Lcom/oneplus/android/wifi/OpWifiSar;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar$2;->this$0:Lcom/oneplus/android/wifi/OpWifiSar;

    invoke-virtual {v0, v2, v2}, Lcom/oneplus/android/wifi/OpWifiSar;->enableSarExt(ZZ)V

    :goto_1
    return-void

    :cond_3
    :goto_2
    return-void
.end method
