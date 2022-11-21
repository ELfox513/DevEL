.class public final Lb5/d3;
.super Lb5/x8;
.source "SourceFile"

# interfaces
.implements Lb5/fa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb5/x8<",
        "Lb5/d3;",
        "Lb5/c3;",
        ">;",
        "Lb5/fa;"
    }
.end annotation


# static fields
.field private static final zza:Lb5/d3;


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:Ljava/lang/String;

.field private zzh:Lb5/e9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb5/e9<",
            "Lb5/f3;",
            ">;"
        }
    .end annotation
.end field

.field private zzi:Z

.field private zzj:Lb5/k3;

.field private zzk:Z

.field private zzl:Z

.field private zzm:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb5/d3;

    invoke-direct {v0}, Lb5/d3;-><init>()V

    sput-object v0, Lb5/d3;->zza:Lb5/d3;

    const-class v1, Lb5/d3;

    invoke-static {v1, v0}, Lb5/x8;->j(Ljava/lang/Class;Lb5/x8;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lb5/x8;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lb5/d3;->zzg:Ljava/lang/String;

    invoke-static {}, Lb5/x8;->f()Lb5/e9;

    move-result-object v0

    iput-object v0, p0, Lb5/d3;->zzh:Lb5/e9;

    return-void
.end method

.method public static synthetic B(Lb5/d3;Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lb5/d3;->zze:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lb5/d3;->zze:I

    iput-object p1, p0, Lb5/d3;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static synthetic C(Lb5/d3;ILb5/f3;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lb5/d3;->zzh:Lb5/e9;

    invoke-interface {v0}, Lb5/e9;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lb5/x8;->g(Lb5/e9;)Lb5/e9;

    move-result-object v0

    iput-object v0, p0, Lb5/d3;->zzh:Lb5/e9;

    :cond_0
    iget-object p0, p0, Lb5/d3;->zzh:Lb5/e9;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static u()Lb5/c3;
    .locals 1

    sget-object v0, Lb5/d3;->zza:Lb5/d3;

    invoke-virtual {v0}, Lb5/x8;->k()Lb5/u8;

    move-result-object v0

    check-cast v0, Lb5/c3;

    return-object v0
.end method

.method public static synthetic v()Lb5/d3;
    .locals 1

    sget-object v0, Lb5/d3;->zza:Lb5/d3;

    return-object v0
.end method


# virtual methods
.method public final A()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb5/f3;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb5/d3;->zzh:Lb5/e9;

    return-object v0
.end method

.method public final D()Z
    .locals 1

    iget-boolean v0, p0, Lb5/d3;->zzk:Z

    return v0
.end method

.method public final E()Z
    .locals 1

    iget-boolean v0, p0, Lb5/d3;->zzl:Z

    return v0
.end method

.method public final F()Z
    .locals 1

    iget-boolean v0, p0, Lb5/d3;->zzm:Z

    return v0
.end method

.method public final G()Z
    .locals 1

    iget v0, p0, Lb5/d3;->zze:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final H()Z
    .locals 2

    iget v0, p0, Lb5/d3;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final I()Z
    .locals 1

    iget v0, p0, Lb5/d3;->zze:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
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
    sget-object p1, Lb5/d3;->zza:Lb5/d3;

    return-object p1

    :cond_1
    new-instance p1, Lb5/c3;

    invoke-direct {p1, p2}, Lb5/c3;-><init>(Lb5/z2;)V

    return-object p1

    :cond_2
    new-instance p1, Lb5/d3;

    invoke-direct {p1}, Lb5/d3;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zze"

    aput-object v4, p1, v3

    const-string v3, "zzf"

    aput-object v3, p1, p2

    const-string p2, "zzg"

    aput-object p2, p1, v2

    const-string p2, "zzh"

    aput-object p2, p1, v1

    const-class p2, Lb5/f3;

    aput-object p2, p1, v0

    const-string p2, "zzi"

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzm"

    aput-object p3, p1, p2

    sget-object p2, Lb5/d3;->zza:Lb5/d3;

    const-string p3, "\u0001\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0001\u0000\u0001\u1004\u0000\u0002\u1008\u0001\u0003\u001b\u0004\u1007\u0002\u0005\u1009\u0003\u0006\u1007\u0004\u0007\u1007\u0005\u0008\u1007\u0006"

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

    iget-object v0, p0, Lb5/d3;->zzh:Lb5/e9;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final t()I
    .locals 1

    iget v0, p0, Lb5/d3;->zzf:I

    return v0
.end method

.method public final w(I)Lb5/f3;
    .locals 1

    iget-object v0, p0, Lb5/d3;->zzh:Lb5/e9;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb5/f3;

    return-object p1
.end method

.method public final x()Lb5/k3;
    .locals 1

    iget-object v0, p0, Lb5/d3;->zzj:Lb5/k3;

    if-nez v0, :cond_0

    invoke-static {}, Lb5/k3;->t()Lb5/k3;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb5/d3;->zzg:Ljava/lang/String;

    return-object v0
.end method
