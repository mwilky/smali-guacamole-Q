.class Lcom/android/server/biometrics/fingerprint/OpFingerprintService$1;
.super Landroid/database/ContentObserver;
.source "OpFingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/fingerprint/OpFingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/fingerprint/OpFingerprintService;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/fingerprint/OpFingerprintService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/OpFingerprintService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    const-string v0, "accessibility_display_grayscale_enabled"

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/OpFingerprintService;

    invoke-static {v2}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->access$100(Lcom/android/server/biometrics/fingerprint/OpFingerprintService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, -0x2

    invoke-static {v3, v0, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-static {v2, v0}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->access$002(Lcom/android/server/biometrics/fingerprint/OpFingerprintService;I)I

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/OpFingerprintService;

    invoke-static {v2}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->access$200(Lcom/android/server/biometrics/fingerprint/OpFingerprintService;)I

    move-result v2

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/OpFingerprintService;

    invoke-static {v2}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->access$100(Lcom/android/server/biometrics/fingerprint/OpFingerprintService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/OpFingerprintService;

    invoke-static {v4}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->access$300(Lcom/android/server/biometrics/fingerprint/OpFingerprintService;)I

    move-result v4

    invoke-static {v3, v0, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-static {v2, v0}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->access$002(Lcom/android/server/biometrics/fingerprint/OpFingerprintService;I)I

    :cond_1
    :goto_0
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GrayMode changed, self:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mode:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/OpFingerprintService;

    invoke-static {v3}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->access$000(Lcom/android/server/biometrics/fingerprint/OpFingerprintService;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", client:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/OpFingerprintService;

    invoke-static {v3}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->access$400(Lcom/android/server/biometrics/fingerprint/OpFingerprintService;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", temp:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/OpFingerprintService;

    invoke-static {v3}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->access$500(Lcom/android/server/biometrics/fingerprint/OpFingerprintService;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/OpFingerprintService;

    invoke-static {v4}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->access$600(Lcom/android/server/biometrics/fingerprint/OpFingerprintService;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v4

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/OpFingerprintService;

    invoke-static {v3}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->access$700(Lcom/android/server/biometrics/fingerprint/OpFingerprintService;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "OpFingerprintService"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/OpFingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->access$800(Lcom/android/server/biometrics/fingerprint/OpFingerprintService;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/OpFingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->access$000(Lcom/android/server/biometrics/fingerprint/OpFingerprintService;)I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/OpFingerprintService;

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->disableGrayMode(Z)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/OpFingerprintService;

    invoke-static {v0}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->access$000(Lcom/android/server/biometrics/fingerprint/OpFingerprintService;)I

    move-result v0

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/server/biometrics/fingerprint/OpFingerprintService$1;->this$0:Lcom/android/server/biometrics/fingerprint/OpFingerprintService;

    invoke-static {v0, v2}, Lcom/android/server/biometrics/fingerprint/OpFingerprintService;->access$502(Lcom/android/server/biometrics/fingerprint/OpFingerprintService;Z)Z

    :cond_5
    :goto_2
    return-void
.end method
