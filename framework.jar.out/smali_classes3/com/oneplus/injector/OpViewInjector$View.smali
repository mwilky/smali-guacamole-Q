.class public Lcom/oneplus/injector/OpViewInjector$View;
.super Ljava/lang/Object;
.source "OpViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/injector/OpViewInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/injector/OpViewInjector$View$Element;
    }
.end annotation


# static fields
.field private static final ELEMENTS_NOOVERSCROLL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/injector/OpViewInjector$View$Element;",
            ">;"
        }
    .end annotation
.end field

.field private static final ELEMENTS_NOSCROLL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/injector/OpViewInjector$View$Element;",
            ">;"
        }
    .end annotation
.end field

.field private static final ELEMENTS_OVERSCROLL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/injector/OpViewInjector$View$Element;",
            ">;"
        }
    .end annotation
.end field

.field private static final ELEMENTS_SCROLL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/injector/OpViewInjector$View$Element;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ViewInjector"

.field public static isInjection:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/injector/OpViewInjector$View;->ELEMENTS_SCROLL:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/injector/OpViewInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/injector/OpViewInjector$View;->ELEMENTS_OVERSCROLL:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/injector/OpViewInjector$View;->ELEMENTS_NOOVERSCROLL:Ljava/util/List;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/injector/OpViewInjector$View;->isInjection:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clearElements()V
    .locals 1

    sget-object v0, Lcom/oneplus/injector/OpViewInjector$View;->ELEMENTS_SCROLL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/oneplus/injector/OpViewInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/oneplus/injector/OpViewInjector$View;->ELEMENTS_OVERSCROLL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/oneplus/injector/OpViewInjector$View;->ELEMENTS_NOOVERSCROLL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private static isElement([Ljava/lang/StackTraceElement;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/StackTraceElement;",
            "Ljava/util/List<",
            "Lcom/oneplus/injector/OpViewInjector$View$Element;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/injector/OpViewInjector$View$Element;

    invoke-virtual {v2}, Lcom/oneplus/injector/OpViewInjector$View$Element;->getPosition()I

    move-result v3

    array-length v4, p0

    if-le v4, v3, :cond_0

    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/oneplus/injector/OpViewInjector$View$Element;->getNameString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public static onAwakenScrollBars(Landroid/content/Context;)Z
    .locals 6

    sget-boolean v0, Lcom/oneplus/injector/OpViewInjector$View;->isInjection:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    sget-object v2, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_LONGSCREENSHOT:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v2}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/longshot/IOpLongScreenshotManager;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/oneplus/longshot/IOpLongScreenshotManager;->isLongshotMoveState()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    sget-object v4, Lcom/oneplus/injector/OpViewInjector$View;->ELEMENTS_OVERSCROLL:Ljava/util/List;

    sget-object v5, Lcom/oneplus/injector/OpViewInjector$View$Element;->OVERSCROLL:Lcom/oneplus/injector/OpViewInjector$View$Element;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/oneplus/injector/OpViewInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v5, Lcom/oneplus/injector/OpViewInjector$View$Element;->MMAWAKEN12:Lcom/oneplus/injector/OpViewInjector$View$Element;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/oneplus/injector/OpViewInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v5, Lcom/oneplus/injector/OpViewInjector$View$Element;->MMAWAKEN14:Lcom/oneplus/injector/OpViewInjector$View$Element;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/oneplus/injector/OpViewInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v5, Lcom/oneplus/injector/OpViewInjector$View$Element;->MMAWAKEN15:Lcom/oneplus/injector/OpViewInjector$View$Element;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/oneplus/injector/OpViewInjector$View;->ELEMENTS_SCROLL:Ljava/util/List;

    sget-object v5, Lcom/oneplus/injector/OpViewInjector$View$Element;->QQSCROLL:Lcom/oneplus/injector/OpViewInjector$View$Element;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/oneplus/injector/OpViewInjector$View;->ELEMENTS_SCROLL:Ljava/util/List;

    sget-object v5, Lcom/oneplus/injector/OpViewInjector$View$Element;->SCROLL:Lcom/oneplus/injector/OpViewInjector$View$Element;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/oneplus/injector/OpViewInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/oneplus/injector/OpViewInjector$View;->isElement([Ljava/lang/StackTraceElement;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/oneplus/injector/OpViewInjector$View;->ELEMENTS_OVERSCROLL:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/oneplus/injector/OpViewInjector$View;->isElement([Ljava/lang/StackTraceElement;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v1, "ViewInjector"

    const-string v4, "onAwakenScrollBars:no more scroll down"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-interface {v2, v1}, Lcom/oneplus/longshot/IOpLongScreenshotManager;->notifyLongshotScroll(Z)V

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/oneplus/injector/OpViewInjector$View;->ELEMENTS_SCROLL:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/oneplus/injector/OpViewInjector$View;->isElement([Ljava/lang/StackTraceElement;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2, v1}, Lcom/oneplus/longshot/IOpLongScreenshotManager;->notifyLongshotScroll(Z)V

    :cond_3
    :goto_0
    invoke-static {}, Lcom/oneplus/injector/OpViewInjector$View;->clearElements()V

    :cond_4
    return v0
.end method

.method public static onOverScrolled(Landroid/content/Context;Z)V
    .locals 5

    sget-boolean v0, Lcom/oneplus/injector/OpViewInjector$View;->isInjection:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_LONGSCREENSHOT:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/longshot/IOpLongScreenshotManager;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/oneplus/longshot/IOpLongScreenshotManager;->isLongshotMoveState()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    sget-object v3, Lcom/oneplus/injector/OpViewInjector$View;->ELEMENTS_OVERSCROLL:Ljava/util/List;

    sget-object v4, Lcom/oneplus/injector/OpViewInjector$View$Element;->LISTOVERSCROLL:Lcom/oneplus/injector/OpViewInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/oneplus/injector/OpViewInjector$View;->ELEMENTS_NOOVERSCROLL:Ljava/util/List;

    sget-object v4, Lcom/oneplus/injector/OpViewInjector$View$Element;->WEBOVERSCROLL:Lcom/oneplus/injector/OpViewInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/oneplus/injector/OpViewInjector$View;->ELEMENTS_NOOVERSCROLL:Ljava/util/List;

    sget-object v4, Lcom/oneplus/injector/OpViewInjector$View$Element;->BROWSERSCROLL:Lcom/oneplus/injector/OpViewInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/oneplus/injector/OpViewInjector$View;->ELEMENTS_NOOVERSCROLL:Ljava/util/List;

    sget-object v4, Lcom/oneplus/injector/OpViewInjector$View$Element;->BROWSEROVERSCROLL:Lcom/oneplus/injector/OpViewInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/oneplus/injector/OpViewInjector$View;->ELEMENTS_NOOVERSCROLL:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/oneplus/injector/OpViewInjector$View;->isElement([Ljava/lang/StackTraceElement;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/oneplus/injector/OpViewInjector$View;->ELEMENTS_OVERSCROLL:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/oneplus/injector/OpViewInjector$View;->isElement([Ljava/lang/StackTraceElement;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "ViewInjector"

    const-string v4, "onOverScrolled:no more scroll down"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Lcom/oneplus/longshot/IOpLongScreenshotManager;->notifyLongshotScroll(Z)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/oneplus/longshot/IOpLongScreenshotManager;->notifyLongshotScroll(Z)V

    :goto_0
    invoke-static {}, Lcom/oneplus/injector/OpViewInjector$View;->clearElements()V

    :cond_3
    return-void
.end method

.method public static onScrollChanged(Landroid/content/Context;Z)V
    .locals 5

    sget-boolean v0, Lcom/oneplus/injector/OpViewInjector$View;->isInjection:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_LONGSCREENSHOT:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/longshot/IOpLongScreenshotManager;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/oneplus/longshot/IOpLongScreenshotManager;->isLongshotMoveState()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    sget-object v3, Lcom/oneplus/injector/OpViewInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v4, Lcom/oneplus/injector/OpViewInjector$View$Element;->MMCHANGE9:Lcom/oneplus/injector/OpViewInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/oneplus/injector/OpViewInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v4, Lcom/oneplus/injector/OpViewInjector$View$Element;->MMCHANGE12:Lcom/oneplus/injector/OpViewInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/oneplus/injector/OpViewInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v4, Lcom/oneplus/injector/OpViewInjector$View$Element;->MMCHANGE14:Lcom/oneplus/injector/OpViewInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/oneplus/injector/OpViewInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v4, Lcom/oneplus/injector/OpViewInjector$View$Element;->MMCHANGE15:Lcom/oneplus/injector/OpViewInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/oneplus/injector/OpViewInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v4, Lcom/oneplus/injector/OpViewInjector$View$Element;->CONTENTSCROLL:Lcom/oneplus/injector/OpViewInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/oneplus/injector/OpViewInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v4, Lcom/oneplus/injector/OpViewInjector$View$Element;->BROWSERSCROLL:Lcom/oneplus/injector/OpViewInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/oneplus/injector/OpViewInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v4, Lcom/oneplus/injector/OpViewInjector$View$Element;->QZONESCROLL:Lcom/oneplus/injector/OpViewInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/oneplus/injector/OpViewInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    sget-object v4, Lcom/oneplus/injector/OpViewInjector$View$Element;->WEBSCROLL:Lcom/oneplus/injector/OpViewInjector$View$Element;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/oneplus/injector/OpViewInjector$View;->ELEMENTS_NOSCROLL:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/oneplus/injector/OpViewInjector$View;->isElement([Ljava/lang/StackTraceElement;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const-string v3, "ViewInjector"

    const-string v4, "onScrollChanged:no more scroll down"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Lcom/oneplus/longshot/IOpLongScreenshotManager;->notifyLongshotScroll(Z)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/oneplus/longshot/IOpLongScreenshotManager;->notifyLongshotScroll(Z)V

    :goto_0
    invoke-static {}, Lcom/oneplus/injector/OpViewInjector$View;->clearElements()V

    :cond_3
    return-void
.end method

.method public static onUnscrollableView(Landroid/content/Context;)V
    .locals 1

    sget-boolean v0, Lcom/oneplus/injector/OpViewInjector$View;->isInjection:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_LONGSCREENSHOT:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/longshot/IOpLongScreenshotManager;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/oneplus/longshot/IOpLongScreenshotManager;->onUnscrollableView()V

    :cond_1
    return-void
.end method

.method public static setScrolledViewTop(Landroid/content/Context;I)V
    .locals 1

    sget-boolean v0, Lcom/oneplus/injector/OpViewInjector$View;->isInjection:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_LONGSCREENSHOT:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/longshot/IOpLongScreenshotManager;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/oneplus/longshot/IOpLongScreenshotManager;->notifyScrollViewTop(I)V

    :cond_1
    return-void
.end method
