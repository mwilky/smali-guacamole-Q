.class public Lorg/bouncycastle/jcajce/wtn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/cert/CertPathParameters;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/wtn$zta;
    }
.end annotation


# static fields
.field public static final Nla:I = 0x0

.field public static final Ola:I = 0x1


# instance fields
.field private final Lla:I

.field private final Mla:Z

.field private final Zza:Ljava/security/cert/PKIXParameters;

.field private final _za:Lorg/bouncycastle/jcajce/cno;

.field private final aAa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/jcajce/rtg;",
            ">;"
        }
    .end annotation
.end field

.field private final bAa:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/bouncycastle/asn1/x509/zgw;",
            "Lorg/bouncycastle/jcajce/rtg;",
            ">;"
        }
    .end annotation
.end field

.field private final cAa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/jcajce/you;",
            ">;"
        }
    .end annotation
.end field

.field private final dAa:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/bouncycastle/asn1/x509/zgw;",
            "Lorg/bouncycastle/jcajce/you;",
            ">;"
        }
    .end annotation
.end field

.field private final date:Ljava/util/Date;

.field private final eAa:Z

.field private final fAa:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/bouncycastle/jcajce/wtn$zta;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/jcajce/wtn$zta;->zta(Lorg/bouncycastle/jcajce/wtn$zta;)Ljava/security/cert/PKIXParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/wtn;->Zza:Ljava/security/cert/PKIXParameters;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/wtn$zta;->you(Lorg/bouncycastle/jcajce/wtn$zta;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/wtn;->date:Ljava/util/Date;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/wtn$zta;->sis(Lorg/bouncycastle/jcajce/wtn$zta;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/wtn;->aAa:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/wtn$zta;->tsu(Lorg/bouncycastle/jcajce/wtn$zta;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/wtn;->bAa:Ljava/util/Map;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/wtn$zta;->rtg(Lorg/bouncycastle/jcajce/wtn$zta;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/wtn;->cAa:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/wtn$zta;->ssp(Lorg/bouncycastle/jcajce/wtn$zta;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/wtn;->dAa:Ljava/util/Map;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/wtn$zta;->cno(Lorg/bouncycastle/jcajce/wtn$zta;)Lorg/bouncycastle/jcajce/cno;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/wtn;->_za:Lorg/bouncycastle/jcajce/cno;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/wtn$zta;->kth(Lorg/bouncycastle/jcajce/wtn$zta;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/wtn;->eAa:Z

    invoke-static {p1}, Lorg/bouncycastle/jcajce/wtn$zta;->bio(Lorg/bouncycastle/jcajce/wtn$zta;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/wtn;->Mla:Z

    invoke-static {p1}, Lorg/bouncycastle/jcajce/wtn$zta;->igw(Lorg/bouncycastle/jcajce/wtn$zta;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/jcajce/wtn;->Lla:I

    invoke-static {p1}, Lorg/bouncycastle/jcajce/wtn$zta;->wtn(Lorg/bouncycastle/jcajce/wtn$zta;)Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/wtn;->fAa:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/jcajce/wtn$zta;Lorg/bouncycastle/jcajce/igw;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/wtn;-><init>(Lorg/bouncycastle/jcajce/wtn$zta;)V

    return-void
.end method

.method static synthetic bio(Lorg/bouncycastle/jcajce/wtn;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/jcajce/wtn;->Lla:I

    return p0
.end method

.method static synthetic cno(Lorg/bouncycastle/jcajce/wtn;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/wtn;->dAa:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic kth(Lorg/bouncycastle/jcajce/wtn;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/jcajce/wtn;->Mla:Z

    return p0
.end method

.method static synthetic rtg(Lorg/bouncycastle/jcajce/wtn;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/wtn;->bAa:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic sis(Lorg/bouncycastle/jcajce/wtn;)Lorg/bouncycastle/jcajce/cno;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/wtn;->_za:Lorg/bouncycastle/jcajce/cno;

    return-object p0
.end method

.method static synthetic ssp(Lorg/bouncycastle/jcajce/wtn;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/wtn;->cAa:Ljava/util/List;

    return-object p0
.end method

.method static synthetic tsu(Lorg/bouncycastle/jcajce/wtn;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/wtn;->aAa:Ljava/util/List;

    return-object p0
.end method

.method static synthetic you(Lorg/bouncycastle/jcajce/wtn;)Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/wtn;->date:Ljava/util/Date;

    return-object p0
.end method

.method static synthetic zta(Lorg/bouncycastle/jcajce/wtn;)Ljava/security/cert/PKIXParameters;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/wtn;->Zza:Ljava/security/cert/PKIXParameters;

    return-object p0
.end method


# virtual methods
.method public Rf()Lorg/bouncycastle/jcajce/cno;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/wtn;->_za:Lorg/bouncycastle/jcajce/cno;

    return-object p0
.end method

.method public Tf()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/jcajce/wtn;->Lla:I

    return p0
.end method

.method public Vf()Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/jcajce/wtn;->Mla:Z

    return p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public getCertPathCheckers()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/wtn;->Zza:Ljava/security/cert/PKIXParameters;

    invoke-virtual {p0}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCertStores()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/CertStore;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/bouncycastle/jcajce/wtn;->Zza:Ljava/security/cert/PKIXParameters;

    invoke-virtual {p0}, Ljava/security/cert/PKIXParameters;->getCertStores()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDate()Ljava/util/Date;
    .locals 3

    new-instance v0, Ljava/util/Date;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/wtn;->date:Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getInitialPolicies()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/wtn;->Zza:Ljava/security/cert/PKIXParameters;

    invoke-virtual {p0}, Ljava/security/cert/PKIXParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getPolicyQualifiersRejected()Z
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/wtn;->Zza:Ljava/security/cert/PKIXParameters;

    invoke-virtual {p0}, Ljava/security/cert/PKIXParameters;->getPolicyQualifiersRejected()Z

    move-result p0

    return p0
.end method

.method public getSigProvider()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/wtn;->Zza:Ljava/security/cert/PKIXParameters;

    invoke-virtual {p0}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTrustAnchors()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/wtn;->fAa:Ljava/util/Set;

    return-object p0
.end method

.method public isAnyPolicyInhibited()Z
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/wtn;->Zza:Ljava/security/cert/PKIXParameters;

    invoke-virtual {p0}, Ljava/security/cert/PKIXParameters;->isAnyPolicyInhibited()Z

    move-result p0

    return p0
.end method

.method public isExplicitPolicyRequired()Z
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/wtn;->Zza:Ljava/security/cert/PKIXParameters;

    invoke-virtual {p0}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result p0

    return p0
.end method

.method public isPolicyMappingInhibited()Z
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/wtn;->Zza:Ljava/security/cert/PKIXParameters;

    invoke-virtual {p0}, Ljava/security/cert/PKIXParameters;->isPolicyMappingInhibited()Z

    move-result p0

    return p0
.end method

.method public isRevocationEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/jcajce/wtn;->eAa:Z

    return p0
.end method

.method public lj()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bouncycastle/jcajce/you;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/bouncycastle/jcajce/wtn;->cAa:Ljava/util/List;

    return-object p0
.end method

.method public mj()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bouncycastle/jcajce/rtg;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/bouncycastle/jcajce/wtn;->aAa:Ljava/util/List;

    return-object p0
.end method

.method public nj()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/bouncycastle/asn1/x509/zgw;",
            "Lorg/bouncycastle/jcajce/you;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/bouncycastle/jcajce/wtn;->dAa:Ljava/util/Map;

    return-object p0
.end method

.method public oj()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/bouncycastle/asn1/x509/zgw;",
            "Lorg/bouncycastle/jcajce/rtg;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/bouncycastle/jcajce/wtn;->bAa:Ljava/util/Map;

    return-object p0
.end method
