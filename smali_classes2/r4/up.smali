.class public final Lr4/up;
.super Lr4/pm3;
.source "SourceFile"

# interfaces
.implements Lr4/bo3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/pm3<",
        "Lr4/up;",
        "Lr4/tp;",
        ">;",
        "Lr4/bo3;"
    }
.end annotation


# static fields
.field private static final zzh:Lr4/up;


# instance fields
.field private zzb:I

.field private zze:I

.field private zzf:Lr4/yp;

.field private zzg:Lr4/aq;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr4/up;

    invoke-direct {v0}, Lr4/up;-><init>()V

    sput-object v0, Lr4/up;->zzh:Lr4/up;

    const-class v1, Lr4/up;

    invoke-static {v1, v0}, Lr4/pm3;->z(Ljava/lang/Class;Lr4/pm3;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lr4/pm3;-><init>()V

    return-void
.end method

.method public static C()Lr4/tp;
    .locals 1

    sget-object v0, Lr4/up;->zzh:Lr4/up;

    invoke-virtual {v0}, Lr4/pm3;->v()Lr4/lm3;

    move-result-object v0

    check-cast v0, Lr4/tp;

    return-object v0
.end method

.method public static synthetic D()Lr4/up;
    .locals 1

    sget-object v0, Lr4/up;->zzh:Lr4/up;

    return-object v0
.end method

.method public static synthetic E(Lr4/up;Lr4/yp;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lr4/up;->zzf:Lr4/yp;

    iget p1, p0, Lr4/up;->zzb:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lr4/up;->zzb:I

    return-void
.end method

.method public static synthetic I(Lr4/up;Lr4/aq;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lr4/up;->zzg:Lr4/aq;

    iget p1, p0, Lr4/up;->zzb:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lr4/up;->zzb:I

    return-void
.end method

.method public static synthetic J(Lr4/up;I)V
    .locals 1

    const/4 p1, 0x1

    iput p1, p0, Lr4/up;->zze:I

    iget v0, p0, Lr4/up;->zzb:I

    or-int/2addr p1, v0

    iput p1, p0, Lr4/up;->zzb:I

    return-void
.end method


# virtual methods
.method public final B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

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
    sget-object p1, Lr4/up;->zzh:Lr4/up;

    return-object p1

    :cond_1
    new-instance p1, Lr4/tp;

    invoke-direct {p1, p2}, Lr4/tp;-><init>(Lr4/np;)V

    return-object p1

    :cond_2
    new-instance p1, Lr4/up;

    invoke-direct {p1}, Lr4/up;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v3, "zzb"

    aput-object v3, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    sget-object p2, Lr4/wp;->a:Lr4/tm3;

    aput-object p2, p1, v2

    const-string p2, "zzf"

    aput-object p2, p1, v1

    const-string p2, "zzg"

    aput-object p2, p1, v0

    sget-object p2, Lr4/up;->zzh:Lr4/up;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u1009\u0001\u0003\u1009\u0002"

    invoke-static {p2, p3, p1}, Lr4/pm3;->A(Lr4/ao3;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
