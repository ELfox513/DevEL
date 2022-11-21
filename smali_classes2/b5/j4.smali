.class public final Lb5/j4;
.super Lb5/x8;
.source "SourceFile"

# interfaces
.implements Lb5/fa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb5/x8<",
        "Lb5/j4;",
        "Lb5/i4;",
        ">;",
        "Lb5/fa;"
    }
.end annotation


# static fields
.field private static final zza:Lb5/j4;


# instance fields
.field private zze:I

.field private zzf:Lb5/e9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb5/e9<",
            "Lb5/n4;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Ljava/lang/String;

.field private zzh:J

.field private zzi:J

.field private zzj:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb5/j4;

    invoke-direct {v0}, Lb5/j4;-><init>()V

    sput-object v0, Lb5/j4;->zza:Lb5/j4;

    const-class v1, Lb5/j4;

    invoke-static {v1, v0}, Lb5/x8;->j(Ljava/lang/Class;Lb5/x8;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lb5/x8;-><init>()V

    invoke-static {}, Lb5/x8;->f()Lb5/e9;

    move-result-object v0

    iput-object v0, p0, Lb5/j4;->zzf:Lb5/e9;

    const-string v0, ""

    iput-object v0, p0, Lb5/j4;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static synthetic C(Lb5/j4;ILb5/n4;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lb5/j4;->P()V

    iget-object p0, p0, Lb5/j4;->zzf:Lb5/e9;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic D(Lb5/j4;Lb5/n4;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lb5/j4;->P()V

    iget-object p0, p0, Lb5/j4;->zzf:Lb5/e9;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic E(Lb5/j4;Ljava/lang/Iterable;)V
    .locals 0

    invoke-virtual {p0}, Lb5/j4;->P()V

    iget-object p0, p0, Lb5/j4;->zzf:Lb5/e9;

    invoke-static {p1, p0}, Lb5/f7;->c(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic F(Lb5/j4;)V
    .locals 1

    invoke-static {}, Lb5/x8;->f()Lb5/e9;

    move-result-object v0

    iput-object v0, p0, Lb5/j4;->zzf:Lb5/e9;

    return-void
.end method

.method public static synthetic G(Lb5/j4;I)V
    .locals 0

    invoke-virtual {p0}, Lb5/j4;->P()V

    iget-object p0, p0, Lb5/j4;->zzf:Lb5/e9;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic H(Lb5/j4;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lb5/j4;->zze:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb5/j4;->zze:I

    iput-object p1, p0, Lb5/j4;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static synthetic I(Lb5/j4;J)V
    .locals 1

    iget v0, p0, Lb5/j4;->zze:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lb5/j4;->zze:I

    iput-wide p1, p0, Lb5/j4;->zzh:J

    return-void
.end method

.method public static synthetic J(Lb5/j4;J)V
    .locals 1

    iget v0, p0, Lb5/j4;->zze:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lb5/j4;->zze:I

    iput-wide p1, p0, Lb5/j4;->zzi:J

    return-void
.end method

.method public static w()Lb5/i4;
    .locals 1

    sget-object v0, Lb5/j4;->zza:Lb5/j4;

    invoke-virtual {v0}, Lb5/x8;->k()Lb5/u8;

    move-result-object v0

    check-cast v0, Lb5/i4;

    return-object v0
.end method

.method public static synthetic x()Lb5/j4;
    .locals 1

    sget-object v0, Lb5/j4;->zza:Lb5/j4;

    return-object v0
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb5/j4;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final B()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb5/n4;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb5/j4;->zzf:Lb5/e9;

    return-object v0
.end method

.method public final K()Z
    .locals 1

    iget v0, p0, Lb5/j4;->zze:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final L()Z
    .locals 1

    iget v0, p0, Lb5/j4;->zze:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final O()Z
    .locals 1

    iget v0, p0, Lb5/j4;->zze:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final P()V
    .locals 2

    iget-object v0, p0, Lb5/j4;->zzf:Lb5/e9;

    invoke-interface {v0}, Lb5/e9;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lb5/x8;->g(Lb5/e9;)Lb5/e9;

    move-result-object v0

    iput-object v0, p0, Lb5/j4;->zzf:Lb5/e9;

    :cond_0
    return-void
.end method

.method public final r(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
    sget-object p1, Lb5/j4;->zza:Lb5/j4;

    return-object p1

    :cond_1
    new-instance p1, Lb5/i4;

    invoke-direct {p1, p2}, Lb5/i4;-><init>(Lb5/a4;)V

    return-object p1

    :cond_2
    new-instance p1, Lb5/j4;

    invoke-direct {p1}, Lb5/j4;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zze"

    aput-object v4, p1, v3

    const-string v3, "zzf"

    aput-object v3, p1, p2

    const-class p2, Lb5/n4;

    aput-object p2, p1, v2

    const-string p2, "zzg"

    aput-object p2, p1, v1

    const-string p2, "zzh"

    aput-object p2, p1, v0

    const-string p2, "zzi"

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-string p3, "zzj"

    aput-object p3, p1, p2

    sget-object p2, Lb5/j4;->zza:Lb5/j4;

    const-string p3, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u001b\u0002\u1008\u0000\u0003\u1002\u0001\u0004\u1002\u0002\u0005\u1004\u0003"

    invoke-static {p2, p3, p1}, Lb5/x8;->i(Lb5/ea;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final s()I
    .locals 1

    iget v0, p0, Lb5/j4;->zzj:I

    return v0
.end method

.method public final t()I
    .locals 1

    iget-object v0, p0, Lb5/j4;->zzf:Lb5/e9;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final u()J
    .locals 2

    iget-wide v0, p0, Lb5/j4;->zzi:J

    return-wide v0
.end method

.method public final v()J
    .locals 2

    iget-wide v0, p0, Lb5/j4;->zzh:J

    return-wide v0
.end method

.method public final z(I)Lb5/n4;
    .locals 1

    iget-object v0, p0, Lb5/j4;->zzf:Lb5/e9;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb5/n4;

    return-object p1
.end method
