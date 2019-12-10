.class public interface abstract Landroid/app/IOPActivityManager;
.super Ljava/lang/Object;
.source "IOPActivityManager.java"


# static fields
.field public static final REGISTER_APP_SWITCH_OBSERVER:I = 0x86d8

.field public static final UNREGISTER_APP_SWITCH_OBSERVER:I = 0x86d9


# virtual methods
.method public abstract registerAppSwitchObserver(Ljava/lang/String;Lcom/android/server/wm/IOPAppSwitchObserver;Lcom/color/app/ColorAppSwitchConfig;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterAppSwitchObserver(Ljava/lang/String;Lcom/color/app/ColorAppSwitchConfig;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
