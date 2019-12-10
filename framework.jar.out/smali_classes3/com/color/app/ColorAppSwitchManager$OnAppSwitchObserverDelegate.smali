.class Lcom/color/app/ColorAppSwitchManager$OnAppSwitchObserverDelegate;
.super Lcom/android/server/wm/IOPAppSwitchObserver$Stub;
.source "ColorAppSwitchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/app/ColorAppSwitchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnAppSwitchObserverDelegate"
.end annotation


# instance fields
.field private final mObserver:Lcom/color/app/ColorAppSwitchManager$OnAppSwitchObserver;

.field final synthetic this$0:Lcom/color/app/ColorAppSwitchManager;


# direct methods
.method public constructor <init>(Lcom/color/app/ColorAppSwitchManager;Lcom/color/app/ColorAppSwitchManager$OnAppSwitchObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/color/app/ColorAppSwitchManager$OnAppSwitchObserverDelegate;->this$0:Lcom/color/app/ColorAppSwitchManager;

    invoke-direct {p0}, Lcom/android/server/wm/IOPAppSwitchObserver$Stub;-><init>()V

    iput-object p2, p0, Lcom/color/app/ColorAppSwitchManager$OnAppSwitchObserverDelegate;->mObserver:Lcom/color/app/ColorAppSwitchManager$OnAppSwitchObserver;

    return-void
.end method


# virtual methods
.method public onActivityEnter(Lcom/color/app/ColorAppEnterInfo;)V
    .locals 2

    invoke-static {}, Lcom/color/app/ColorAppSwitchManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityEnter info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorAppSwitchManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/color/app/ColorAppSwitchManager$OnAppSwitchObserverDelegate;->mObserver:Lcom/color/app/ColorAppSwitchManager$OnAppSwitchObserver;

    invoke-interface {v0, p1}, Lcom/color/app/ColorAppSwitchManager$OnAppSwitchObserver;->onActivityEnter(Lcom/color/app/ColorAppEnterInfo;)V

    return-void
.end method

.method public onActivityExit(Lcom/color/app/ColorAppExitInfo;)V
    .locals 2

    invoke-static {}, Lcom/color/app/ColorAppSwitchManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityExit info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorAppSwitchManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/color/app/ColorAppSwitchManager$OnAppSwitchObserverDelegate;->mObserver:Lcom/color/app/ColorAppSwitchManager$OnAppSwitchObserver;

    invoke-interface {v0, p1}, Lcom/color/app/ColorAppSwitchManager$OnAppSwitchObserver;->onActivityExit(Lcom/color/app/ColorAppExitInfo;)V

    return-void
.end method

.method public onAppEnter(Lcom/color/app/ColorAppEnterInfo;)V
    .locals 2

    invoke-static {}, Lcom/color/app/ColorAppSwitchManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAppEnter info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorAppSwitchManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/color/app/ColorAppSwitchManager$OnAppSwitchObserverDelegate;->mObserver:Lcom/color/app/ColorAppSwitchManager$OnAppSwitchObserver;

    invoke-interface {v0, p1}, Lcom/color/app/ColorAppSwitchManager$OnAppSwitchObserver;->onAppEnter(Lcom/color/app/ColorAppEnterInfo;)V

    return-void
.end method

.method public onAppExit(Lcom/color/app/ColorAppExitInfo;)V
    .locals 2

    invoke-static {}, Lcom/color/app/ColorAppSwitchManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAppExit info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorAppSwitchManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/color/app/ColorAppSwitchManager$OnAppSwitchObserverDelegate;->mObserver:Lcom/color/app/ColorAppSwitchManager$OnAppSwitchObserver;

    invoke-interface {v0, p1}, Lcom/color/app/ColorAppSwitchManager$OnAppSwitchObserver;->onAppExit(Lcom/color/app/ColorAppExitInfo;)V

    return-void
.end method
