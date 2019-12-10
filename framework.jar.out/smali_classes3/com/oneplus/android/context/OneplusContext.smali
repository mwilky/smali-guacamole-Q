.class public final Lcom/oneplus/android/context/OneplusContext;
.super Ljava/lang/Object;
.source "OneplusContext.java"


# static fields
.field private static mContext:Lcom/oneplus/android/context/IOneplusContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/android/context/OneplusContext;->mContext:Lcom/oneplus/android/context/IOneplusContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final attach(Lcom/oneplus/android/context/IOneplusContext;)V
    .locals 0

    sput-object p0, Lcom/oneplus/android/context/OneplusContext;->mContext:Lcom/oneplus/android/context/IOneplusContext;

    return-void
.end method

.method public static final getInstance()Lcom/oneplus/android/context/IOneplusContext;
    .locals 1

    sget-object v0, Lcom/oneplus/android/context/OneplusContext;->mContext:Lcom/oneplus/android/context/IOneplusContext;

    return-object v0
.end method

.method public static final queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/oneplus/android/context/OneplusContext;->mContext:Lcom/oneplus/android/context/IOneplusContext;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0, p0}, Lcom/oneplus/android/context/IOneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
