.class public Landroid/view/ViewInjector;
.super Ljava/lang/Object;
.source "ViewInjector.java"


# static fields
.field public static final LONGSHOTDE_TAG:Ljava/lang/String; = "Longshot.View"

.field private static LONGSHOT_DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/oneplus/injector/OpViewInjector$View;->isInjection:Z

    sput-boolean v0, Landroid/view/ViewInjector;->LONGSHOT_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static processActionDownLongshot(Landroid/content/Context;Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->isInScrollingContainer()Z

    move-result v0

    sget-boolean v1, Lcom/oneplus/injector/OpViewInjector$View;->isInjection:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->isScrollContainer()Z

    move-result v1

    const-string v2, "Longshot.View"

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v1, :cond_0

    new-array v1, v4, [I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    aget v3, v1, v3

    invoke-static {p0, v3}, Lcom/oneplus/injector/OpViewInjector$View;->setScrolledViewTop(Landroid/content/Context;I)V

    sget-boolean v3, Landroid/view/ViewInjector;->LONGSHOT_DEBUG:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "touch view isScrollContainer"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_2

    sget-boolean v1, Lcom/oneplus/injector/OpViewInjector$View;->isInjection:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    instance-of v5, v1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    move-object v5, v1

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v5

    if-eqz v5, :cond_1

    new-array v4, v4, [I

    move-object v5, v1

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    aget v3, v4, v3

    invoke-static {p0, v3}, Lcom/oneplus/injector/OpViewInjector$View;->setScrolledViewTop(Landroid/content/Context;I)V

    sget-boolean v3, Landroid/view/ViewInjector;->LONGSHOT_DEBUG:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "touch view isInScrollingContainer"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
