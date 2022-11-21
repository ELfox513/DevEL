.class public final Lr4/oa4;
.super Lr4/pm3;
.source "SourceFile"

# interfaces
.implements Lr4/bo3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/pm3<",
        "Lr4/oa4;",
        "Lr4/ka4;",
        ">;",
        "Lr4/bo3;"
    }
.end annotation


# static fields
.field private static final zzr:Lr4/oa4;


# instance fields
.field private zzb:I

.field private zze:Ljava/lang/String;

.field private zzf:J

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private zzj:J

.field private zzk:J

.field private zzl:Ljava/lang/String;

.field private zzm:J

.field private zzn:Ljava/lang/String;

.field private zzo:Ljava/lang/String;

.field private zzp:Lr4/ym3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/ym3<",
            "Lr4/ma4;",
            ">;"
        }
    .end annotation
.end field

.field private zzq:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr4/oa4;

    invoke-direct {v0}, Lr4/oa4;-><init>()V

    sput-object v0, Lr4/oa4;->zzr:Lr4/oa4;

    const-class v1, Lr4/oa4;

    invoke-static {v1, v0}, Lr4/pm3;->z(Ljava/lang/Class;Lr4/pm3;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lr4/pm3;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lr4/oa4;->zze:Ljava/lang/String;

    iput-object v0, p0, Lr4/oa4;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lr4/oa4;->zzh:Ljava/lang/String;

    iput-object v0, p0, Lr4/oa4;->zzi:Ljava/lang/String;

    iput-object v0, p0, Lr4/oa4;->zzl:Ljava/lang/String;

    iput-object v0, p0, Lr4/oa4;->zzn:Ljava/lang/String;

    iput-object v0, p0, Lr4/oa4;->zzo:Ljava/lang/String;

    invoke-static {}, Lr4/pm3;->m()Lr4/ym3;

    move-result-object v0

    iput-object v0, p0, Lr4/oa4;->zzp:Lr4/ym3;

    return-void
.end method

.method public static C()Lr4/ka4;
    .locals 1

    sget-object v0, Lr4/oa4;->zzr:Lr4/oa4;

    invoke-virtual {v0}, Lr4/pm3;->v()Lr4/lm3;

    move-result-object v0

    check-cast v0, Lr4/ka4;

    return-object v0
.end method

.method public static synthetic D()Lr4/oa4;
    .locals 1

    sget-object v0, Lr4/oa4;->zzr:Lr4/oa4;

    return-object v0
.end method

.method public static synthetic E(Lr4/oa4;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lr4/oa4;->zzb:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lr4/oa4;->zzb:I

    iput-object p1, p0, Lr4/oa4;->zze:Ljava/lang/String;

    return-void
.end method

.method public static synthetic I(Lr4/oa4;J)V
    .locals 1

    iget v0, p0, Lr4/oa4;->zzb:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lr4/oa4;->zzb:I

    iput-wide p1, p0, Lr4/oa4;->zzf:J

    return-void
.end method

.method public static synthetic J(Lr4/oa4;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lr4/oa4;->zzb:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lr4/oa4;->zzb:I

    iput-object p1, p0, Lr4/oa4;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static synthetic K(Lr4/oa4;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lr4/oa4;->zzb:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lr4/oa4;->zzb:I

    iput-object p1, p0, Lr4/oa4;->zzh:Ljava/lang/String;

    return-void
.end method

.method public static synthetic L(Lr4/oa4;Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lr4/oa4;->zzb:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lr4/oa4;->zzb:I

    iput-object p1, p0, Lr4/oa4;->zzi:Ljava/lang/String;

    return-void
.end method

.method public static synthetic M(Lr4/oa4;Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lr4/oa4;->zzb:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lr4/oa4;->zzb:I

    iput-object p1, p0, Lr4/oa4;->zzo:Ljava/lang/String;

    return-void
.end method

.method public static synthetic N(Lr4/oa4;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lr4/oa4;->zzq:I

    iget p1, p0, Lr4/oa4;->zzb:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Lr4/oa4;->zzb:I

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
    sget-object p1, Lr4/oa4;->zzr:Lr4/oa4;

    return-object p1

    :cond_1
    new-instance p1, Lr4/ka4;

    invoke-direct {p1, p2}, Lr4/ka4;-><init>(Lr4/ja4;)V

    return-object p1

    :cond_2
    new-instance p1, Lr4/oa4;

    invoke-direct {p1}, Lr4/oa4;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0x10

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

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzn"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzo"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzp"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-class p3, Lr4/ma4;

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "zzq"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    sget-object p3, Lr4/na4;->a:Lr4/tm3;

    aput-object p3, p1, p2

    sget-object p2, Lr4/oa4;->zzr:Lr4/oa4;

    const-string p3, "\u0001\r\u0000\u0001\u0001\r\r\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u1002\u0001\u0003\u1008\u0002\u0004\u1008\u0003\u0005\u1008\u0004\u0006\u1002\u0005\u0007\u1002\u0006\u0008\u1008\u0007\t\u1002\u0008\n\u1008\t\u000b\u1008\n\u000c\u001b\r\u100c\u000b"

    invoke-static {p2, p3, p1}, Lr4/pm3;->A(Lr4/ao3;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
