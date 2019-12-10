.class public interface abstract Lcom/oneplus/os/IOnePlusServiceManager;
.super Ljava/lang/Object;
.source "IOnePlusServiceManager.java"


# virtual methods
.method public abstract disableTheme(Ljava/lang/String;)V
.end method

.method public abstract enableTheme(Ljava/lang/String;)V
.end method

.method public abstract getAllAppControlModes(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/oneplus/appboot/AppControlMode;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAppControlMode(Ljava/lang/String;I)I
.end method

.method public abstract getAppControlState(I)I
.end method

.method public abstract getBgPowerHungryList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isInConfigList(ILjava/lang/String;)Z
.end method

.method public abstract isInSpecialTesting()Z
.end method

.method public abstract processDisableThemeCategory(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract processEnableThemeCategory(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract reportJank(Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract setAppControlMode(Ljava/lang/String;II)I
.end method

.method public abstract setAppControlState(II)I
.end method

.method public abstract stopBgPowerHungryApp(Ljava/lang/String;I)V
.end method
