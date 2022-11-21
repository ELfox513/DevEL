.class public final Lr4/of3;
.super Lr4/pm3;
.source "SourceFile"

# interfaces
.implements Lr4/bo3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/pm3<",
        "Lr4/of3;",
        "Lr4/nf3;",
        ">;",
        "Lr4/bo3;"
    }
.end annotation


# static fields
.field private static final zze:Lr4/of3;


# instance fields
.field private zzb:Lr4/zg3;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr4/of3;

    invoke-direct {v0}, Lr4/of3;-><init>()V

    sput-object v0, Lr4/of3;->zze:Lr4/of3;

    const-class v1, Lr4/of3;

    invoke-static {v1, v0}, Lr4/pm3;->z(Ljava/lang/Class;Lr4/pm3;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lr4/pm3;-><init>()V

    return-void
.end method

.method public static D()Lr4/nf3;
    .locals 1

    sget-object v0, Lr4/of3;->zze:Lr4/of3;

    invoke-virtual {v0}, Lr4/pm3;->v()Lr4/lm3;

    move-result-object v0

    check-cast v0, Lr4/nf3;

    return-object v0
.end method

.method public static E()Lr4/of3;
    .locals 1

    sget-object v0, Lr4/of3;->zze:Lr4/of3;

    return-object v0
.end method

.method public static synthetic I()Lr4/of3;
    .locals 1

    sget-object v0, Lr4/of3;->zze:Lr4/of3;

    return-object v0
.end method

.method public static synthetic J(Lr4/of3;Lr4/zg3;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lr4/of3;->zzb:Lr4/zg3;

    return-void
.end method


# virtual methods
.method public final B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

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
    sget-object p1, Lr4/of3;->zze:Lr4/of3;

    return-object p1

    :cond_1
    new-instance p1, Lr4/nf3;

    invoke-direct {p1, p3}, Lr4/nf3;-><init>(Lr4/mf3;)V

    return-object p1

    :cond_2
    new-instance p1, Lr4/of3;

    invoke-direct {p1}, Lr4/of3;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "zzb"

    aput-object p3, p1, p2

    sget-object p2, Lr4/of3;->zze:Lr4/of3;

    const-string p3, "\u0000\u0001\u0000\u0000\u0002\u0002\u0001\u0000\u0000\u0000\u0002\t"

    invoke-static {p2, p3, p1}, Lr4/pm3;->A(Lr4/ao3;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final C()Lr4/zg3;
    .locals 1

    iget-object v0, p0, Lr4/of3;->zzb:Lr4/zg3;

    if-nez v0, :cond_0

    invoke-static {}, Lr4/zg3;->I()Lr4/zg3;

    move-result-object v0

    :cond_0
    return-object v0
.end method
