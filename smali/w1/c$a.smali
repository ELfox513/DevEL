.class public Lw1/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw1/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lw1/c$a;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lw1/c$a;->a:I

    return v0
.end method

.method public final b(Lw1/q;)V
    .locals 1

    invoke-virtual {p1}, Lw1/q;->A()I

    move-result p1

    iget v0, p0, Lw1/c$a;->a:I

    if-le p1, v0, :cond_0

    iput p1, p0, Lw1/c$a;->a:I

    :cond_0
    return-void
.end method

.method public final c(Lw1/h;)V
    .locals 3

    invoke-virtual {p1}, Lw1/h;->k()Lw1/q;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lw1/c$a;->b(Lw1/q;)V

    :cond_0
    invoke-virtual {p1}, Lw1/h;->m()Lw1/r;

    move-result-object p1

    invoke-virtual {p1}, Lb2/f;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Lw1/r;->A(I)Lw1/q;

    move-result-object v2

    invoke-virtual {p0, v2}, Lw1/c$a;->b(Lw1/q;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public visitFillArrayDataInsn(Lw1/g;)V
    .locals 0

    invoke-virtual {p0, p1}, Lw1/c$a;->c(Lw1/h;)V

    return-void
.end method

.method public visitInvokePolymorphicInsn(Lw1/j;)V
    .locals 0

    invoke-virtual {p0, p1}, Lw1/c$a;->c(Lw1/h;)V

    return-void
.end method

.method public visitPlainCstInsn(Lw1/n;)V
    .locals 0

    invoke-virtual {p0, p1}, Lw1/c$a;->c(Lw1/h;)V

    return-void
.end method

.method public visitPlainInsn(Lw1/o;)V
    .locals 0

    invoke-virtual {p0, p1}, Lw1/c$a;->c(Lw1/h;)V

    return-void
.end method

.method public visitSwitchInsn(Lw1/x;)V
    .locals 0

    invoke-virtual {p0, p1}, Lw1/c$a;->c(Lw1/h;)V

    return-void
.end method

.method public visitThrowingCstInsn(Lw1/y;)V
    .locals 0

    invoke-virtual {p0, p1}, Lw1/c$a;->c(Lw1/h;)V

    return-void
.end method

.method public visitThrowingInsn(Lw1/z;)V
    .locals 0

    invoke-virtual {p0, p1}, Lw1/c$a;->c(Lw1/h;)V

    return-void
.end method
