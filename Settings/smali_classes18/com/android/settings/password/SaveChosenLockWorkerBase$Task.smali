.class Lcom/android/settings/password/SaveChosenLockWorkerBase$Task;
.super Landroid/os/AsyncTask;
.source "SaveChosenLockWorkerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/SaveChosenLockWorkerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/util/Pair<",
        "Ljava/lang/Boolean;",
        "Landroid/content/Intent;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/SaveChosenLockWorkerBase;


# direct methods
.method private constructor <init>(Lcom/android/settings/password/SaveChosenLockWorkerBase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase$Task;->this$0:Lcom/android/settings/password/SaveChosenLockWorkerBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/password/SaveChosenLockWorkerBase;Lcom/android/settings/password/SaveChosenLockWorkerBase$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/password/SaveChosenLockWorkerBase$Task;-><init>(Lcom/android/settings/password/SaveChosenLockWorkerBase;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase$Task;->this$0:Lcom/android/settings/password/SaveChosenLockWorkerBase;

    invoke-virtual {v0}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->saveAndVerifyInBackground()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/password/SaveChosenLockWorkerBase$Task;->doInBackground([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/util/Pair;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase$Task;->this$0:Lcom/android/settings/password/SaveChosenLockWorkerBase;

    invoke-virtual {v0}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120990

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase$Task;->this$0:Lcom/android/settings/password/SaveChosenLockWorkerBase;

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->finish(Landroid/content/Intent;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/android/settings/password/SaveChosenLockWorkerBase$Task;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method
