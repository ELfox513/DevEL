.class public final Lr4/n54;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:[B


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lr4/n54;->e:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x80

    new-array p1, p1, [B

    iput-object p1, p0, Lr4/n54;->d:[B

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr4/n54;->a:Z

    iput v0, p0, Lr4/n54;->b:I

    iput v0, p0, Lr4/n54;->c:I

    return-void
.end method

.method public final b(II)Z
    .locals 3

    iget-boolean v0, p0, Lr4/n54;->a:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lr4/n54;->b:I

    sub-int/2addr v0, p2

    iput v0, p0, Lr4/n54;->b:I

    iget p2, p0, Lr4/n54;->c:I

    if-nez p2, :cond_0

    const/16 p2, 0xb5

    if-ne p1, p2, :cond_0

    iput v0, p0, Lr4/n54;->c:I

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lr4/n54;->a:Z

    return v1

    :cond_1
    const/16 p2, 0xb3

    if-ne p1, p2, :cond_2

    iput-boolean v1, p0, Lr4/n54;->a:Z

    :cond_2
    :goto_0
    sget-object p1, Lr4/n54;->e:[B

    const/4 p2, 0x3

    invoke-virtual {p0, p1, v2, p2}, Lr4/n54;->c([BII)V

    return v2
.end method

.method public final c([BII)V
    .locals 3

    iget-boolean v0, p0, Lr4/n54;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sub-int/2addr p3, p2

    iget-object v0, p0, Lr4/n54;->d:[B

    array-length v1, v0

    iget v2, p0, Lr4/n54;->b:I

    add-int/2addr v2, p3

    if-ge v1, v2, :cond_1

    add-int/2addr v2, v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lr4/n54;->d:[B

    :cond_1
    iget-object v0, p0, Lr4/n54;->d:[B

    iget v1, p0, Lr4/n54;->b:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lr4/n54;->b:I

    add-int/2addr p1, p3

    iput p1, p0, Lr4/n54;->b:I

    return-void
.end method
