.class Landroid/os/OPDiagnoseManager$RefreshTask;
.super Ljava/util/TimerTask;
.source "OPDiagnoseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/OPDiagnoseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RefreshTask"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/OPDiagnoseManager;


# direct methods
.method constructor <init>(Landroid/os/OPDiagnoseManager;)V
    .locals 0

    iput-object p1, p0, Landroid/os/OPDiagnoseManager$RefreshTask;->this$0:Landroid/os/OPDiagnoseManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/os/OPDiagnoseManager$RefreshTask;->this$0:Landroid/os/OPDiagnoseManager;

    invoke-static {v0}, Landroid/os/OPDiagnoseManager;->access$100(Landroid/os/OPDiagnoseManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/OPDiagnoseManager;->getImei1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/OPDiagnoseManager;->access$002(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Landroid/os/OPDiagnoseManager;->access$000()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/OPDiagnoseManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "***************"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-static {}, Landroid/os/OPDiagnoseManager;->access$200()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/OPDiagnoseManager;->access$202(Ljava/util/Timer;)Ljava/util/Timer;

    invoke-static {}, Landroid/os/OPDiagnoseManager;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OPDiagnoseManager"

    const-string/jumbo v1, "retry finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    iget-object v0, p0, Landroid/os/OPDiagnoseManager$RefreshTask;->this$0:Landroid/os/OPDiagnoseManager;

    invoke-static {v0}, Landroid/os/OPDiagnoseManager;->access$400(Landroid/os/OPDiagnoseManager;)V

    :cond_1
    return-void
.end method
