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
.field public kl:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

.field public ll:Lcom/android/server/am/OnePlusBGController$MyDrainType;

.field public mPkg:Ljava/lang/String;

.field public ml:Z

.field public nl:D

.field public ol:Z

.field public pl:Z

.field public ql:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/am/OnePlusBGController$AppBucketRanking;Lcom/android/server/am/OnePlusBGController$MyDrainType;ZDZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/OnePlusBGController$kth;->kl:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    iput-object p3, p0, Lcom/android/server/am/OnePlusBGController$kth;->ll:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    iput-boolean p4, p0, Lcom/android/server/am/OnePlusBGController$kth;->ml:Z

    iput-wide p5, p0, Lcom/android/server/am/OnePlusBGController$kth;->nl:D

    iput-boolean p7, p0, Lcom/android/server/am/OnePlusBGController$kth;->ol:Z

    iput-boolean p8, p0, Lcom/android/server/am/OnePlusBGController$kth;->pl:Z

    iput-boolean p9, p0, Lcom/android/server/am/OnePlusBGController$kth;->ql:Z

    return-void
.end method
