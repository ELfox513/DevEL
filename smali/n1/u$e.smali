.class public Ln1/u$e;
.super Ln1/u$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln1/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Ln1/u;


# direct methods
.method public constructor <init>(Ln1/u;)V
    .locals 1

    iput-object p1, p0, Ln1/u$e;->c:Ln1/u;

    invoke-static {p1}, Ln1/u;->b(Ln1/u;)I

    move-result v0

    invoke-direct {p0, v0}, Ln1/u$f;-><init>(I)V

    invoke-static {p1}, Ln1/u;->b(Ln1/u;)I

    move-result v0

    invoke-static {p1}, Ln1/u;->i(Ln1/u;)Ln1/j;

    move-result-object p1

    invoke-virtual {p1}, Ln1/j;->f()Ln1/g;

    move-result-object p1

    invoke-virtual {p1}, Lb2/f;->size()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Ln1/u$e;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget v0, p0, Ln1/u$f;->a:I

    iget v1, p0, Ln1/u$e;->b:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ln1/u$f;->a:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method
