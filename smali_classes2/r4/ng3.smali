.class public final Lr4/ng3;
.super Lr4/pm3;
.source "SourceFile"

# interfaces
.implements Lr4/bo3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/pm3<",
        "Lr4/ng3;",
        "Lr4/mg3;",
        ">;",
        "Lr4/bo3;"
    }
.end annotation


# static fields
.field private static final zzg:Lr4/ng3;


# instance fields
.field private zzb:I

.field private zze:Lr4/tg3;

.field private zzf:Lr4/ll3;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr4/ng3;

    invoke-direct {v0}, Lr4/ng3;-><init>()V

    sput-object v0, Lr4/ng3;->zzg:Lr4/ng3;

    const-class v1, Lr4/ng3;

    invoke-static {v1, v0}, Lr4/pm3;->z(Ljava/lang/Class;Lr4/pm3;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lr4/pm3;-><init>()V

    sget-object v0, Lr4/ll3;->b:Lr4/ll3;

    iput-object v0, p0, Lr4/ng3;->zzf:Lr4/ll3;

    return-void
.end method

.method public static I(Lr4/ll3;Lr4/bm3;)Lr4/ng3;
    .locals 1

    sget-object v0, Lr4/ng3;->zzg:Lr4/ng3;

    invoke-static {v0, p0, p1}, Lr4/pm3;->r(Lr4/pm3;Lr4/ll3;Lr4/bm3;)Lr4/pm3;

    move-result-object p0

    check-cast p0, Lr4/ng3;

    return-object p0
.end method

.method public static J()Lr4/mg3;
    .locals 1

    sget-object v0, Lr4/ng3;->zzg:Lr4/ng3;

    invoke-virtual {v0}, Lr4/pm3;->v()Lr4/lm3;

    move-result-object v0

    check-cast v0, Lr4/mg3;

    return-object v0
.end method

.method public static K()Lr4/ng3;
    .locals 1

    sget-object v0, Lr4/ng3;->zzg:Lr4/ng3;

    return-object v0
.end method

.method public static synthetic L()Lr4/ng3;
    .locals 1

    sget-object v0, Lr4/ng3;->zzg:Lr4/ng3;

    return-object v0
.end method

.method public static synthetic M(Lr4/ng3;I)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lr4/ng3;->zzb:I

    return-void
.end method

.method public static synthetic N(Lr4/ng3;Lr4/tg3;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lr4/ng3;->zze:Lr4/tg3;

    return-void
.end method

.method public static synthetic O(Lr4/ng3;Lr4/ll3;)V
    .locals 0

    iput-object p1, p0, Lr4/ng3;->zzf:Lr4/ll3;

    return-void
.end method


# virtual methods
.method public final B(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    if-eq p1, p3, :cond_2

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-object p3

    :cond_0
    sget-object p1, Lr4/ng3;->zzg:Lr4/ng3;

    return-object p1

    :cond_1
    new-instance p1, Lr4/mg3;

    invoke-direct {p1, p3}, Lr4/mg3;-><init>(Lr4/lg3;)V

    return-object p1

    :cond_2
    new-instance p1, Lr4/ng3;

    invoke-direct {p1}, Lr4/ng3;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v1, "zzb"

    aput-object v1, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v0

    sget-object p2, Lr4/ng3;->zzg:Lr4/ng3;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n"

    invoke-static {p2, p3, p1}, Lr4/pm3;->A(Lr4/ao3;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final C()I
    .locals 1

    iget v0, p0, Lr4/ng3;->zzb:I

    return v0
.end method

.method public final D()Lr4/tg3;
    .locals 1

    iget-object v0, p0, Lr4/ng3;->zze:Lr4/tg3;

    if-nez v0, :cond_0

    invoke-static {}, Lr4/tg3;->E()Lr4/tg3;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final E()Lr4/ll3;
    .locals 1

    iget-object v0, p0, Lr4/ng3;->zzf:Lr4/ll3;

    return-object v0
.end method
