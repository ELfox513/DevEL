.class public final Lr4/mb4;
.super Lr4/pm3;
.source "SourceFile"

# interfaces
.implements Lr4/bo3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/pm3<",
        "Lr4/mb4;",
        "Lr4/lb4;",
        ">;",
        "Lr4/bo3;"
    }
.end annotation


# static fields
.field private static final zzz:Lr4/mb4;


# instance fields
.field private zzb:I

.field private zze:J

.field private zzf:J

.field private zzg:J

.field private zzh:J

.field private zzi:J

.field private zzj:J

.field private zzk:I

.field private zzl:J

.field private zzm:J

.field private zzn:J

.field private zzo:I

.field private zzp:J

.field private zzq:J

.field private zzr:J

.field private zzs:J

.field private zzt:J

.field private zzu:J

.field private zzv:J

.field private zzw:J

.field private zzx:J

.field private zzy:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr4/mb4;

    invoke-direct {v0}, Lr4/mb4;-><init>()V

    sput-object v0, Lr4/mb4;->zzz:Lr4/mb4;

    const-class v1, Lr4/mb4;

    invoke-static {v1, v0}, Lr4/pm3;->z(Ljava/lang/Class;Lr4/pm3;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lr4/pm3;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lr4/mb4;->zze:J

    iput-wide v0, p0, Lr4/mb4;->zzf:J

    iput-wide v0, p0, Lr4/mb4;->zzg:J

    iput-wide v0, p0, Lr4/mb4;->zzh:J

    iput-wide v0, p0, Lr4/mb4;->zzi:J

    iput-wide v0, p0, Lr4/mb4;->zzj:J

    const/16 v2, 0x3e8

    iput v2, p0, Lr4/mb4;->zzk:I

    iput-wide v0, p0, Lr4/mb4;->zzl:J

    iput-wide v0, p0, Lr4/mb4;->zzm:J

    iput-wide v0, p0, Lr4/mb4;->zzn:J

    iput v2, p0, Lr4/mb4;->zzo:I

    iput-wide v0, p0, Lr4/mb4;->zzp:J

    iput-wide v0, p0, Lr4/mb4;->zzq:J

    iput-wide v0, p0, Lr4/mb4;->zzr:J

    iput-wide v0, p0, Lr4/mb4;->zzs:J

    iput-wide v0, p0, Lr4/mb4;->zzv:J

    iput-wide v0, p0, Lr4/mb4;->zzw:J

    iput-wide v0, p0, Lr4/mb4;->zzx:J

    iput-wide v0, p0, Lr4/mb4;->zzy:J

    return-void
.end method

.method public static C()Lr4/lb4;
    .locals 1

    sget-object v0, Lr4/mb4;->zzz:Lr4/mb4;

    invoke-virtual {v0}, Lr4/pm3;->v()Lr4/lm3;

    move-result-object v0

    check-cast v0, Lr4/lb4;

    return-object v0
.end method

.method public static synthetic D()Lr4/mb4;
    .locals 1

    sget-object v0, Lr4/mb4;->zzz:Lr4/mb4;

    return-object v0
.end method

.method public static synthetic E(Lr4/mb4;J)V
    .locals 1

    iget v0, p0, Lr4/mb4;->zzb:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lr4/mb4;->zzb:I

    iput-wide p1, p0, Lr4/mb4;->zze:J

    return-void
.end method

.method public static synthetic I(Lr4/mb4;J)V
    .locals 1

    iget v0, p0, Lr4/mb4;->zzb:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lr4/mb4;->zzb:I

    iput-wide p1, p0, Lr4/mb4;->zzf:J

    return-void
.end method

.method public static synthetic J(Lr4/mb4;J)V
    .locals 1

    iget v0, p0, Lr4/mb4;->zzb:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lr4/mb4;->zzb:I

    iput-wide p1, p0, Lr4/mb4;->zzg:J

    return-void
.end method

.method public static synthetic K(Lr4/mb4;J)V
    .locals 1

    iget v0, p0, Lr4/mb4;->zzb:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lr4/mb4;->zzb:I

    iput-wide p1, p0, Lr4/mb4;->zzh:J

    return-void
.end method

.method public static synthetic L(Lr4/mb4;)V
    .locals 2

    iget v0, p0, Lr4/mb4;->zzb:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lr4/mb4;->zzb:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lr4/mb4;->zzh:J

    return-void
.end method

.method public static synthetic M(Lr4/mb4;J)V
    .locals 1

    iget v0, p0, Lr4/mb4;->zzb:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lr4/mb4;->zzb:I

    iput-wide p1, p0, Lr4/mb4;->zzi:J

    return-void
.end method

.method public static synthetic N(Lr4/mb4;J)V
    .locals 1

    iget v0, p0, Lr4/mb4;->zzb:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lr4/mb4;->zzb:I

    iput-wide p1, p0, Lr4/mb4;->zzj:J

    return-void
.end method

.method public static synthetic O(Lr4/mb4;J)V
    .locals 1

    iget v0, p0, Lr4/mb4;->zzb:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lr4/mb4;->zzb:I

    iput-wide p1, p0, Lr4/mb4;->zzl:J

    return-void
.end method

.method public static synthetic P(Lr4/mb4;J)V
    .locals 1

    iget v0, p0, Lr4/mb4;->zzb:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lr4/mb4;->zzb:I

    iput-wide p1, p0, Lr4/mb4;->zzm:J

    return-void
.end method

.method public static synthetic Q(Lr4/mb4;J)V
    .locals 1

    iget v0, p0, Lr4/mb4;->zzb:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lr4/mb4;->zzb:I

    iput-wide p1, p0, Lr4/mb4;->zzn:J

    return-void
.end method

.method public static synthetic R(Lr4/mb4;J)V
    .locals 1

    iget v0, p0, Lr4/mb4;->zzb:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lr4/mb4;->zzb:I

    iput-wide p1, p0, Lr4/mb4;->zzp:J

    return-void
.end method

.method public static synthetic S(Lr4/mb4;J)V
    .locals 1

    iget v0, p0, Lr4/mb4;->zzb:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lr4/mb4;->zzb:I

    iput-wide p1, p0, Lr4/mb4;->zzq:J

    return-void
.end method

.method public static synthetic T(Lr4/mb4;J)V
    .locals 1

    iget v0, p0, Lr4/mb4;->zzb:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lr4/mb4;->zzb:I

    iput-wide p1, p0, Lr4/mb4;->zzr:J

    return-void
.end method

.method public static synthetic U(Lr4/mb4;J)V
    .locals 1

    iget v0, p0, Lr4/mb4;->zzb:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lr4/mb4;->zzb:I

    iput-wide p1, p0, Lr4/mb4;->zzs:J

    return-void
.end method

.method public static synthetic V(Lr4/mb4;J)V
    .locals 2

    iget v0, p0, Lr4/mb4;->zzb:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lr4/mb4;->zzb:I

    iput-wide p1, p0, Lr4/mb4;->zzt:J

    return-void
.end method

.method public static synthetic W(Lr4/mb4;J)V
    .locals 2

    iget v0, p0, Lr4/mb4;->zzb:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lr4/mb4;->zzb:I

    iput-wide p1, p0, Lr4/mb4;->zzu:J

    return-void
.end method

.method public static synthetic X(Lr4/mb4;J)V
    .locals 2

    iget v0, p0, Lr4/mb4;->zzb:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lr4/mb4;->zzb:I

    iput-wide p1, p0, Lr4/mb4;->zzv:J

    return-void
.end method

.method public static synthetic Y(Lr4/mb4;J)V
    .locals 2

    iget v0, p0, Lr4/mb4;->zzb:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lr4/mb4;->zzb:I

    iput-wide p1, p0, Lr4/mb4;->zzw:J

    return-void
.end method

.method public static synthetic Z(Lr4/mb4;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lr4/mb4;->zzk:I

    iget p1, p0, Lr4/mb4;->zzb:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lr4/mb4;->zzb:I

    return-void
.end method

.method public static synthetic a0(Lr4/mb4;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lr4/mb4;->zzo:I

    iget p1, p0, Lr4/mb4;->zzb:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lr4/mb4;->zzb:I

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
    sget-object p1, Lr4/mb4;->zzz:Lr4/mb4;

    return-object p1

    :cond_1
    new-instance p1, Lr4/lb4;

    invoke-direct {p1, p2}, Lr4/lb4;-><init>(Lr4/ya4;)V

    return-object p1

    :cond_2
    new-instance p1, Lr4/mb4;

    invoke-direct {p1}, Lr4/mb4;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0x18

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

    const-string p2, "zzi"

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    sget-object p3, Lr4/wb4;->a:Lr4/tm3;

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string v0, "zzl"

    aput-object v0, p1, p2

    const/16 p2, 0xa

    const-string v0, "zzm"

    aput-object v0, p1, p2

    const/16 p2, 0xb

    const-string v0, "zzn"

    aput-object v0, p1, p2

    const/16 p2, 0xc

    const-string v0, "zzo"

    aput-object v0, p1, p2

    const/16 p2, 0xd

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "zzp"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-string p3, "zzq"

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-string p3, "zzr"

    aput-object p3, p1, p2

    const/16 p2, 0x11

    const-string p3, "zzs"

    aput-object p3, p1, p2

    const/16 p2, 0x12

    const-string p3, "zzt"

    aput-object p3, p1, p2

    const/16 p2, 0x13

    const-string p3, "zzu"

    aput-object p3, p1, p2

    const/16 p2, 0x14

    const-string p3, "zzv"

    aput-object p3, p1, p2

    const/16 p2, 0x15

    const-string p3, "zzw"

    aput-object p3, p1, p2

    const/16 p2, 0x16

    const-string p3, "zzx"

    aput-object p3, p1, p2

    const/16 p2, 0x17

    const-string p3, "zzy"

    aput-object p3, p1, p2

    sget-object p2, Lr4/mb4;->zzz:Lr4/mb4;

    const-string p3, "\u0001\u0015\u0000\u0001\u0001\u0015\u0015\u0000\u0000\u0000\u0001\u1002\u0000\u0002\u1002\u0001\u0003\u1002\u0002\u0004\u1002\u0003\u0005\u1002\u0004\u0006\u1002\u0005\u0007\u100c\u0006\u0008\u1002\u0007\t\u1002\u0008\n\u1002\t\u000b\u100c\n\u000c\u1002\u000b\r\u1002\u000c\u000e\u1002\r\u000f\u1002\u000e\u0010\u1002\u000f\u0011\u1002\u0010\u0012\u1002\u0011\u0013\u1002\u0012\u0014\u1002\u0013\u0015\u1002\u0014"

    invoke-static {p2, p3, p1}, Lr4/pm3;->A(Lr4/ao3;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
