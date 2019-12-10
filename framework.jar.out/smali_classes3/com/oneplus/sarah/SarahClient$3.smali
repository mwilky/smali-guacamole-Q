.class Lcom/oneplus/sarah/SarahClient$3;
.super Ljava/lang/Object;
.source "SarahClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/sarah/SarahClient;->notifyAodOnReason(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/sarah/SarahClient;

.field final synthetic val$reason:F


# direct methods
.method constructor <init>(Lcom/oneplus/sarah/SarahClient;F)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/sarah/SarahClient$3;->this$0:Lcom/oneplus/sarah/SarahClient;

    iput p2, p0, Lcom/oneplus/sarah/SarahClient$3;->val$reason:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/sarah/SarahClient$3;->this$0:Lcom/oneplus/sarah/SarahClient;

    invoke-static {v0}, Lcom/oneplus/sarah/SarahClient;->access$100(Lcom/oneplus/sarah/SarahClient;)V

    iget-object v0, p0, Lcom/oneplus/sarah/SarahClient$3;->this$0:Lcom/oneplus/sarah/SarahClient;

    invoke-static {v0}, Lcom/oneplus/sarah/SarahClient;->access$200(Lcom/oneplus/sarah/SarahClient;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/sarah/SarahClient$3;->this$0:Lcom/oneplus/sarah/SarahClient;

    invoke-static {v0}, Lcom/oneplus/sarah/SarahClient;->access$300(Lcom/oneplus/sarah/SarahClient;)Lcom/oneplus/sarah/ISarahManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/sarah/SarahClient$3;->this$0:Lcom/oneplus/sarah/SarahClient;

    invoke-static {v0}, Lcom/oneplus/sarah/SarahClient;->access$300(Lcom/oneplus/sarah/SarahClient;)Lcom/oneplus/sarah/ISarahManager;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/sarah/SarahClient$3;->val$reason:F

    invoke-interface {v0, v1}, Lcom/oneplus/sarah/ISarahManager;->notifyAodOnReason(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got remote exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SarahClient"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
