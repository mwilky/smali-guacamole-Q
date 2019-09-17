.class Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$7;
.super Ljava/lang/Object;
.source "OpFingerprintDialogView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->handleHideFingerprintPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$7;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$7;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$3400(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$7;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$3200(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$7;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->access$3500(Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;)V

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView$7;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->updateDimViewVisibility(Z)V

    :goto_0
    return-void
.end method
