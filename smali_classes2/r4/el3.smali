.class public final Lr4/el3;
.super Lr4/hl3;
.source "SourceFile"


# instance fields
.field public final q:I

.field public final r:I


# direct methods
.method public constructor <init>([BII)V
    .locals 1

    invoke-direct {p0, p1}, Lr4/hl3;-><init>([B)V

    add-int v0, p2, p3

    array-length p1, p1

    invoke-static {p2, v0, p1}, Lr4/ll3;->k(III)I

    iput p2, p0, Lr4/el3;->q:I

    iput p3, p0, Lr4/el3;->r:I

    return-void
.end method


# virtual methods
.method public final U()I
    .locals 1

    iget v0, p0, Lr4/el3;->q:I

    return v0
.end method

.method public final l(I)B
    .locals 2

    iget v0, p0, Lr4/el3;->r:I

    invoke-static {p1, v0}, Lr4/ll3;->i(II)V

    iget-object v0, p0, Lr4/hl3;->p:[B

    iget v1, p0, Lr4/el3;->q:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method public final m(I)B
    .locals 2

    iget-object v0, p0, Lr4/hl3;->p:[B

    iget v1, p0, Lr4/el3;->q:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method public final o()I
    .locals 1

    iget v0, p0, Lr4/el3;->r:I

    return v0
.end method

.method public final r([BIII)V
    .locals 2

    iget-object v0, p0, Lr4/hl3;->p:[B

    iget v1, p0, Lr4/el3;->q:I

    add-int/2addr v1, p2

    invoke-static {v0, v1, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
