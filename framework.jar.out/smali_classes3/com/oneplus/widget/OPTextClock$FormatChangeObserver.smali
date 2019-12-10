.class Lcom/oneplus/widget/OPTextClock$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "OPTextClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/widget/OPTextClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/widget/OPTextClock;


# direct methods
.method public constructor <init>(Lcom/oneplus/widget/OPTextClock;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/widget/OPTextClock$FormatChangeObserver;->this$0:Lcom/oneplus/widget/OPTextClock;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/widget/OPTextClock$FormatChangeObserver;->this$0:Lcom/oneplus/widget/OPTextClock;

    invoke-static {v0}, Lcom/oneplus/widget/OPTextClock;->access$000(Lcom/oneplus/widget/OPTextClock;)V

    iget-object v0, p0, Lcom/oneplus/widget/OPTextClock$FormatChangeObserver;->this$0:Lcom/oneplus/widget/OPTextClock;

    invoke-static {v0}, Lcom/oneplus/widget/OPTextClock;->access$100(Lcom/oneplus/widget/OPTextClock;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/widget/OPTextClock$FormatChangeObserver;->this$0:Lcom/oneplus/widget/OPTextClock;

    invoke-static {v0}, Lcom/oneplus/widget/OPTextClock;->access$000(Lcom/oneplus/widget/OPTextClock;)V

    iget-object v0, p0, Lcom/oneplus/widget/OPTextClock$FormatChangeObserver;->this$0:Lcom/oneplus/widget/OPTextClock;

    invoke-static {v0}, Lcom/oneplus/widget/OPTextClock;->access$100(Lcom/oneplus/widget/OPTextClock;)V

    return-void
.end method
