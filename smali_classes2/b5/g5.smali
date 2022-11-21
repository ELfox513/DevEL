.class public final Lb5/g5;
.super Lb5/x8;
.source "SourceFile"

# interfaces
.implements Lb5/fa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb5/x8<",
        "Lb5/g5;",
        "Lb5/f5;",
        ">;",
        "Lb5/fa;"
    }
.end annotation


# static fields
.field private static final zza:Lb5/g5;


# instance fields
.field private zze:Lb5/e9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb5/e9<",
            "Lb5/i5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb5/g5;

    invoke-direct {v0}, Lb5/g5;-><init>()V

    sput-object v0, Lb5/g5;->zza:Lb5/g5;

    const-class v1, Lb5/g5;

    invoke-static {v1, v0}, Lb5/x8;->j(Ljava/lang/Class;Lb5/x8;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lb5/x8;-><init>()V

    invoke-static {}, Lb5/x8;->f()Lb5/e9;

    move-result-object v0

    iput-object v0, p0, Lb5/g5;->zze:Lb5/e9;

    return-void
.end method

.method public static synthetic t()Lb5/g5;
    .locals 1

    sget-object v0, Lb5/g5;->zza:Lb5/g5;

    return-object v0
.end method

.method public static u()Lb5/g5;
    .locals 1

    sget-object v0, Lb5/g5;->zza:Lb5/g5;

    return-object v0
.end method


# virtual methods
.method public final r(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
    sget-object p1, Lb5/g5;->zza:Lb5/g5;

    return-object p1

    :cond_1
    new-instance p1, Lb5/f5;

    invoke-direct {p1, p3}, Lb5/f5;-><init>(Lb5/e5;)V

    return-object p1

    :cond_2
    new-instance p1, Lb5/g5;

    invoke-direct {p1}, Lb5/g5;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "zze"

    aput-object v0, p1, p3

    const-class p3, Lb5/i5;

    aput-object p3, p1, p2

    sget-object p2, Lb5/g5;->zza:Lb5/g5;

    const-string p3, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

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

    iget-object v0, p0, Lb5/g5;->zze:Lb5/e9;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final v()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lb5/i5;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb5/g5;->zze:Lb5/e9;

    return-object v0
.end method
