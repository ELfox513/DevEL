.class public final Lr4/uf3;
.super Lr4/pm3;
.source "SourceFile"

# interfaces
.implements Lr4/bo3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/pm3<",
        "Lr4/uf3;",
        "Lr4/tf3;",
        ">;",
        "Lr4/bo3;"
    }
.end annotation


# static fields
.field private static final zzg:Lr4/uf3;


# instance fields
.field private zzb:Lr4/gg3;

.field private zze:Lr4/of3;

.field private zzf:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr4/uf3;

    invoke-direct {v0}, Lr4/uf3;-><init>()V

    sput-object v0, Lr4/uf3;->zzg:Lr4/uf3;

    const-class v1, Lr4/uf3;

    invoke-static {v1, v0}, Lr4/pm3;->z(Ljava/lang/Class;Lr4/pm3;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lr4/pm3;-><init>()V

    return-void
.end method

.method public static E()Lr4/tf3;
    .locals 1

    sget-object v0, Lr4/uf3;->zzg:Lr4/uf3;

    invoke-virtual {v0}, Lr4/pm3;->v()Lr4/lm3;

    move-result-object v0

    check-cast v0, Lr4/tf3;

    return-object v0
.end method

.method public static I()Lr4/uf3;
    .locals 1

    sget-object v0, Lr4/uf3;->zzg:Lr4/uf3;

    return-object v0
.end method

.method public static synthetic J()Lr4/uf3;
    .locals 1

    sget-object v0, Lr4/uf3;->zzg:Lr4/uf3;

    return-object v0
.end method

.method public static synthetic K(Lr4/uf3;Lr4/gg3;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lr4/uf3;->zzb:Lr4/gg3;

    return-void
.end method

.method public static synthetic L(Lr4/uf3;Lr4/of3;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lr4/uf3;->zze:Lr4/of3;

    return-void
.end method

.method public static synthetic N(Lr4/uf3;I)V
    .locals 0

    invoke-static {p1}, Lr4/lf3;->a(I)I

    move-result p1

    iput p1, p0, Lr4/uf3;->zzf:I

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
    sget-object p1, Lr4/uf3;->zzg:Lr4/uf3;

    return-object p1

    :cond_1
    new-instance p1, Lr4/tf3;

    invoke-direct {p1, p3}, Lr4/tf3;-><init>(Lr4/sf3;)V

    return-object p1

    :cond_2
    new-instance p1, Lr4/uf3;

    invoke-direct {p1}, Lr4/uf3;-><init>()V

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

    sget-object p2, Lr4/uf3;->zzg:Lr4/uf3;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\t\u0003\u000c"

    invoke-static {p2, p3, p1}, Lr4/pm3;->A(Lr4/ao3;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final C()Lr4/gg3;
    .locals 1

    iget-object v0, p0, Lr4/uf3;->zzb:Lr4/gg3;

    if-nez v0, :cond_0

    invoke-static {}, Lr4/gg3;->E()Lr4/gg3;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final D()Lr4/of3;
    .locals 1

    iget-object v0, p0, Lr4/uf3;->zze:Lr4/of3;

    if-nez v0, :cond_0

    invoke-static {}, Lr4/of3;->E()Lr4/of3;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final M()I
    .locals 4

    iget v0, p0, Lr4/uf3;->zzf:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    :cond_3
    :goto_0
    if-nez v1, :cond_4

    return v3

    :cond_4
    return v1
.end method
