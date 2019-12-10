.class Lcom/oneplus/sarah/SarahClient$6;
.super Ljava/lang/Object;
.source "SarahClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/sarah/SarahClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/sarah/SarahClient;


# direct methods
.method constructor <init>(Lcom/oneplus/sarah/SarahClient;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/sarah/SarahClient$6;->this$0:Lcom/oneplus/sarah/SarahClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private cleanup()V
    .locals 2

    const-string v0, "SarahClient"

    const-string v1, "cleanup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/sarah/SarahClient$6;->this$0:Lcom/oneplus/sarah/SarahClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/sarah/SarahClient;->access$402(Lcom/oneplus/sarah/SarahClient;Z)Z

    iget-object v0, p0, Lcom/oneplus/sarah/SarahClient$6;->this$0:Lcom/oneplus/sarah/SarahClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/sarah/SarahClient;->access$302(Lcom/oneplus/sarah/SarahClient;Lcom/oneplus/sarah/ISarahManager;)Lcom/oneplus/sarah/ISarahManager;

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindingDied:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SarahClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/sarah/SarahClient$6;->cleanup()V

    iget-object v0, p0, Lcom/oneplus/sarah/SarahClient$6;->this$0:Lcom/oneplus/sarah/SarahClient;

    invoke-static {v0}, Lcom/oneplus/sarah/SarahClient;->access$500(Lcom/oneplus/sarah/SarahClient;)I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    const-string/jumbo v0, "try to re-bind"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/sarah/SarahClient$6;->this$0:Lcom/oneplus/sarah/SarahClient;

    invoke-static {v0}, Lcom/oneplus/sarah/SarahClient;->access$600(Lcom/oneplus/sarah/SarahClient;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e9

    iget-object v2, p0, Lcom/oneplus/sarah/SarahClient$6;->this$0:Lcom/oneplus/sarah/SarahClient;

    invoke-static {v2}, Lcom/oneplus/sarah/SarahClient;->access$500(Lcom/oneplus/sarah/SarahClient;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x7d0

    add-int/lit16 v2, v2, 0xbb8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SarahClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/sarah/SarahClient$6;->this$0:Lcom/oneplus/sarah/SarahClient;

    invoke-static {p2}, Lcom/oneplus/sarah/ISarahManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/sarah/ISarahManager;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/sarah/SarahClient;->access$302(Lcom/oneplus/sarah/SarahClient;Lcom/oneplus/sarah/ISarahManager;)Lcom/oneplus/sarah/ISarahManager;

    iget-object v0, p0, Lcom/oneplus/sarah/SarahClient$6;->this$0:Lcom/oneplus/sarah/SarahClient;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/oneplus/sarah/SarahClient;->access$402(Lcom/oneplus/sarah/SarahClient;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected: Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SarahClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/sarah/SarahClient$6;->cleanup()V

    return-void
.end method
