.class public final Lr4/ar3;
.super Lr4/pm3;
.source "SourceFile"

# interfaces
.implements Lr4/bo3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/pm3<",
        "Lr4/ar3;",
        "Lr4/bq3;",
        ">;",
        "Lr4/bo3;"
    }
.end annotation


# static fields
.field private static final zzx:Lr4/ar3;


# instance fields
.field private zzb:I

.field private zze:I

.field private zzf:I

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private zzj:Lr4/dq3;

.field private zzk:Lr4/ym3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/ym3<",
            "Lr4/xq3;",
            ">;"
        }
    .end annotation
.end field

.field private zzl:Ljava/lang/String;

.field private zzm:Lr4/qq3;

.field private zzn:Z

.field private zzo:Lr4/ym3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/ym3<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzp:Ljava/lang/String;

.field private zzq:Z

.field private zzr:Z

.field private zzs:Lr4/ll3;

.field private zzt:Lr4/zq3;

.field private zzu:Lr4/ym3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/ym3<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzv:Lr4/ym3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/ym3<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzw:B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr4/ar3;

    invoke-direct {v0}, Lr4/ar3;-><init>()V

    sput-object v0, Lr4/ar3;->zzx:Lr4/ar3;

    const-class v1, Lr4/ar3;

    invoke-static {v1, v0}, Lr4/pm3;->z(Ljava/lang/Class;Lr4/pm3;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lr4/pm3;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lr4/ar3;->zzw:B

    const-string v0, ""

    iput-object v0, p0, Lr4/ar3;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lr4/ar3;->zzh:Ljava/lang/String;

    iput-object v0, p0, Lr4/ar3;->zzi:Ljava/lang/String;

    invoke-static {}, Lr4/pm3;->m()Lr4/ym3;

    move-result-object v1

    iput-object v1, p0, Lr4/ar3;->zzk:Lr4/ym3;

    iput-object v0, p0, Lr4/ar3;->zzl:Ljava/lang/String;

    invoke-static {}, Lr4/pm3;->m()Lr4/ym3;

    move-result-object v1

    iput-object v1, p0, Lr4/ar3;->zzo:Lr4/ym3;

    iput-object v0, p0, Lr4/ar3;->zzp:Ljava/lang/String;

    sget-object v0, Lr4/ll3;->b:Lr4/ll3;

    iput-object v0, p0, Lr4/ar3;->zzs:Lr4/ll3;

    invoke-static {}, Lr4/pm3;->m()Lr4/ym3;

    move-result-object v0

    iput-object v0, p0, Lr4/ar3;->zzu:Lr4/ym3;

    invoke-static {}, Lr4/pm3;->m()Lr4/ym3;

    move-result-object v0

    iput-object v0, p0, Lr4/ar3;->zzv:Lr4/ym3;

    return-void
.end method

.method public static I()Lr4/bq3;
    .locals 1

    sget-object v0, Lr4/ar3;->zzx:Lr4/ar3;

    invoke-virtual {v0}, Lr4/pm3;->v()Lr4/lm3;

    move-result-object v0

    check-cast v0, Lr4/bq3;

    return-object v0
.end method

.method public static synthetic J()Lr4/ar3;
    .locals 1

    sget-object v0, Lr4/ar3;->zzx:Lr4/ar3;

    return-object v0
.end method

.method public static synthetic K(Lr4/ar3;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lr4/ar3;->zzb:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lr4/ar3;->zzb:I

    iput-object p1, p0, Lr4/ar3;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static synthetic L(Lr4/ar3;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lr4/ar3;->zzb:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lr4/ar3;->zzb:I

    iput-object p1, p0, Lr4/ar3;->zzh:Ljava/lang/String;

    return-void
.end method

.method public static synthetic M(Lr4/ar3;Lr4/dq3;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lr4/ar3;->zzj:Lr4/dq3;

    iget p1, p0, Lr4/ar3;->zzb:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lr4/ar3;->zzb:I

    return-void
.end method

.method public static synthetic N(Lr4/ar3;Lr4/xq3;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lr4/ar3;->zzk:Lr4/ym3;

    invoke-interface {v0}, Lr4/ym3;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lr4/pm3;->n(Lr4/ym3;)Lr4/ym3;

    move-result-object v0

    iput-object v0, p0, Lr4/ar3;->zzk:Lr4/ym3;

    :cond_0
    iget-object p0, p0, Lr4/ar3;->zzk:Lr4/ym3;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic O(Lr4/ar3;Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lr4/ar3;->zzb:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lr4/ar3;->zzb:I

    iput-object p1, p0, Lr4/ar3;->zzl:Ljava/lang/String;

    return-void
.end method

.method public static synthetic P(Lr4/ar3;)V
    .locals 1

    iget v0, p0, Lr4/ar3;->zzb:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lr4/ar3;->zzb:I

    sget-object v0, Lr4/ar3;->zzx:Lr4/ar3;

    iget-object v0, v0, Lr4/ar3;->zzl:Ljava/lang/String;

    iput-object v0, p0, Lr4/ar3;->zzl:Ljava/lang/String;

    return-void
.end method

.method public static synthetic Q(Lr4/ar3;Lr4/qq3;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lr4/ar3;->zzm:Lr4/qq3;

    iget p1, p0, Lr4/ar3;->zzb:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lr4/ar3;->zzb:I

    return-void
.end method

.method public static synthetic R(Lr4/ar3;Lr4/zq3;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lr4/ar3;->zzt:Lr4/zq3;

    iget p1, p0, Lr4/ar3;->zzb:I

    or-int/lit16 p1, p1, 0x2000

    iput p1, p0, Lr4/ar3;->zzb:I

    return-void
.end method

.method public static synthetic S(Lr4/ar3;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lr4/ar3;->zzu:Lr4/ym3;

    invoke-interface {v0}, Lr4/ym3;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lr4/pm3;->n(Lr4/ym3;)Lr4/ym3;

    move-result-object v0

    iput-object v0, p0, Lr4/ar3;->zzu:Lr4/ym3;

    :cond_0
    iget-object p0, p0, Lr4/ar3;->zzu:Lr4/ym3;

    invoke-static {p1, p0}, Lr4/uk3;->g(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic T(Lr4/ar3;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lr4/ar3;->zzv:Lr4/ym3;

    invoke-interface {v0}, Lr4/ym3;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lr4/pm3;->n(Lr4/ym3;)Lr4/ym3;

    move-result-object v0

    iput-object v0, p0, Lr4/ar3;->zzv:Lr4/ym3;

    :cond_0
    iget-object p0, p0, Lr4/ar3;->zzv:Lr4/ym3;

    invoke-static {p1, p0}, Lr4/uk3;->g(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic U(Lr4/ar3;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lr4/ar3;->zze:I

    iget p1, p0, Lr4/ar3;->zzb:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lr4/ar3;->zzb:I

    return-void
.end method


# virtual methods
.method public final B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    const/4 v3, 0x0

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    if-nez p2, :cond_0

    const/4 p3, 0x0

    :cond_0
    iput-byte p3, p0, Lr4/ar3;->zzw:B

    return-object v3

    :cond_1
    sget-object p1, Lr4/ar3;->zzx:Lr4/ar3;

    return-object p1

    :cond_2
    new-instance p1, Lr4/bq3;

    invoke-direct {p1, v3}, Lr4/bq3;-><init>(Lr4/zp3;)V

    return-object p1

    :cond_3
    new-instance p1, Lr4/ar3;

    invoke-direct {p1}, Lr4/ar3;-><init>()V

    return-object p1

    :cond_4
    const/16 p1, 0x16

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzb"

    aput-object p2, p1, v0

    const-string p2, "zzg"

    aput-object p2, p1, p3

    const-string p2, "zzh"

    aput-object p2, p1, v4

    const-string p2, "zzi"

    aput-object p2, p1, v3

    const-string p2, "zzk"

    aput-object p2, p1, v2

    const-class p2, Lr4/xq3;

    aput-object p2, p1, v1

    const/4 p2, 0x6

    const-string p3, "zzn"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzo"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzp"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzq"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzr"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zze"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    sget-object p3, Lr4/rq3;->a:Lr4/tm3;

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    sget-object p3, Lr4/aq3;->a:Lr4/tm3;

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0x11

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const/16 p2, 0x12

    const-string p3, "zzs"

    aput-object p3, p1, p2

    const/16 p2, 0x13

    const-string p3, "zzt"

    aput-object p3, p1, p2

    const/16 p2, 0x14

    const-string p3, "zzu"

    aput-object p3, p1, p2

    const/16 p2, 0x15

    const-string p3, "zzv"

    aput-object p3, p1, p2

    sget-object p2, Lr4/ar3;->zzx:Lr4/ar3;

    const-string p3, "\u0001\u0012\u0000\u0001\u0001\u0015\u0012\u0000\u0004\u0001\u0001\u1008\u0002\u0002\u1008\u0003\u0003\u1008\u0004\u0004\u041b\u0005\u1007\u0008\u0006\u001a\u0007\u1008\t\u0008\u1007\n\t\u1007\u000b\n\u100c\u0000\u000b\u100c\u0001\u000c\u1009\u0005\r\u1008\u0006\u000e\u1009\u0007\u000f\u100a\u000c\u0011\u1009\r\u0014\u001a\u0015\u001a"

    invoke-static {p2, p3, p1}, Lr4/pm3;->A(Lr4/ao3;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    iget-byte p1, p0, Lr4/ar3;->zzw:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final C()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/ar3;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final D()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lr4/xq3;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/ar3;->zzk:Lr4/ym3;

    return-object v0
.end method

.method public final E()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lr4/ar3;->zzl:Ljava/lang/String;

    return-object v0
.end method
