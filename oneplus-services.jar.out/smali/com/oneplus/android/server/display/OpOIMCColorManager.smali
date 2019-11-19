.class public Lcom/oneplus/android/server/display/OpOIMCColorManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorDisable;,
        Lcom/oneplus/android/server/display/OpOIMCColorManager$GoogleMatrix;,
        Lcom/oneplus/android/server/display/OpOIMCColorManager$PaperColor;,
        Lcom/oneplus/android/server/display/OpOIMCColorManager$GrayColor;,
        Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorBalance;
    }
.end annotation


# static fields
.field private static final DISABLE_COLOR_FAST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OpOIMCColorManager"

.field private static final Yba:I = 0x0

.field private static final Zba:I = 0x1

.field private static final _ba:I = 0x2

.field private static final aca:I = 0x3

.field private static final bca:I = 0x4

.field private static final cca:I = 0x2


# instance fields
.field public Nba:Ljava/lang/String;

.field public Oba:Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorBalance;

.field public Pba:Lcom/oneplus/android/server/display/OpOIMCColorManager$GrayColor;

.field public Qba:Lcom/oneplus/android/server/display/OpOIMCColorManager$PaperColor;

.field public Rba:Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorDisable;

.field public Sba:Lcom/oneplus/android/server/display/OpOIMCColorManager$GoogleMatrix;

.field private Tba:Z

.field private Uba:Z

.field private Vba:Z

.field private Wba:Z

.field public Xba:I

.field private mContext:Landroid/content/Context;

.field protected mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "normal"

    iput-object v0, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->Nba:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->Tba:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->Uba:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->Vba:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->Wba:Z

    iput v0, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->Xba:I

    iput-object p1, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/oneplus/android/server/display/OpOIMCColorManager$GrayColor;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/android/server/display/OpOIMCColorManager$GrayColor;-><init>(Lcom/oneplus/android/server/display/OpOIMCColorManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->Pba:Lcom/oneplus/android/server/display/OpOIMCColorManager$GrayColor;

    new-instance v0, Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorBalance;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorBalance;-><init>(Lcom/oneplus/android/server/display/OpOIMCColorManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->Oba:Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorBalance;

    new-instance v0, Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorDisable;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorDisable;-><init>(Lcom/oneplus/android/server/display/OpOIMCColorManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->Rba:Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorDisable;

    new-instance v0, Lcom/oneplus/android/server/display/OpOIMCColorManager$PaperColor;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/android/server/display/OpOIMCColorManager$PaperColor;-><init>(Lcom/oneplus/android/server/display/OpOIMCColorManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->Qba:Lcom/oneplus/android/server/display/OpOIMCColorManager$PaperColor;

    new-instance v0, Lcom/oneplus/android/server/display/OpOIMCColorManager$GoogleMatrix;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/android/server/display/OpOIMCColorManager$GoogleMatrix;-><init>(Lcom/oneplus/android/server/display/OpOIMCColorManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->Sba:Lcom/oneplus/android/server/display/OpOIMCColorManager$GoogleMatrix;

    sget-object p1, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_COLORDISPLAY_MANAGER:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {p1}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/display/IOneplusColorDisplayManager;

    iput-object p1, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    return-void
.end method

.method static synthetic sis(Lcom/oneplus/android/server/display/OpOIMCColorManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->Vba:Z

    return p0
.end method

.method static synthetic sis(Lcom/oneplus/android/server/display/OpOIMCColorManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->Vba:Z

    return p1
.end method

.method static synthetic tsu(Lcom/oneplus/android/server/display/OpOIMCColorManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->Wba:Z

    return p0
.end method

.method static synthetic tsu(Lcom/oneplus/android/server/display/OpOIMCColorManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->Wba:Z

    return p1
.end method

.method static synthetic you(Lcom/oneplus/android/server/display/OpOIMCColorManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->Uba:Z

    return p0
.end method

.method static synthetic you(Lcom/oneplus/android/server/display/OpOIMCColorManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->Uba:Z

    return p1
.end method

.method static synthetic zta(Lcom/oneplus/android/server/display/OpOIMCColorManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->Tba:Z

    return p0
.end method

.method static synthetic zta(Lcom/oneplus/android/server/display/OpOIMCColorManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->Tba:Z

    return p1
.end method
