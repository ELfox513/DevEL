.class public abstract Lt1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt1/c;


# instance fields
.field public final a:Lt1/a;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lt1/a;

    invoke-direct {v0}, Lt1/a;-><init>()V

    iput-object v0, p0, Lt1/b;->a:Lt1/a;

    const/4 v0, 0x0

    iput v0, p0, Lt1/b;->b:I

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 2

    iget-object v0, p0, Lt1/b;->a:Lt1/a;

    iget v1, p0, Lt1/b;->b:I

    invoke-virtual {v0, v1}, Lt1/a;->a(I)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lt1/b;->b:I

    :goto_0
    return v0
.end method

.method public final g(II)V
    .locals 1

    iget-object v0, p0, Lt1/b;->a:Lt1/a;

    invoke-virtual {v0, p1, p2}, Lt1/a;->b(II)V

    return-void
.end method

.method public final k()I
    .locals 1

    iget v0, p0, Lt1/b;->b:I

    return v0
.end method

.method public final l(I)V
    .locals 1

    iget v0, p0, Lt1/b;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lt1/b;->b:I

    return-void
.end method
