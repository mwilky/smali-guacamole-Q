.class Landroid/mtp/MtpDatabase$2;
.super Landroid/mtp/MtpStorageManager$MtpNotifier;
.source "MtpDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/mtp/MtpDatabase;-><init>(Landroid/content/Context;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/mtp/MtpDatabase;


# direct methods
.method constructor <init>(Landroid/mtp/MtpDatabase;)V
    .locals 0

    iput-object p1, p0, Landroid/mtp/MtpDatabase$2;->this$0:Landroid/mtp/MtpDatabase;

    invoke-direct {p0}, Landroid/mtp/MtpStorageManager$MtpNotifier;-><init>()V

    return-void
.end method


# virtual methods
.method public sendObjectAdded(I)V
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpDatabase$2;->this$0:Landroid/mtp/MtpDatabase;

    invoke-static {v0}, Landroid/mtp/MtpDatabase;->access$200(Landroid/mtp/MtpDatabase;)Landroid/mtp/MtpServer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/mtp/MtpDatabase$2;->this$0:Landroid/mtp/MtpDatabase;

    invoke-static {v0}, Landroid/mtp/MtpDatabase;->access$200(Landroid/mtp/MtpDatabase;)Landroid/mtp/MtpServer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/mtp/MtpServer;->sendObjectAdded(I)V

    :cond_0
    return-void
.end method

.method public sendObjectInfoChanged(I)V
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpDatabase$2;->this$0:Landroid/mtp/MtpDatabase;

    invoke-static {v0}, Landroid/mtp/MtpDatabase;->access$200(Landroid/mtp/MtpDatabase;)Landroid/mtp/MtpServer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/mtp/MtpDatabase$2;->this$0:Landroid/mtp/MtpDatabase;

    invoke-static {v0}, Landroid/mtp/MtpDatabase;->access$200(Landroid/mtp/MtpDatabase;)Landroid/mtp/MtpServer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/mtp/MtpServer;->sendObjectInfoChanged(I)V

    :cond_0
    return-void
.end method

.method public sendObjectRemoved(I)V
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpDatabase$2;->this$0:Landroid/mtp/MtpDatabase;

    invoke-static {v0}, Landroid/mtp/MtpDatabase;->access$200(Landroid/mtp/MtpDatabase;)Landroid/mtp/MtpServer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/mtp/MtpDatabase$2;->this$0:Landroid/mtp/MtpDatabase;

    invoke-static {v0}, Landroid/mtp/MtpDatabase;->access$200(Landroid/mtp/MtpDatabase;)Landroid/mtp/MtpServer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/mtp/MtpServer;->sendObjectRemoved(I)V

    :cond_0
    return-void
.end method

.method public sendObjectUpdated(I)V
    .locals 6

    iget-object v0, p0, Landroid/mtp/MtpDatabase$2;->this$0:Landroid/mtp/MtpDatabase;

    invoke-static {v0}, Landroid/mtp/MtpDatabase;->access$200(Landroid/mtp/MtpDatabase;)Landroid/mtp/MtpServer;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase$2;->this$0:Landroid/mtp/MtpDatabase;

    invoke-static {v0}, Landroid/mtp/MtpDatabase;->access$200(Landroid/mtp/MtpDatabase;)Landroid/mtp/MtpServer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "sendObjectUpdated"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Landroid/mtp/MtpDatabase$2;->this$0:Landroid/mtp/MtpDatabase;

    invoke-static {v1}, Landroid/mtp/MtpDatabase;->access$200(Landroid/mtp/MtpDatabase;)Landroid/mtp/MtpServer;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/mtp/MtpDatabase;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendObjectUpdated error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
