.class Landroid/view/ViewRootImplInjector$1;
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

    iput-object p1, p0, Landroid/view/ViewRootImplInjector$1;->this$0:Landroid/view/ViewRootImplInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroid/view/ViewRootImplInjector$1;->mView:Landroid/view/View;

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/oneplus/longshot/LongshotUtil;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Landroid/view/ViewRootImplInjector$1;->mView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {v1, v0, v2}, Lcom/oneplus/longshot/LongshotUtil;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    sput-object v1, Landroid/view/ViewRootImplInjector;->mLongshotUtil:Lcom/oneplus/longshot/LongshotUtil;

    sget-object v0, Landroid/view/ViewRootImplInjector;->mLongshotUtil:Lcom/oneplus/longshot/LongshotUtil;

    invoke-virtual {v0}, Lcom/oneplus/longshot/LongshotUtil;->longshotStart()V

    iget-object v0, p0, Landroid/view/ViewRootImplInjector$1;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/view/ViewRootImplInjector;->mLongshotUtil:Lcom/oneplus/longshot/LongshotUtil;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongshotUtil(Lcom/oneplus/longshot/LongshotUtil;)V

    :cond_0
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewRootImplInjector$1;->mView:Landroid/view/View;

    return-void
.end method
