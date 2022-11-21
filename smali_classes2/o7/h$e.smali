.class public final Lo7/h$e;
.super Lo7/h$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo7/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final q:I

.field public final r:I


# direct methods
.method public constructor <init>([BII)V
    .locals 1

    invoke-direct {p0, p1}, Lo7/h$j;-><init>([B)V

    add-int v0, p2, p3

    array-length p1, p1

    invoke-static {p2, v0, p1}, Lo7/h;->i(III)I

    iput p2, p0, Lo7/h$e;->q:I

    iput p3, p0, Lo7/h$e;->r:I

    return-void
.end method


# virtual methods
.method public M()I
    .locals 1

    iget v0, p0, Lo7/h$e;->q:I

    return v0
.end method

.method public e(I)B
    .locals 2

    invoke-virtual {p0}, Lo7/h$e;->size()I

    move-result v0

    invoke-static {p1, v0}, Lo7/h;->g(II)V

    iget-object v0, p0, Lo7/h$j;->p:[B

    iget v1, p0, Lo7/h$e;->q:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method public m([BIII)V
    .locals 2

    iget-object v0, p0, Lo7/h$j;->p:[B

    invoke-virtual {p0}, Lo7/h$e;->M()I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {v0, v1, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public o(I)B
    .locals 2

    iget-object v0, p0, Lo7/h$j;->p:[B

    iget v1, p0, Lo7/h$e;->q:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lo7/h$e;->r:I

    return v0
.end method
