.class public interface abstract Lcom/color/app/ColorAppSwitchManager$OnAppSwitchObserver;
.super Ljava/lang/Object;
.source "ColorAppSwitchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/app/ColorAppSwitchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnAppSwitchObserver"
.end annotation


# virtual methods
.method public abstract onActivityEnter(Lcom/color/app/ColorAppEnterInfo;)V
.end method

.method public abstract onActivityExit(Lcom/color/app/ColorAppExitInfo;)V
.end method

.method public abstract onAppEnter(Lcom/color/app/ColorAppEnterInfo;)V
.end method

.method public abstract onAppExit(Lcom/color/app/ColorAppExitInfo;)V
.end method
