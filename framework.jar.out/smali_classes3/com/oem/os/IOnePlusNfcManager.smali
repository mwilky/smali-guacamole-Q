.class public interface abstract Lcom/oem/os/IOnePlusNfcManager;
.super Ljava/lang/Object;
.source "IOnePlusNfcManager.java"


# virtual methods
.method public abstract applyConfig()Z
.end method

.method public abstract getDieId()Ljava/lang/String;
.end method

.method public abstract getSupportCardTypes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportNfcConfigs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setCardType(Ljava/lang/String;)V
.end method

.method public abstract setNfcConfig(Ljava/lang/String;)V
.end method

.method public abstract setSupportCardTypes(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
