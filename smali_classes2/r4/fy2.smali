.class public final Lr4/fy2;
.super Lr4/pm3;
.source "SourceFile"

# interfaces
.implements Lr4/bo3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/pm3<",
        "Lr4/fy2;",
        "Lr4/ey2;",
        ">;",
        "Lr4/bo3;"
    }
.end annotation


# static fields
.field private static final zzf:Lr4/vm3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/vm3<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzj:Lr4/fy2;


# instance fields
.field private zzb:I

.field private zze:Lr4/um3;

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr4/cy2;

    invoke-direct {v0}, Lr4/cy2;-><init>()V

    sput-object v0, Lr4/fy2;->zzf:Lr4/vm3;

    new-instance v0, Lr4/fy2;

    invoke-direct {v0}, Lr4/fy2;-><init>()V

    sput-object v0, Lr4/fy2;->zzj:Lr4/fy2;

    const-class v1, Lr4/fy2;

    invoke-static {v1, v0}, Lr4/pm3;->z(Ljava/lang/Class;Lr4/pm3;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lr4/pm3;-><init>()V

    invoke-static {}, Lr4/pm3;->j()Lr4/um3;

    move-result-object v0

    iput-object v0, p0, Lr4/fy2;->zze:Lr4/um3;

    const-string v0, ""

    iput-object v0, p0, Lr4/fy2;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lr4/fy2;->zzh:Ljava/lang/String;

    iput-object v0, p0, Lr4/fy2;->zzi:Ljava/lang/String;

    return-void
.end method

.method public static C()Lr4/ey2;
    .locals 1

    sget-object v0, Lr4/fy2;->zzj:Lr4/fy2;

    invoke-virtual {v0}, Lr4/pm3;->v()Lr4/lm3;

    move-result-object v0

    check-cast v0, Lr4/ey2;

    return-object v0
.end method

.method public static synthetic D()Lr4/fy2;
    .locals 1

    sget-object v0, Lr4/fy2;->zzj:Lr4/fy2;

    return-object v0
.end method

.method public static synthetic E(Lr4/fy2;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lr4/fy2;->zzb:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lr4/fy2;->zzb:I

    iput-object p1, p0, Lr4/fy2;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static synthetic I(Lr4/fy2;I)V
    .locals 1

    iget-object p1, p0, Lr4/fy2;->zze:Lr4/um3;

    invoke-interface {p1}, Lr4/ym3;->zza()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lr4/pm3;->k(Lr4/um3;)Lr4/um3;

    move-result-object p1

    iput-object p1, p0, Lr4/fy2;->zze:Lr4/um3;

    :cond_0
    iget-object p0, p0, Lr4/fy2;->zze:Lr4/um3;

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Lr4/um3;->Y(I)V

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
    sget-object p1, Lr4/fy2;->zzj:Lr4/fy2;

    return-object p1

    :cond_1
    new-instance p1, Lr4/ey2;

    invoke-direct {p1, p2}, Lr4/ey2;-><init>(Lr4/cy2;)V

    return-object p1

    :cond_2
    new-instance p1, Lr4/fy2;

    invoke-direct {p1}, Lr4/fy2;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zzb"

    aput-object v4, p1, v3

    const-string v3, "zze"

    aput-object v3, p1, p2

    sget-object p2, Lr4/dy2;->a:Lr4/tm3;

    aput-object p2, p1, v2

    const-string p2, "zzg"

    aput-object p2, p1, v1

    const-string p2, "zzh"

    aput-object p2, p1, v0

    const-string p2, "zzi"

    aput-object p2, p1, p3

    sget-object p2, Lr4/fy2;->zzj:Lr4/fy2;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001e\u0002\u1008\u0000\u0003\u1008\u0001\u0004\u1008\u0002"

    invoke-static {p2, p3, p1}, Lr4/pm3;->A(Lr4/ao3;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
