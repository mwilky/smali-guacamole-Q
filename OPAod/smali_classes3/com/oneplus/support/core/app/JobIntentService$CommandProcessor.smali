.class final Lcom/oneplus/support/core/app/JobIntentService$CommandProcessor;
.super Landroid/os/AsyncTask;
.source "JobIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/core/app/JobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CommandProcessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/support/core/app/JobIntentService;


# direct methods
.method constructor <init>(Lcom/oneplus/support/core/app/JobIntentService;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/support/core/app/JobIntentService$CommandProcessor;->this$0:Lcom/oneplus/support/core/app/JobIntentService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/app/JobIntentService$CommandProcessor;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    :goto_0
    iget-object v0, p0, Lcom/oneplus/support/core/app/JobIntentService$CommandProcessor;->this$0:Lcom/oneplus/support/core/app/JobIntentService;

    invoke-virtual {v0}, Lcom/oneplus/support/core/app/JobIntentService;->dequeueWork()Lcom/oneplus/support/core/app/JobIntentService$GenericWorkItem;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/support/core/app/JobIntentService$CommandProcessor;->this$0:Lcom/oneplus/support/core/app/JobIntentService;

    invoke-interface {v1}, Lcom/oneplus/support/core/app/JobIntentService$GenericWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oneplus/support/core/app/JobIntentService;->onHandleWork(Landroid/content/Intent;)V

    invoke-interface {v1}, Lcom/oneplus/support/core/app/JobIntentService$GenericWorkItem;->complete()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/app/JobIntentService$CommandProcessor;->onCancelled(Ljava/lang/Void;)V

    return-void
.end method

.method protected onCancelled(Ljava/lang/Void;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/core/app/JobIntentService$CommandProcessor;->this$0:Lcom/oneplus/support/core/app/JobIntentService;

    invoke-virtual {v0}, Lcom/oneplus/support/core/app/JobIntentService;->processorFinished()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oneplus/support/core/app/JobIntentService$CommandProcessor;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/core/app/JobIntentService$CommandProcessor;->this$0:Lcom/oneplus/support/core/app/JobIntentService;

    invoke-virtual {v0}, Lcom/oneplus/support/core/app/JobIntentService;->processorFinished()V

    return-void
.end method
