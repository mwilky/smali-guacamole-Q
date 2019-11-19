.class public Lcom/android/server/am/OnePlusBGController$kth;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "kth"
.end annotation


# instance fields
.field public Al:Lcom/android/server/am/OnePlusBGController$MyDrainType;

.field public Bl:Z

.field public Cl:D

.field public Dl:Z

.field public El:Z

.field public Fl:Z

.field public mPkg:Ljava/lang/String;

.field public zl:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/am/OnePlusBGController$AppBucketRanking;Lcom/android/server/am/OnePlusBGController$MyDrainType;ZDZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/OnePlusBGController$kth;->zl:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    iput-object p3, p0, Lcom/android/server/am/OnePlusBGController$kth;->Al:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    iput-boolean p4, p0, Lcom/android/server/am/OnePlusBGController$kth;->Bl:Z

    iput-wide p5, p0, Lcom/android/server/am/OnePlusBGController$kth;->Cl:D

    iput-boolean p7, p0, Lcom/android/server/am/OnePlusBGController$kth;->Dl:Z

    iput-boolean p8, p0, Lcom/android/server/am/OnePlusBGController$kth;->El:Z

    iput-boolean p9, p0, Lcom/android/server/am/OnePlusBGController$kth;->Fl:Z

    return-void
.end method
