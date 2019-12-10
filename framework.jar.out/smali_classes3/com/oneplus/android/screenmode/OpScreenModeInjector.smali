.class public Lcom/oneplus/android/screenmode/OpScreenModeInjector;
.super Ljava/lang/Object;
.source "OpScreenModeInjector.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "OpScreenModeInjector"

.field static mOpScreenModeManager:Lcom/oneplus/android/screenmode/IOpScreenModeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x75

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/android/screenmode/OpScreenModeInjector;->ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setRefreshRate(Landroid/os/IBinder;I)V
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/screenmode/OpScreenModeInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/oneplus/android/screenmode/OpScreenModeInjector;->mOpScreenModeManager:Lcom/oneplus/android/screenmode/IOpScreenModeManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_SCREENMODE_MANAGER:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/screenmode/IOpScreenModeManager;

    sput-object v0, Lcom/oneplus/android/screenmode/OpScreenModeInjector;->mOpScreenModeManager:Lcom/oneplus/android/screenmode/IOpScreenModeManager;

    :cond_1
    sget-object v0, Lcom/oneplus/android/screenmode/OpScreenModeInjector;->mOpScreenModeManager:Lcom/oneplus/android/screenmode/IOpScreenModeManager;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0, p1}, Lcom/oneplus/android/screenmode/IOpScreenModeManager;->setRefreshRate(Landroid/os/IBinder;I)V

    :cond_2
    return-void
.end method

.method public static setRefreshRate(Landroid/view/View;I)V
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/screenmode/OpScreenModeInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/oneplus/android/screenmode/OpScreenModeInjector;->mOpScreenModeManager:Lcom/oneplus/android/screenmode/IOpScreenModeManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_SCREENMODE_MANAGER:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/screenmode/IOpScreenModeManager;

    sput-object v0, Lcom/oneplus/android/screenmode/OpScreenModeInjector;->mOpScreenModeManager:Lcom/oneplus/android/screenmode/IOpScreenModeManager;

    :cond_1
    sget-object v0, Lcom/oneplus/android/screenmode/OpScreenModeInjector;->mOpScreenModeManager:Lcom/oneplus/android/screenmode/IOpScreenModeManager;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0, p1}, Lcom/oneplus/android/screenmode/IOpScreenModeManager;->setRefreshRate(Landroid/view/View;I)V

    :cond_2
    return-void
.end method
