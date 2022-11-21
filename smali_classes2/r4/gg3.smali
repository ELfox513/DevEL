.class public final Lr4/gg3;
.super Lr4/pm3;
.source "SourceFile"

# interfaces
.implements Lr4/bo3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/pm3<",
        "Lr4/gg3;",
        "Lr4/fg3;",
        ">;",
        "Lr4/bo3;"
    }
.end annotation


# static fields
.field private static final zzg:Lr4/gg3;


# instance fields
.field private zzb:I

.field private zze:I

.field private zzf:Lr4/ll3;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr4/gg3;

    invoke-direct {v0}, Lr4/gg3;-><init>()V

    sput-object v0, Lr4/gg3;->zzg:Lr4/gg3;

    const-class v1, Lr4/gg3;

    invoke-static {v1, v0}, Lr4/pm3;->z(Ljava/lang/Class;Lr4/pm3;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lr4/pm3;-><init>()V

    sget-object v0, Lr4/ll3;->b:Lr4/ll3;

    iput-object v0, p0, Lr4/gg3;->zzf:Lr4/ll3;

    return-void
.end method

.method public static D()Lr4/fg3;
    .locals 1

    sget-object v0, Lr4/gg3;->zzg:Lr4/gg3;

    invoke-virtual {v0}, Lr4/pm3;->v()Lr4/lm3;

    move-result-object v0

    check-cast v0, Lr4/fg3;

    return-object v0
.end method

.method public static E()Lr4/gg3;
    .locals 1

    sget-object v0, Lr4/gg3;->zzg:Lr4/gg3;

    return-object v0
.end method

.method public static synthetic I()Lr4/gg3;
    .locals 1

    sget-object v0, Lr4/gg3;->zzg:Lr4/gg3;

    return-object v0
.end method

.method public static synthetic J(Lr4/gg3;Lr4/ll3;)V
    .locals 0

    iput-object p1, p0, Lr4/gg3;->zzf:Lr4/ll3;

    return-void
.end method

.method public static synthetic M(Lr4/gg3;I)V
    .locals 0

    const/4 p1, 0x4

    invoke-static {p1}, Lr4/ig3;->a(I)I

    move-result p1

    iput p1, p0, Lr4/gg3;->zzb:I

    return-void
.end method

.method public static synthetic N(Lr4/gg3;I)V
    .locals 0

    const/4 p1, 0x5

    invoke-static {p1}, Lr4/kg3;->a(I)I

    move-result p1

    iput p1, p0, Lr4/gg3;->zze:I

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
    sget-object p1, Lr4/gg3;->zzg:Lr4/gg3;

    return-object p1

    :cond_1
    new-instance p1, Lr4/fg3;

    invoke-direct {p1, p3}, Lr4/fg3;-><init>(Lr4/bg3;)V

    return-object p1

    :cond_2
    new-instance p1, Lr4/gg3;

    invoke-direct {p1}, Lr4/gg3;-><init>()V

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

    sget-object p2, Lr4/gg3;->zzg:Lr4/gg3;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u000b\u0003\u0000\u0000\u0000\u0001\u000c\u0002\u000c\u000b\n"

    invoke-static {p2, p3, p1}, Lr4/pm3;->A(Lr4/ao3;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final C()Lr4/ll3;
    .locals 1

    iget-object v0, p0, Lr4/gg3;->zzf:Lr4/ll3;

    return-object v0
.end method

.method public final K()I
    .locals 4

    iget v0, p0, Lr4/gg3;->zzb:I

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x2

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    :cond_4
    :goto_0
    if-nez v1, :cond_5

    const/4 v0, 0x1

    return v0

    :cond_5
    return v1
.end method

.method public final L()I
    .locals 1

    iget v0, p0, Lr4/gg3;->zze:I

    invoke-static {v0}, Lr4/kg3;->b(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
