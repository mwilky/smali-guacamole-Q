.class Lcom/android/server/am/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/r;->oc()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/r;


# direct methods
.method constructor <init>(Lcom/android/server/am/r;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/n;->this$0:Lcom/android/server/am/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/n;->this$0:Lcom/android/server/am/r;

    invoke-static {v0}, Lcom/android/server/am/r;->sis(Lcom/android/server/am/r;)V

    iget-object p0, p0, Lcom/android/server/am/n;->this$0:Lcom/android/server/am/r;

    invoke-static {p0}, Lcom/android/server/am/r;->tsu(Lcom/android/server/am/r;)V

    return-void
.end method
