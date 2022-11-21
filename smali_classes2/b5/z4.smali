.class public final Lb5/z4;
.super Lb5/x8;
.source "SourceFile"

# interfaces
.implements Lb5/fa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb5/x8<",
        "Lb5/z4;",
        "Lb5/y4;",
        ">;",
        "Lb5/fa;"
    }
.end annotation


# static fields
.field private static final zza:Lb5/z4;


# instance fields
.field private zze:Lb5/d9;

.field private zzf:Lb5/d9;

.field private zzg:Lb5/e9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb5/e9<",
            "Lb5/h4;",
            ">;"
        }
    .end annotation
.end field

.field private zzh:Lb5/e9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb5/e9<",
            "Lb5/b5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb5/z4;

    invoke-direct {v0}, Lb5/z4;-><init>()V

    sput-object v0, Lb5/z4;->zza:Lb5/z4;

    const-class v1, Lb5/z4;

    invoke-static {v1, v0}, Lb5/x8;->j(Ljava/lang/Class;Lb5/x8;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lb5/x8;-><init>()V

    invoke-static {}, Lb5/x8;->p()Lb5/d9;

    move-result-object v0

    iput-object v0, p0, Lb5/z4;->zze:Lb5/d9;

    invoke-static {}, Lb5/x8;->p()Lb5/d9;

    move-result-object v0

    iput-object v0, p0, Lb5/z4;->zzf:Lb5/d9;

    invoke-static {}, Lb5/x8;->f()Lb5/e9;

    move-result-object v0

    iput-object v0, p0, Lb5/z4;->zzg:Lb5/e9;

    invoke-static {}, Lb5/x8;->f()Lb5/e9;

    move-result-object v0

    iput-object v0, p0, Lb5/z4;->zzh:Lb5/e9;

    return-void
.end method

.method public static A()Lb5/z4;
    .locals 1

    sget-object v0, Lb5/z4;->zza:Lb5/z4;

    return-object v0
.end method

.method public static synthetic G(Lb5/z4;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lb5/z4;->zze:Lb5/d9;

    invoke-interface {v0}, Lb5/e9;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lb5/x8;->q(Lb5/d9;)Lb5/d9;

    move-result-object v0

    iput-object v0, p0, Lb5/z4;->zze:Lb5/d9;

    :cond_0
    iget-object p0, p0, Lb5/z4;->zze:Lb5/d9;

    invoke-static {p1, p0}, Lb5/f7;->c(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic H(Lb5/z4;)V
    .locals 1

    invoke-static {}, Lb5/x8;->p()Lb5/d9;

    move-result-object v0

    iput-object v0, p0, Lb5/z4;->zze:Lb5/d9;

    return-void
.end method

.method public static synthetic I(Lb5/z4;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lb5/z4;->zzf:Lb5/d9;

    invoke-interface {v0}, Lb5/e9;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lb5/x8;->q(Lb5/d9;)Lb5/d9;

    move-result-object v0

    iput-object v0, p0, Lb5/z4;->zzf:Lb5/d9;

    :cond_0
    iget-object p0, p0, Lb5/z4;->zzf:Lb5/d9;

    invoke-static {p1, p0}, Lb5/f7;->c(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic J(Lb5/z4;)V
    .locals 1

    invoke-static {}, Lb5/x8;->p()Lb5/d9;

    move-result-object v0

    iput-object v0, p0, Lb5/z4;->zzf:Lb5/d9;

    return-void
.end method

.method public static synthetic K(Lb5/z4;Ljava/lang/Iterable;)V
    .locals 0

    invoke-virtual {p0}, Lb5/z4;->Q()V

    iget-object p0, p0, Lb5/z4;->zzg:Lb5/e9;

    invoke-static {p1, p0}, Lb5/f7;->c(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic L(Lb5/z4;I)V
    .locals 0

    invoke-virtual {p0}, Lb5/z4;->Q()V

    iget-object p0, p0, Lb5/z4;->zzg:Lb5/e9;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic O(Lb5/z4;Ljava/lang/Iterable;)V
    .locals 0

    invoke-virtual {p0}, Lb5/z4;->R()V

    iget-object p0, p0, Lb5/z4;->zzh:Lb5/e9;

    invoke-static {p1, p0}, Lb5/f7;->c(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic P(Lb5/z4;I)V
    .locals 0

    invoke-virtual {p0}, Lb5/z4;->R()V

    iget-object p0, p0, Lb5/z4;->zzh:Lb5/e9;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public static x()Lb5/y4;
    .locals 1

    sget-object v0, Lb5/z4;->zza:Lb5/z4;

    invoke-virtual {v0}, Lb5/x8;->k()Lb5/u8;

    move-result-object v0

    check-cast v0, Lb5/y4;

    return-object v0
.end method

.method public static synthetic z()Lb5/z4;
    .locals 1

    sget-object v0, Lb5/z4;->zza:Lb5/z4;

    return-object v0
.end method


# virtual methods
.method public final B(I)Lb5/b5;
    .locals 1

    iget-object v0, p0, Lb5/z4;->zzh:Lb5/e9;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb5/b5;

    return-object p1
.end method

.method public final C()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb5/h4;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb5/z4;->zzg:Lb5/e9;

    return-object v0
.end method

.method public final D()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb5/z4;->zzf:Lb5/d9;

    return-object v0
.end method

.method public final E()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb5/b5;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb5/z4;->zzh:Lb5/e9;

    return-object v0
.end method

.method public final F()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb5/z4;->zze:Lb5/d9;

    return-object v0
.end method

.method public final Q()V
    .locals 2

    iget-object v0, p0, Lb5/z4;->zzg:Lb5/e9;

    invoke-interface {v0}, Lb5/e9;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lb5/x8;->g(Lb5/e9;)Lb5/e9;

    move-result-object v0

    iput-object v0, p0, Lb5/z4;->zzg:Lb5/e9;

    :cond_0
    return-void
.end method

.method public final R()V
    .locals 2

    iget-object v0, p0, Lb5/z4;->zzh:Lb5/e9;

    invoke-interface {v0}, Lb5/e9;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lb5/x8;->g(Lb5/e9;)Lb5/e9;

    move-result-object v0

    iput-object v0, p0, Lb5/z4;->zzh:Lb5/e9;

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
    sget-object p1, Lb5/z4;->zza:Lb5/z4;

    return-object p1

    :cond_1
    new-instance p1, Lb5/y4;

    invoke-direct {p1, p2}, Lb5/y4;-><init>(Lb5/a4;)V

    return-object p1

    :cond_2
    new-instance p1, Lb5/z4;

    invoke-direct {p1}, Lb5/z4;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zze"

    aput-object v4, p1, v3

    const-string v3, "zzf"

    aput-object v3, p1, p2

    const-string p2, "zzg"

    aput-object p2, p1, v2

    const-class p2, Lb5/h4;

    aput-object p2, p1, v1

    const-string p2, "zzh"

    aput-object p2, p1, v0

    const-class p2, Lb5/b5;

    aput-object p2, p1, p3

    sget-object p2, Lb5/z4;->zza:Lb5/z4;

    const-string p3, "\u0001\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0000\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b"

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

    iget-object v0, p0, Lb5/z4;->zzg:Lb5/e9;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final t()I
    .locals 1

    iget-object v0, p0, Lb5/z4;->zzf:Lb5/d9;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final u()I
    .locals 1

    iget-object v0, p0, Lb5/z4;->zzh:Lb5/e9;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final v()I
    .locals 1

    iget-object v0, p0, Lb5/z4;->zze:Lb5/d9;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final w(I)Lb5/h4;
    .locals 1

    iget-object v0, p0, Lb5/z4;->zzg:Lb5/e9;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb5/h4;

    return-object p1
.end method
