.class public Lb2/d$b;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public final synthetic d:Lb2/d;


# direct methods
.method public constructor <init>(Lb2/d;)V
    .locals 0

    iput-object p1, p0, Lb2/d$b;->d:Lb2/d;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lb2/d$b;->a:I

    iput p1, p0, Lb2/d$b;->b:I

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    iget-object v0, p0, Lb2/d$b;->d:Lb2/d;

    invoke-static {v0}, Lb2/d;->a(Lb2/d;)I

    move-result v0

    iget v1, p0, Lb2/d$b;->a:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public mark(I)V
    .locals 0

    iget p1, p0, Lb2/d$b;->a:I

    iput p1, p0, Lb2/d$b;->b:I

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 2

    iget v0, p0, Lb2/d$b;->a:I

    iget-object v1, p0, Lb2/d$b;->d:Lb2/d;

    invoke-static {v1}, Lb2/d;->a(Lb2/d;)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lb2/d$b;->d:Lb2/d;

    iget v1, p0, Lb2/d$b;->a:I

    invoke-static {v0, v1}, Lb2/d;->b(Lb2/d;I)I

    move-result v0

    iget v1, p0, Lb2/d$b;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lb2/d$b;->a:I

    return v0
.end method

.method public read([BII)I
    .locals 3

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_0

    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_0
    iget-object v0, p0, Lb2/d$b;->d:Lb2/d;

    invoke-static {v0}, Lb2/d;->a(Lb2/d;)I

    move-result v0

    iget v1, p0, Lb2/d$b;->a:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_1

    move p3, v0

    :cond_1
    iget-object v0, p0, Lb2/d$b;->d:Lb2/d;

    invoke-static {v0}, Lb2/d;->c(Lb2/d;)[B

    move-result-object v0

    iget v1, p0, Lb2/d$b;->a:I

    iget-object v2, p0, Lb2/d$b;->d:Lb2/d;

    invoke-static {v2}, Lb2/d;->d(Lb2/d;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lb2/d$b;->a:I

    add-int/2addr p1, p3

    iput p1, p0, Lb2/d$b;->a:I

    return p3
.end method

.method public reset()V
    .locals 1

    iget v0, p0, Lb2/d$b;->b:I

    iput v0, p0, Lb2/d$b;->a:I

    return-void
.end method
