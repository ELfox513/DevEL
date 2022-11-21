.class public final Lr4/tj3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[B


# direct methods
.method public constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p2, p3, [B

    iput-object p2, p0, Lr4/tj3;->a:[B

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static a([BII)Lr4/tj3;
    .locals 1

    new-instance p1, Lr4/tj3;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0, p2}, Lr4/tj3;-><init>([BII)V

    return-object p1
.end method


# virtual methods
.method public final b()[B
    .locals 4

    iget-object v0, p0, Lr4/tj3;->a:[B

    array-length v1, v0

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
