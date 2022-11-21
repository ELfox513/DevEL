.class public Ln1/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln1/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Lx1/e0;


# direct methods
.method public constructor <init>(IIILx1/e0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_2

    if-lt p2, p1, :cond_1

    if-ltz p3, :cond_0

    iput p1, p0, Ln1/g$a;->a:I

    iput p2, p0, Ln1/g$a;->b:I

    iput p3, p0, Ln1/g$a;->c:I

    iput-object p4, p0, Ln1/g$a;->d:Lx1/e0;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "handlerPc < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "endPc < startPc"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "startPc < 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    iget v0, p0, Ln1/g$a;->a:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Ln1/g$a;->b:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()I
    .locals 1

    iget v0, p0, Ln1/g$a;->b:I

    return v0
.end method

.method public c()Lx1/e0;
    .locals 1

    iget-object v0, p0, Ln1/g$a;->d:Lx1/e0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lx1/e0;->k:Lx1/e0;

    :goto_0
    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Ln1/g$a;->c:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Ln1/g$a;->a:I

    return v0
.end method
