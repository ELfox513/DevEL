.class public final Lr4/dq3;
.super Lr4/pm3;
.source "SourceFile"

# interfaces
.implements Lr4/bo3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/pm3<",
        "Lr4/dq3;",
        "Lr4/cq3;",
        ">;",
        "Lr4/bo3;"
    }
.end annotation


# static fields
.field private static final zzf:Lr4/dq3;


# instance fields
.field private zzb:I

.field private zze:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr4/dq3;

    invoke-direct {v0}, Lr4/dq3;-><init>()V

    sput-object v0, Lr4/dq3;->zzf:Lr4/dq3;

    const-class v1, Lr4/dq3;

    invoke-static {v1, v0}, Lr4/pm3;->z(Ljava/lang/Class;Lr4/pm3;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lr4/pm3;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lr4/dq3;->zze:Ljava/lang/String;

    return-void
.end method

.method public static C()Lr4/cq3;
    .locals 1

    sget-object v0, Lr4/dq3;->zzf:Lr4/dq3;

    invoke-virtual {v0}, Lr4/pm3;->v()Lr4/lm3;

    move-result-object v0

    check-cast v0, Lr4/cq3;

    return-object v0
.end method

.method public static synthetic D()Lr4/dq3;
    .locals 1

    sget-object v0, Lr4/dq3;->zzf:Lr4/dq3;

    return-object v0
.end method

.method public static synthetic E(Lr4/dq3;Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lr4/dq3;->zzb:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lr4/dq3;->zzb:I

    iput-object p1, p0, Lr4/dq3;->zze:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x2

    if-eq p1, p3, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-object p3

    :cond_0
    sget-object p1, Lr4/dq3;->zzf:Lr4/dq3;

    return-object p1

    :cond_1
    new-instance p1, Lr4/cq3;

    invoke-direct {p1, p3}, Lr4/cq3;-><init>(Lr4/zp3;)V

    return-object p1

    :cond_2
    new-instance p1, Lr4/dq3;

    invoke-direct {p1}, Lr4/dq3;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "zzb"

    aput-object v0, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    sget-object p2, Lr4/dq3;->zzf:Lr4/dq3;

    const-string p3, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u1008\u0000"

    invoke-static {p2, p3, p1}, Lr4/pm3;->A(Lr4/ao3;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
