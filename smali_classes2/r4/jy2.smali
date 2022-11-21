.class public final Lr4/jy2;
.super Lr4/pm3;
.source "SourceFile"

# interfaces
.implements Lr4/bo3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/pm3<",
        "Lr4/jy2;",
        "Lr4/hy2;",
        ">;",
        "Lr4/bo3;"
    }
.end annotation


# static fields
.field private static final zzi:Lr4/jy2;


# instance fields
.field private zzb:I

.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:Lr4/fy2;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr4/jy2;

    invoke-direct {v0}, Lr4/jy2;-><init>()V

    sput-object v0, Lr4/jy2;->zzi:Lr4/jy2;

    const-class v1, Lr4/jy2;

    invoke-static {v1, v0}, Lr4/pm3;->z(Ljava/lang/Class;Lr4/pm3;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lr4/pm3;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lr4/jy2;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lr4/jy2;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static C()Lr4/hy2;
    .locals 1

    sget-object v0, Lr4/jy2;->zzi:Lr4/jy2;

    invoke-virtual {v0}, Lr4/pm3;->v()Lr4/lm3;

    move-result-object v0

    check-cast v0, Lr4/hy2;

    return-object v0
.end method

.method public static synthetic D()Lr4/jy2;
    .locals 1

    sget-object v0, Lr4/jy2;->zzi:Lr4/jy2;

    return-object v0
.end method

.method public static synthetic E(Lr4/jy2;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lr4/jy2;->zzb:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lr4/jy2;->zzb:I

    iput-object p1, p0, Lr4/jy2;->zzf:Ljava/lang/String;

    return-void
.end method

.method public static synthetic I(Lr4/jy2;Lr4/fy2;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lr4/jy2;->zzh:Lr4/fy2;

    iget p1, p0, Lr4/jy2;->zzb:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lr4/jy2;->zzb:I

    return-void
.end method

.method public static synthetic J(Lr4/jy2;I)V
    .locals 1

    const/4 p1, 0x1

    iput p1, p0, Lr4/jy2;->zze:I

    iget v0, p0, Lr4/jy2;->zzb:I

    or-int/2addr p1, v0

    iput p1, p0, Lr4/jy2;->zzb:I

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
    sget-object p1, Lr4/jy2;->zzi:Lr4/jy2;

    return-object p1

    :cond_1
    new-instance p1, Lr4/hy2;

    invoke-direct {p1, p2}, Lr4/hy2;-><init>(Lr4/gy2;)V

    return-object p1

    :cond_2
    new-instance p1, Lr4/jy2;

    invoke-direct {p1}, Lr4/jy2;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zzb"

    aput-object v4, p1, v3

    const-string v3, "zze"

    aput-object v3, p1, p2

    sget-object p2, Lr4/iy2;->a:Lr4/tm3;

    aput-object p2, p1, v2

    const-string p2, "zzf"

    aput-object p2, p1, v1

    const-string p2, "zzg"

    aput-object p2, p1, v0

    const-string p2, "zzh"

    aput-object p2, p1, p3

    sget-object p2, Lr4/jy2;->zzi:Lr4/jy2;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1009\u0003"

    invoke-static {p2, p3, p1}, Lr4/pm3;->A(Lr4/ao3;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
