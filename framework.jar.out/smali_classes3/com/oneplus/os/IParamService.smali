.class public interface abstract Lcom/oneplus/os/IParamService;
.super Ljava/lang/Object;
.source "IParamService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/os/IParamService$Stub;,
        Lcom/oneplus/os/IParamService$Default;
    }
.end annotation


# virtual methods
.method public abstract getParamIntSYNC(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
