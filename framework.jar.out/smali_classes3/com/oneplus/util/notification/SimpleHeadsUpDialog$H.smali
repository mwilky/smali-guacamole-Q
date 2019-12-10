.class final Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;
.super Landroid/os/Handler;
.source "SimpleHeadsUpDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/util/notification/SimpleHeadsUpDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final HIDE:I = 0x2

.field private static final HIDE_ALL:I = 0x4

.field private static final REMOVE_WINDOW:I = 0x3

.field private static final SHOW:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/oneplus/util/notification/SimpleHeadsUpDialog;


# direct methods
.method public constructor <init>(Lcom/oneplus/util/notification/SimpleHeadsUpDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;->this$0:Lcom/oneplus/util/notification/SimpleHeadsUpDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/util/notification/SimpleHeadsUpDialog;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;->this$0:Lcom/oneplus/util/notification/SimpleHeadsUpDialog;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;->this$0:Lcom/oneplus/util/notification/SimpleHeadsUpDialog;

    invoke-virtual {v0}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->hide()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;->this$0:Lcom/oneplus/util/notification/SimpleHeadsUpDialog;

    invoke-static {v0}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->access$600(Lcom/oneplus/util/notification/SimpleHeadsUpDialog;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;->this$0:Lcom/oneplus/util/notification/SimpleHeadsUpDialog;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-static {v0, v1}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->access$500(Lcom/oneplus/util/notification/SimpleHeadsUpDialog;Landroid/view/View;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/oneplus/util/notification/SimpleHeadsUpDialog$H;->this$0:Lcom/oneplus/util/notification/SimpleHeadsUpDialog;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;

    invoke-static {v0, v1}, Lcom/oneplus/util/notification/SimpleHeadsUpDialog;->access$400(Lcom/oneplus/util/notification/SimpleHeadsUpDialog;Lcom/oneplus/util/notification/SimpleHeadsUpController$Entry;)V

    nop

    :goto_0
    return-void
.end method
