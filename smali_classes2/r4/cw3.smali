.class public final Lr4/cw3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:[Lr4/i7;

.field public final c:Ljava/lang/Object;

.field public final d:[Lr4/hv3;


# direct methods
.method public constructor <init>([Lr4/i7;[Lr4/hv3;Ljava/lang/Object;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/cw3;->b:[Lr4/i7;

    invoke-virtual {p2}, [Lr4/hv3;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lr4/hv3;

    iput-object p2, p0, Lr4/cw3;->d:[Lr4/hv3;

    iput-object p3, p0, Lr4/cw3;->c:Ljava/lang/Object;

    array-length p1, p1

    iput p1, p0, Lr4/cw3;->a:I

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 1

    iget-object v0, p0, Lr4/cw3;->b:[Lr4/i7;

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lr4/cw3;I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lr4/cw3;->b:[Lr4/i7;

    aget-object v1, v1, p2

    iget-object v2, p1, Lr4/cw3;->b:[Lr4/i7;

    aget-object v2, v2, p2

    invoke-static {v1, v2}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lr4/cw3;->d:[Lr4/hv3;

    aget-object v1, v1, p2

    iget-object p1, p1, Lr4/cw3;->d:[Lr4/hv3;

    aget-object p1, p1, p2

    invoke-static {v1, p1}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method
