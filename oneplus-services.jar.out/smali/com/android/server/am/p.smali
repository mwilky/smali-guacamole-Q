.class Lcom/android/server/am/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/t;->oc()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/t;


# direct methods
.method constructor <init>(Lcom/android/server/am/t;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/p;->this$0:Lcom/android/server/am/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/p;->this$0:Lcom/android/server/am/t;

    invoke-static {v0}, Lcom/android/server/am/t;->sis(Lcom/android/server/am/t;)V

    iget-object p0, p0, Lcom/android/server/am/p;->this$0:Lcom/android/server/am/t;

    invoke-static {p0}, Lcom/android/server/am/t;->tsu(Lcom/android/server/am/t;)V

    return-void
.end method
