.class public final Lr4/nr;
.super Lr4/pm3;
.source "SourceFile"

# interfaces
.implements Lr4/bo3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/pm3<",
        "Lr4/nr;",
        "Lr4/fr;",
        ">;",
        "Lr4/bo3;"
    }
.end annotation


# static fields
.field private static final zzg:Lr4/nr;


# instance fields
.field private zzb:I

.field private zze:I

.field private zzf:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr4/nr;

    invoke-direct {v0}, Lr4/nr;-><init>()V

    sput-object v0, Lr4/nr;->zzg:Lr4/nr;

    const-class v1, Lr4/nr;

    invoke-static {v1, v0}, Lr4/pm3;->z(Ljava/lang/Class;Lr4/pm3;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lr4/pm3;-><init>()V

    return-void
.end method

.method public static E()Lr4/fr;
    .locals 1

    sget-object v0, Lr4/nr;->zzg:Lr4/nr;

    invoke-virtual {v0}, Lr4/pm3;->v()Lr4/lm3;

    move-result-object v0

    check-cast v0, Lr4/fr;

    return-object v0
.end method

.method public static I()Lr4/nr;
    .locals 1

    sget-object v0, Lr4/nr;->zzg:Lr4/nr;

    return-object v0
.end method

.method public static synthetic J()Lr4/nr;
    .locals 1

    sget-object v0, Lr4/nr;->zzg:Lr4/nr;

    return-object v0
.end method

.method public static synthetic M(Lr4/nr;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lr4/nr;->zze:I

    iget p1, p0, Lr4/nr;->zzb:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lr4/nr;->zzb:I

    return-void
.end method

.method public static synthetic N(Lr4/nr;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lr4/nr;->zzf:I

    iget p1, p0, Lr4/nr;->zzb:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lr4/nr;->zzb:I

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
    sget-object p1, Lr4/nr;->zzg:Lr4/nr;

    return-object p1

    :cond_1
    new-instance p1, Lr4/fr;

    invoke-direct {p1, p2}, Lr4/fr;-><init>(Lr4/np;)V

    return-object p1

    :cond_2
    new-instance p1, Lr4/nr;

    invoke-direct {p1}, Lr4/nr;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v3, "zzb"

    aput-object v3, p1, p3

    const-string p3, "zze"

    aput-object p3, p1, p2

    sget-object p2, Lr4/lr;->a:Lr4/tm3;

    aput-object p2, p1, v2

    const-string p2, "zzf"

    aput-object p2, p1, v1

    sget-object p2, Lr4/hr;->a:Lr4/tm3;

    aput-object p2, p1, v0

    sget-object p2, Lr4/nr;->zzg:Lr4/nr;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u100c\u0001"

    invoke-static {p2, p3, p1}, Lr4/pm3;->A(Lr4/ao3;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final C()Z
    .locals 2

    iget v0, p0, Lr4/nr;->zzb:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final D()Z
    .locals 1

    iget v0, p0, Lr4/nr;->zzb:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final K()I
    .locals 1

    iget v0, p0, Lr4/nr;->zze:I

    invoke-static {v0}, Lr4/mr;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final L()I
    .locals 1

    iget v0, p0, Lr4/nr;->zzf:I

    invoke-static {v0}, Lr4/ir;->a(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
