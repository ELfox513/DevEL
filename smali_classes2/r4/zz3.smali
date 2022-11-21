.class public final Lr4/zz3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/d14;


# instance fields
.field public final a:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lr4/zz3;->a:[B

    return-void
.end method


# virtual methods
.method public final a(Lr4/xb;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lr4/b14;->b(Lr4/d14;Lr4/xb;I)V

    return-void
.end method

.method public final b(Lr4/k6;IZ)I
    .locals 0

    const/4 p3, 0x1

    invoke-static {p0, p1, p2, p3}, Lr4/b14;->a(Lr4/d14;Lr4/k6;IZ)I

    move-result p1

    return p1
.end method

.method public final c(Lr4/xb;II)V
    .locals 0

    invoke-virtual {p1, p2}, Lr4/xb;->s(I)V

    return-void
.end method

.method public final d(Lr4/k6;IZI)I
    .locals 1

    const/16 p4, 0x1000

    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object p4, p0, Lr4/zz3;->a:[B

    const/4 v0, 0x0

    invoke-interface {p1, p4, v0, p2}, Lr4/k6;->b([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_0

    return p2

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    return p1
.end method

.method public final e(JIIILr4/c14;)V
    .locals 0

    return-void
.end method

.method public final f(Lr4/e5;)V
    .locals 0

    return-void
.end method
