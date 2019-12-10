.class Lcom/oneplus/android/wifi/OpWifiSar$3;
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

    iput-object p1, p0, Lcom/oneplus/android/wifi/OpWifiSar$3;->this$0:Lcom/oneplus/android/wifi/OpWifiSar;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar$3;->this$0:Lcom/oneplus/android/wifi/OpWifiSar;

    invoke-static {v0}, Lcom/oneplus/android/wifi/OpWifiSar;->access$000(Lcom/oneplus/android/wifi/OpWifiSar;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar$3;->this$0:Lcom/oneplus/android/wifi/OpWifiSar;

    invoke-static {v0}, Lcom/oneplus/android/wifi/OpWifiSar;->access$100(Lcom/oneplus/android/wifi/OpWifiSar;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar$3;->this$0:Lcom/oneplus/android/wifi/OpWifiSar;

    invoke-static {v0}, Lcom/oneplus/android/wifi/OpWifiSar;->access$200(Lcom/oneplus/android/wifi/OpWifiSar;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar$3;->this$0:Lcom/oneplus/android/wifi/OpWifiSar;

    invoke-static {v0}, Lcom/oneplus/android/wifi/OpWifiSar;->access$500(Lcom/oneplus/android/wifi/OpWifiSar;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar$3;->this$0:Lcom/oneplus/android/wifi/OpWifiSar;

    invoke-static {v0}, Lcom/oneplus/android/wifi/OpWifiSar;->access$400(Lcom/oneplus/android/wifi/OpWifiSar;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/wifi/OpWifiSar$3;->this$0:Lcom/oneplus/android/wifi/OpWifiSar;

    invoke-static {v0}, Lcom/oneplus/android/wifi/OpWifiSar;->access$300(Lcom/oneplus/android/wifi/OpWifiSar;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "wifi_sar_notify_band"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLteBand:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/android/wifi/OpWifiSar$3;->this$0:Lcom/oneplus/android/wifi/OpWifiSar;

    invoke-static {v3}, Lcom/oneplus/android/wifi/OpWifiSar;->access$600(Lcom/oneplus/android/wifi/OpWifiSar;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " curLteBand:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OpWifiSar"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oneplus/android/wifi/OpWifiSar$3;->this$0:Lcom/oneplus/android/wifi/OpWifiSar;

    invoke-static {v1}, Lcom/oneplus/android/wifi/OpWifiSar;->access$600(Lcom/oneplus/android/wifi/OpWifiSar;)I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/android/wifi/OpWifiSar$3;->this$0:Lcom/oneplus/android/wifi/OpWifiSar;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/android/wifi/OpWifiSar;->enableSarExt(ZZ)V

    :cond_1
    return-void
.end method
