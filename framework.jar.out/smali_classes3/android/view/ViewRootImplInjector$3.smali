.class Landroid/view/ViewRootImplInjector$3;
.super Ljava/lang/Object;
.source "ViewRootImplInjector.java"

# interfaces
.implements Landroid/view/ViewRootImplInjector$LongshotRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImplInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mView:Landroid/view/View;

.field final synthetic this$0:Landroid/view/ViewRootImplInjector;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImplInjector;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewRootImplInjector$3;->this$0:Landroid/view/ViewRootImplInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Landroid/view/ViewRootImplInjector;->mLongshotUtil:Lcom/oneplus/longshot/LongshotUtil;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/view/ViewRootImplInjector;->mLongshotUtil:Lcom/oneplus/longshot/LongshotUtil;

    invoke-virtual {v0}, Lcom/oneplus/longshot/LongshotUtil;->longshotStop()V

    iget-object v0, p0, Landroid/view/ViewRootImplInjector$3;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongshotUtil(Lcom/oneplus/longshot/LongshotUtil;)V

    :cond_0
    sput-object v1, Landroid/view/ViewRootImplInjector;->mLongshotUtil:Lcom/oneplus/longshot/LongshotUtil;

    :cond_1
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewRootImplInjector$3;->mView:Landroid/view/View;

    return-void
.end method
