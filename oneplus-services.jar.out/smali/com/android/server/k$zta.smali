.class Lcom/android/server/k$zta;
.super Lcom/android/server/am/sis;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zta"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/k;


# direct methods
.method private constructor <init>(Lcom/android/server/k;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/k$zta;->this$0:Lcom/android/server/k;

    invoke-direct {p0}, Lcom/android/server/am/sis;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/k;Lcom/android/server/j;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/k$zta;-><init>(Lcom/android/server/k;)V

    return-void
.end method


# virtual methods
.method public rtg(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/k$zta;->this$0:Lcom/android/server/k;

    invoke-virtual {p0, p1}, Lcom/android/server/k;->ibl(I)V

    return-void
.end method
