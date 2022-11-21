.class public final Lb5/b5;
.super Lb5/x8;
.source "SourceFile"

# interfaces
.implements Lb5/fa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb5/x8<",
        "Lb5/b5;",
        "Lb5/a5;",
        ">;",
        "Lb5/fa;"
    }
.end annotation


# static fields
.field private static final zza:Lb5/b5;


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:Lb5/d9;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb5/b5;

    invoke-direct {v0}, Lb5/b5;-><init>()V

    sput-object v0, Lb5/b5;->zza:Lb5/b5;

    const-class v1, Lb5/b5;

    invoke-static {v1, v0}, Lb5/x8;->j(Ljava/lang/Class;Lb5/x8;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lb5/x8;-><init>()V

    invoke-static {}, Lb5/x8;->p()Lb5/d9;

    move-result-object v0

    iput-object v0, p0, Lb5/b5;->zzg:Lb5/d9;

    return-void
.end method

.method public static synthetic A(Lb5/b5;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lb5/b5;->zzg:Lb5/d9;

    invoke-interface {v0}, Lb5/e9;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lb5/x8;->q(Lb5/d9;)Lb5/d9;

    move-result-object v0

    iput-object v0, p0, Lb5/b5;->zzg:Lb5/d9;

    :cond_0
    iget-object p0, p0, Lb5/b5;->zzg:Lb5/d9;

    invoke-static {p1, p0}, Lb5/f7;->c(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static v()Lb5/a5;
    .locals 1

    sget-object v0, Lb5/b5;->zza:Lb5/b5;

    invoke-virtual {v0}, Lb5/x8;->k()Lb5/u8;

    move-result-object v0

    check-cast v0, Lb5/a5;

    return-object v0
.end method

.method public static synthetic w()Lb5/b5;
    .locals 1

    sget-object v0, Lb5/b5;->zza:Lb5/b5;

    return-object v0
.end method

.method public static synthetic z(Lb5/b5;I)V
    .locals 1

    iget v0, p0, Lb5/b5;->zze:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb5/b5;->zze:I

    iput p1, p0, Lb5/b5;->zzf:I

    return-void
.end method


# virtual methods
.method public final B()Z
    .locals 2

    iget v0, p0, Lb5/b5;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final r(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
    sget-object p1, Lb5/b5;->zza:Lb5/b5;

    return-object p1

    :cond_1
    new-instance p1, Lb5/a5;

    invoke-direct {p1, p3}, Lb5/a5;-><init>(Lb5/a4;)V

    return-object p1

    :cond_2
    new-instance p1, Lb5/b5;

    invoke-direct {p1}, Lb5/b5;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v1, "zze"

    aput-object v1, p1, p3

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const-string p2, "zzg"

    aput-object p2, p1, v0

    sget-object p2, Lb5/b5;->zza:Lb5/b5;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u1004\u0000\u0002\u0014"

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

    iget-object v0, p0, Lb5/b5;->zzg:Lb5/d9;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final t()I
    .locals 1

    iget v0, p0, Lb5/b5;->zzf:I

    return v0
.end method

.method public final u(I)J
    .locals 2

    iget-object v0, p0, Lb5/b5;->zzg:Lb5/d9;

    invoke-interface {v0, p1}, Lb5/d9;->h(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final x()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb5/b5;->zzg:Lb5/d9;

    return-object v0
.end method
