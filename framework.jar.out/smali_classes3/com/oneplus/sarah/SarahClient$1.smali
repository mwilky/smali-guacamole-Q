.class Lcom/oneplus/sarah/SarahClient$1;
.super Landroid/os/Handler;
.source "SarahClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/sarah/SarahClient;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/sarah/SarahClient;


# direct methods
.method constructor <init>(Lcom/oneplus/sarah/SarahClient;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/sarah/SarahClient$1;->this$0:Lcom/oneplus/sarah/SarahClient;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3e9

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/sarah/SarahClient$1;->this$0:Lcom/oneplus/sarah/SarahClient;

    invoke-static {v1}, Lcom/oneplus/sarah/SarahClient;->access$000(Lcom/oneplus/sarah/SarahClient;)V

    nop

    :goto_0
    return-void
.end method
