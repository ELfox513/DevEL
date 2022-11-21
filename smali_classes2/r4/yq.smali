.class public final Lr4/yq;
.super Lr4/pm3;
.source "SourceFile"

# interfaces
.implements Lr4/bo3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/pm3<",
        "Lr4/yq;",
        "Lr4/xq;",
        ">;",
        "Lr4/bo3;"
    }
.end annotation


# static fields
.field private static final zzr:Lr4/yq;


# instance fields
.field private zzb:I

.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:I

.field private zzh:I

.field private zzi:Lr4/js;

.field private zzj:Lr4/xm3;

.field private zzk:Lr4/qq;

.field private zzl:Lr4/tq;

.field private zzm:Lr4/nr;

.field private zzn:Lr4/sp;

.field private zzo:Lr4/xr;

.field private zzp:Lr4/ft;

.field private zzq:Lr4/bq;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr4/yq;

    invoke-direct {v0}, Lr4/yq;-><init>()V

    sput-object v0, Lr4/yq;->zzr:Lr4/yq;

    const-class v1, Lr4/yq;

    invoke-static {v1, v0}, Lr4/pm3;->z(Ljava/lang/Class;Lr4/pm3;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lr4/pm3;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lr4/yq;->zzf:Ljava/lang/String;

    const/16 v0, 0x3e8

    iput v0, p0, Lr4/yq;->zzh:I

    invoke-static {}, Lr4/pm3;->l()Lr4/xm3;

    move-result-object v0

    iput-object v0, p0, Lr4/yq;->zzj:Lr4/xm3;

    return-void
.end method

.method public static I()Lr4/xq;
    .locals 1

    sget-object v0, Lr4/yq;->zzr:Lr4/yq;

    invoke-virtual {v0}, Lr4/pm3;->v()Lr4/lm3;

    move-result-object v0

    check-cast v0, Lr4/xq;

    return-object v0
.end method

.method public static synthetic J()Lr4/yq;
    .locals 1

    sget-object v0, Lr4/yq;->zzr:Lr4/yq;

    return-object v0
.end method

.method public static synthetic K(Lr4/yq;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lr4/yq;->zzb:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lr4/yq;->zzb:I

    iput-object p1, p0, Lr4/yq;->zzf:Ljava/lang/String;

    return-void
.end method

.method public static synthetic L(Lr4/yq;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lr4/yq;->zzj:Lr4/xm3;

    invoke-interface {v0}, Lr4/ym3;->zza()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v1, v1

    :goto_0
    invoke-interface {v0, v1}, Lr4/xm3;->D(I)Lr4/xm3;

    move-result-object v0

    iput-object v0, p0, Lr4/yq;->zzj:Lr4/xm3;

    :cond_1
    iget-object p0, p0, Lr4/yq;->zzj:Lr4/xm3;

    invoke-static {p1, p0}, Lr4/uk3;->g(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic M(Lr4/yq;)V
    .locals 1

    invoke-static {}, Lr4/pm3;->l()Lr4/xm3;

    move-result-object v0

    iput-object v0, p0, Lr4/yq;->zzj:Lr4/xm3;

    return-void
.end method

.method public static synthetic N(Lr4/yq;Lr4/qq;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lr4/yq;->zzk:Lr4/qq;

    iget p1, p0, Lr4/yq;->zzb:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lr4/yq;->zzb:I

    return-void
.end method

.method public static synthetic O(Lr4/yq;Lr4/sp;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lr4/yq;->zzn:Lr4/sp;

    iget p1, p0, Lr4/yq;->zzb:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lr4/yq;->zzb:I

    return-void
.end method

.method public static synthetic P(Lr4/yq;Lr4/xr;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lr4/yq;->zzo:Lr4/xr;

    iget p1, p0, Lr4/yq;->zzb:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lr4/yq;->zzb:I

    return-void
.end method

.method public static synthetic Q(Lr4/yq;Lr4/ft;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lr4/yq;->zzp:Lr4/ft;

    iget p1, p0, Lr4/yq;->zzb:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lr4/yq;->zzb:I

    return-void
.end method

.method public static synthetic R(Lr4/yq;Lr4/bq;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lr4/yq;->zzq:Lr4/bq;

    iget p1, p0, Lr4/yq;->zzb:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lr4/yq;->zzb:I

    return-void
.end method


# virtual methods
.method public final B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 p2, 0x0

    if-eq p1, v0, :cond_1

    if-eq p1, p3, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Lr4/yq;->zzr:Lr4/yq;

    return-object p1

    :cond_1
    new-instance p1, Lr4/xq;

    invoke-direct {p1, p2}, Lr4/xq;-><init>(Lr4/np;)V

    return-object p1

    :cond_2
    new-instance p1, Lr4/yq;

    invoke-direct {p1}, Lr4/yq;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0xf

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zzb"

    aput-object v4, p1, v3

    const-string v3, "zze"

    aput-object v3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v2

    const-string p2, "zzg"

    aput-object p2, p1, v1

    const-string p2, "zzh"

    aput-object p2, p1, v0

    sget-object p2, Lr4/vq;->a:Lr4/tm3;

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzn"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzo"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzp"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "zzq"

    aput-object p3, p1, p2

    sget-object p2, Lr4/yq;->zzr:Lr4/yq;

    const-string p3, "\u0001\r\u0000\u0001\t\u0015\r\u0000\u0001\u0000\t\u1004\u0000\n\u1008\u0001\u000b\u100b\u0002\u000c\u100c\u0003\r\u1009\u0004\u000e\u0015\u000f\u1009\u0005\u0010\u1009\u0006\u0011\u1009\u0007\u0012\u1009\u0008\u0013\u1009\t\u0014\u1009\n\u0015\u1009\u000b"

    invoke-static {p2, p3, p1}, Lr4/pm3;->A(Lr4/ao3;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final C()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/yq;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final D()Lr4/qq;
    .locals 1

    iget-object v0, p0, Lr4/yq;->zzk:Lr4/qq;

    if-nez v0, :cond_0

    invoke-static {}, Lr4/qq;->C()Lr4/qq;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final E()Lr4/sp;
    .locals 1

    iget-object v0, p0, Lr4/yq;->zzn:Lr4/sp;

    if-nez v0, :cond_0

    invoke-static {}, Lr4/sp;->D()Lr4/sp;

    move-result-object v0

    :cond_0
    return-object v0
.end method
