.class final enum Lcom/oneplus/injector/OpViewInjector$View$Element;
.super Ljava/lang/Enum;
.source "OpViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/injector/OpViewInjector$View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Element"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oneplus/injector/OpViewInjector$View$Element;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/injector/OpViewInjector$View$Element;

.field public static final enum BROWSEROVERSCROLL:Lcom/oneplus/injector/OpViewInjector$View$Element;

.field public static final enum BROWSERSCROLL:Lcom/oneplus/injector/OpViewInjector$View$Element;

.field public static final enum CONTENTSCROLL:Lcom/oneplus/injector/OpViewInjector$View$Element;

.field public static final enum LISTOVERSCROLL:Lcom/oneplus/injector/OpViewInjector$View$Element;

.field public static final enum MMAWAKEN12:Lcom/oneplus/injector/OpViewInjector$View$Element;

.field public static final enum MMAWAKEN14:Lcom/oneplus/injector/OpViewInjector$View$Element;

.field public static final enum MMAWAKEN15:Lcom/oneplus/injector/OpViewInjector$View$Element;

.field public static final enum MMCHANGE12:Lcom/oneplus/injector/OpViewInjector$View$Element;

.field public static final enum MMCHANGE14:Lcom/oneplus/injector/OpViewInjector$View$Element;

.field public static final enum MMCHANGE15:Lcom/oneplus/injector/OpViewInjector$View$Element;

.field public static final enum MMCHANGE9:Lcom/oneplus/injector/OpViewInjector$View$Element;

.field public static final enum OVERSCROLL:Lcom/oneplus/injector/OpViewInjector$View$Element;

.field public static final enum QQSCROLL:Lcom/oneplus/injector/OpViewInjector$View$Element;

.field public static final enum QZONESCROLL:Lcom/oneplus/injector/OpViewInjector$View$Element;

.field public static final enum SCROLL:Lcom/oneplus/injector/OpViewInjector$View$Element;

.field public static final enum WEBOVERSCROLL:Lcom/oneplus/injector/OpViewInjector$View$Element;

.field public static final enum WEBSCROLL:Lcom/oneplus/injector/OpViewInjector$View$Element;


# instance fields
.field private mName:Ljava/lang/String;

.field private mPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/oneplus/injector/OpViewInjector$View$Element;

    const/4 v1, 0x0

    const/4 v2, 0x5

    const-string v3, "SCROLL"

    const-string v4, "AbsListView.trackMotionScroll"

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/oneplus/injector/OpViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oneplus/injector/OpViewInjector$View$Element;->SCROLL:Lcom/oneplus/injector/OpViewInjector$View$Element;

    new-instance v0, Lcom/oneplus/injector/OpViewInjector$View$Element;

    const/4 v3, 0x1

    const/4 v4, 0x7

    const-string v5, "QQSCROLL"

    const-string/jumbo v6, "tencent.widget.AbsListView.onTouchEvent"

    invoke-direct {v0, v5, v3, v4, v6}, Lcom/oneplus/injector/OpViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oneplus/injector/OpViewInjector$View$Element;->QQSCROLL:Lcom/oneplus/injector/OpViewInjector$View$Element;

    new-instance v0, Lcom/oneplus/injector/OpViewInjector$View$Element;

    const/4 v5, 0x2

    const/16 v6, 0xc

    const-string/jumbo v7, "tencent.mm.ui.base.MMPullDownView.dispatchTouchEvent"

    const-string v8, "MMAWAKEN12"

    invoke-direct {v0, v8, v5, v6, v7}, Lcom/oneplus/injector/OpViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oneplus/injector/OpViewInjector$View$Element;->MMAWAKEN12:Lcom/oneplus/injector/OpViewInjector$View$Element;

    new-instance v0, Lcom/oneplus/injector/OpViewInjector$View$Element;

    const/16 v8, 0xe

    const-string v9, "MMAWAKEN14"

    const/4 v10, 0x3

    invoke-direct {v0, v9, v10, v8, v7}, Lcom/oneplus/injector/OpViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oneplus/injector/OpViewInjector$View$Element;->MMAWAKEN14:Lcom/oneplus/injector/OpViewInjector$View$Element;

    new-instance v0, Lcom/oneplus/injector/OpViewInjector$View$Element;

    const/4 v9, 0x4

    const/16 v10, 0xf

    const-string v11, "MMAWAKEN15"

    invoke-direct {v0, v11, v9, v10, v7}, Lcom/oneplus/injector/OpViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oneplus/injector/OpViewInjector$View$Element;->MMAWAKEN15:Lcom/oneplus/injector/OpViewInjector$View$Element;

    new-instance v0, Lcom/oneplus/injector/OpViewInjector$View$Element;

    const-string v11, "OVERSCROLL"

    const-string v12, "AbsListView.onOverScrolled"

    invoke-direct {v0, v11, v2, v2, v12}, Lcom/oneplus/injector/OpViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oneplus/injector/OpViewInjector$View$Element;->OVERSCROLL:Lcom/oneplus/injector/OpViewInjector$View$Element;

    new-instance v0, Lcom/oneplus/injector/OpViewInjector$View$Element;

    const/4 v11, 0x6

    const-string v12, "CONTENTSCROLL"

    const-string v13, "ContentView.onScrollChanged"

    invoke-direct {v0, v12, v11, v9, v13}, Lcom/oneplus/injector/OpViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oneplus/injector/OpViewInjector$View$Element;->CONTENTSCROLL:Lcom/oneplus/injector/OpViewInjector$View$Element;

    new-instance v0, Lcom/oneplus/injector/OpViewInjector$View$Element;

    const/16 v12, 0x9

    const-string v13, "MMCHANGE9"

    invoke-direct {v0, v13, v4, v12, v7}, Lcom/oneplus/injector/OpViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oneplus/injector/OpViewInjector$View$Element;->MMCHANGE9:Lcom/oneplus/injector/OpViewInjector$View$Element;

    new-instance v0, Lcom/oneplus/injector/OpViewInjector$View$Element;

    const/16 v13, 0x8

    const-string v14, "MMCHANGE12"

    invoke-direct {v0, v14, v13, v6, v7}, Lcom/oneplus/injector/OpViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oneplus/injector/OpViewInjector$View$Element;->MMCHANGE12:Lcom/oneplus/injector/OpViewInjector$View$Element;

    new-instance v0, Lcom/oneplus/injector/OpViewInjector$View$Element;

    const-string v14, "MMCHANGE14"

    invoke-direct {v0, v14, v12, v8, v7}, Lcom/oneplus/injector/OpViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oneplus/injector/OpViewInjector$View$Element;->MMCHANGE14:Lcom/oneplus/injector/OpViewInjector$View$Element;

    new-instance v0, Lcom/oneplus/injector/OpViewInjector$View$Element;

    const-string v14, "MMCHANGE15"

    const/16 v15, 0xa

    invoke-direct {v0, v14, v15, v10, v7}, Lcom/oneplus/injector/OpViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oneplus/injector/OpViewInjector$View$Element;->MMCHANGE15:Lcom/oneplus/injector/OpViewInjector$View$Element;

    new-instance v0, Lcom/oneplus/injector/OpViewInjector$View$Element;

    const/16 v7, 0xb

    const-string v14, "BROWSERSCROLL"

    const-string v15, "oppo.browser.navigation.widget.NavigationView.dispatchTouchEvent"

    invoke-direct {v0, v14, v7, v8, v15}, Lcom/oneplus/injector/OpViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oneplus/injector/OpViewInjector$View$Element;->BROWSERSCROLL:Lcom/oneplus/injector/OpViewInjector$View$Element;

    new-instance v0, Lcom/oneplus/injector/OpViewInjector$View$Element;

    const-string v14, "QZONESCROLL"

    const-string/jumbo v15, "qzone.widget.QZonePullToRefreshListView.onScrollChanged"

    invoke-direct {v0, v14, v6, v13, v15}, Lcom/oneplus/injector/OpViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oneplus/injector/OpViewInjector$View$Element;->QZONESCROLL:Lcom/oneplus/injector/OpViewInjector$View$Element;

    new-instance v0, Lcom/oneplus/injector/OpViewInjector$View$Element;

    const/16 v14, 0x10

    const-string v15, "WEBSCROLL"

    const/16 v6, 0xd

    const-string v12, "WebView$PrivateAccess.overScrollBy"

    invoke-direct {v0, v15, v6, v14, v12}, Lcom/oneplus/injector/OpViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oneplus/injector/OpViewInjector$View$Element;->WEBSCROLL:Lcom/oneplus/injector/OpViewInjector$View$Element;

    new-instance v0, Lcom/oneplus/injector/OpViewInjector$View$Element;

    const-string v6, "LISTOVERSCROLL"

    const-string v12, "AbsListView.onTouchEvent"

    invoke-direct {v0, v6, v8, v11, v12}, Lcom/oneplus/injector/OpViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oneplus/injector/OpViewInjector$View$Element;->LISTOVERSCROLL:Lcom/oneplus/injector/OpViewInjector$View$Element;

    new-instance v0, Lcom/oneplus/injector/OpViewInjector$View$Element;

    const-string v6, "WEBOVERSCROLL"

    const-string v12, "WebView$PrivateAccess.overScrollBy"

    invoke-direct {v0, v6, v10, v2, v12}, Lcom/oneplus/injector/OpViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oneplus/injector/OpViewInjector$View$Element;->WEBOVERSCROLL:Lcom/oneplus/injector/OpViewInjector$View$Element;

    new-instance v0, Lcom/oneplus/injector/OpViewInjector$View$Element;

    const-string v6, "BROWSEROVERSCROLL"

    const-string v12, "oppo.browser.navigation.widget.NavigationView.dispatchTouchEvent"

    invoke-direct {v0, v6, v14, v7, v12}, Lcom/oneplus/injector/OpViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/oneplus/injector/OpViewInjector$View$Element;->BROWSEROVERSCROLL:Lcom/oneplus/injector/OpViewInjector$View$Element;

    const/16 v0, 0x11

    new-array v0, v0, [Lcom/oneplus/injector/OpViewInjector$View$Element;

    sget-object v6, Lcom/oneplus/injector/OpViewInjector$View$Element;->SCROLL:Lcom/oneplus/injector/OpViewInjector$View$Element;

    aput-object v6, v0, v1

    sget-object v1, Lcom/oneplus/injector/OpViewInjector$View$Element;->QQSCROLL:Lcom/oneplus/injector/OpViewInjector$View$Element;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/injector/OpViewInjector$View$Element;->MMAWAKEN12:Lcom/oneplus/injector/OpViewInjector$View$Element;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/injector/OpViewInjector$View$Element;->MMAWAKEN14:Lcom/oneplus/injector/OpViewInjector$View$Element;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/injector/OpViewInjector$View$Element;->MMAWAKEN15:Lcom/oneplus/injector/OpViewInjector$View$Element;

    aput-object v1, v0, v9

    sget-object v1, Lcom/oneplus/injector/OpViewInjector$View$Element;->OVERSCROLL:Lcom/oneplus/injector/OpViewInjector$View$Element;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/injector/OpViewInjector$View$Element;->CONTENTSCROLL:Lcom/oneplus/injector/OpViewInjector$View$Element;

    aput-object v1, v0, v11

    sget-object v1, Lcom/oneplus/injector/OpViewInjector$View$Element;->MMCHANGE9:Lcom/oneplus/injector/OpViewInjector$View$Element;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/injector/OpViewInjector$View$Element;->MMCHANGE12:Lcom/oneplus/injector/OpViewInjector$View$Element;

    aput-object v1, v0, v13

    sget-object v1, Lcom/oneplus/injector/OpViewInjector$View$Element;->MMCHANGE14:Lcom/oneplus/injector/OpViewInjector$View$Element;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/injector/OpViewInjector$View$Element;->MMCHANGE15:Lcom/oneplus/injector/OpViewInjector$View$Element;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/injector/OpViewInjector$View$Element;->BROWSERSCROLL:Lcom/oneplus/injector/OpViewInjector$View$Element;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oneplus/injector/OpViewInjector$View$Element;->QZONESCROLL:Lcom/oneplus/injector/OpViewInjector$View$Element;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/injector/OpViewInjector$View$Element;->WEBSCROLL:Lcom/oneplus/injector/OpViewInjector$View$Element;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/injector/OpViewInjector$View$Element;->LISTOVERSCROLL:Lcom/oneplus/injector/OpViewInjector$View$Element;

    aput-object v1, v0, v8

    sget-object v1, Lcom/oneplus/injector/OpViewInjector$View$Element;->WEBOVERSCROLL:Lcom/oneplus/injector/OpViewInjector$View$Element;

    aput-object v1, v0, v10

    sget-object v1, Lcom/oneplus/injector/OpViewInjector$View$Element;->BROWSEROVERSCROLL:Lcom/oneplus/injector/OpViewInjector$View$Element;

    aput-object v1, v0, v14

    sput-object v0, Lcom/oneplus/injector/OpViewInjector$View$Element;->$VALUES:[Lcom/oneplus/injector/OpViewInjector$View$Element;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oneplus/injector/OpViewInjector$View$Element;->mName:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lcom/oneplus/injector/OpViewInjector$View$Element;->mPosition:I

    iput p3, p0, Lcom/oneplus/injector/OpViewInjector$View$Element;->mPosition:I

    iput-object p4, p0, Lcom/oneplus/injector/OpViewInjector$View$Element;->mName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/injector/OpViewInjector$View$Element;
    .locals 1

    const-class v0, Lcom/oneplus/injector/OpViewInjector$View$Element;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/injector/OpViewInjector$View$Element;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/injector/OpViewInjector$View$Element;
    .locals 1

    sget-object v0, Lcom/oneplus/injector/OpViewInjector$View$Element;->$VALUES:[Lcom/oneplus/injector/OpViewInjector$View$Element;

    invoke-virtual {v0}, [Lcom/oneplus/injector/OpViewInjector$View$Element;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/injector/OpViewInjector$View$Element;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/injector/OpViewInjector$View$Element;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNameString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/injector/OpViewInjector$View$Element;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/oneplus/injector/OpViewInjector$View$Element;->mPosition:I

    return v0
.end method
