.class public Lcom/oneplus/display/OneplusColorDisplayInjector;
.super Ljava/lang/Object;
.source "OneplusColorDisplayInjector.java"


# static fields
.field private static final DEBUG:Z

.field private static final ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "OneplusColorDisplayInjector"

.field private static mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/display/OneplusColorDisplayInjector;->DEBUG:Z

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xdc

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/display/OneplusColorDisplayInjector;->ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setMediaCodecState(Z)V
    .locals 2

    sget-boolean v0, Lcom/oneplus/display/OneplusColorDisplayInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setMediaCodecState on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneplusColorDisplayInjector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/oneplus/display/OneplusColorDisplayInjector;->ENABLED:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/oneplus/display/OneplusColorDisplayInjector;->mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    if-nez v0, :cond_2

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_COLORDISPLAY_MANAGER:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/display/IOneplusColorDisplayManager;

    sput-object v0, Lcom/oneplus/display/OneplusColorDisplayInjector;->mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    :cond_2
    sget-object v0, Lcom/oneplus/display/OneplusColorDisplayInjector;->mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    if-eqz v0, :cond_3

    invoke-interface {v0, p0}, Lcom/oneplus/display/IOneplusColorDisplayManager;->setMediaCodecState(Z)V

    :cond_3
    return-void
.end method
