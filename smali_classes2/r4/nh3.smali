.class public final Lr4/nh3;
.super Lr4/pm3;
.source "SourceFile"

# interfaces
.implements Lr4/bo3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/pm3<",
        "Lr4/nh3;",
        "Lr4/mh3;",
        ">;",
        "Lr4/bo3;"
    }
.end annotation


# static fields
.field private static final zzh:Lr4/nh3;


# instance fields
.field private zzb:Ljava/lang/String;

.field private zze:I

.field private zzf:I

.field private zzg:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr4/nh3;

    invoke-direct {v0}, Lr4/nh3;-><init>()V

    sput-object v0, Lr4/nh3;->zzh:Lr4/nh3;

    const-class v1, Lr4/nh3;

    invoke-static {v1, v0}, Lr4/pm3;->z(Ljava/lang/Class;Lr4/pm3;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lr4/pm3;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lr4/nh3;->zzb:Ljava/lang/String;

    return-void
.end method

.method public static C()Lr4/mh3;
    .locals 1

    sget-object v0, Lr4/nh3;->zzh:Lr4/nh3;

    invoke-virtual {v0}, Lr4/pm3;->v()Lr4/lm3;

    move-result-object v0

    check-cast v0, Lr4/mh3;

    return-object v0
.end method

.method public static synthetic D()Lr4/nh3;
    .locals 1

    sget-object v0, Lr4/nh3;->zzh:Lr4/nh3;

    return-object v0
.end method

.method public static synthetic E(Lr4/nh3;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lr4/nh3;->zzb:Ljava/lang/String;

    return-void
.end method

.method public static synthetic I(Lr4/nh3;I)V
    .locals 0

    iput p1, p0, Lr4/nh3;->zzf:I

    return-void
.end method

.method public static synthetic J(Lr4/nh3;I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    add-int/lit8 p1, p1, -0x2

    iput p1, p0, Lr4/nh3;->zze:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t get the number of an unknown enum value."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic K(Lr4/nh3;I)V
    .locals 0

    invoke-static {p1}, Lr4/ci3;->a(I)I

    move-result p1

    iput p1, p0, Lr4/nh3;->zzg:I

    return-void
.end method


# virtual methods
.method public final B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 p2, 0x0

    if-eq p1, p3, :cond_1

    const/4 p3, 0x5

    if-eq p1, p3, :cond_0

    return-object p2

    :cond_0
    sget-object p1, Lr4/nh3;->zzh:Lr4/nh3;

    return-object p1

    :cond_1
    new-instance p1, Lr4/mh3;

    invoke-direct {p1, p2}, Lr4/mh3;-><init>(Lr4/kh3;)V

    return-object p1

    :cond_2
    new-instance p1, Lr4/nh3;

    invoke-direct {p1}, Lr4/nh3;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v2, "zzb"

    aput-object v2, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v1

    const-string p2, "zzg"

    aput-object p2, p1, v0

    sget-object p2, Lr4/nh3;->zzh:Lr4/nh3;

    const-string p3, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0208\u0002\u000c\u0003\u000b\u0004\u000c"

    invoke-static {p2, p3, p1}, Lr4/pm3;->A(Lr4/ao3;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
