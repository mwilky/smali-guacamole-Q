.class public Lorg/ifaa/android/manager/IFAAManagerFactory;
.super Ljava/lang/Object;
.source "IFAAManagerFactory.java"


# static fields
.field private static sFAAManager:Lorg/ifaa/android/manager/IFAAManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIFAAManager(Landroid/content/Context;I)Lorg/ifaa/android/manager/IFAAManager;
    .locals 1

    sget-object v0, Lorg/ifaa/android/manager/IFAAManagerFactory;->sFAAManager:Lorg/ifaa/android/manager/IFAAManager;

    if-nez v0, :cond_0

    new-instance v0, Lorg/ifaa/android/manager/OPIFAAManager;

    invoke-direct {v0, p0, p1}, Lorg/ifaa/android/manager/OPIFAAManager;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lorg/ifaa/android/manager/IFAAManagerFactory;->sFAAManager:Lorg/ifaa/android/manager/IFAAManager;

    :cond_0
    sget-object v0, Lorg/ifaa/android/manager/IFAAManagerFactory;->sFAAManager:Lorg/ifaa/android/manager/IFAAManager;

    return-object v0
.end method
