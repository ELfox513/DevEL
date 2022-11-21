.class public Lz4/m0$a;
.super Lz4/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz4/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lz4/m0<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lz4/m0$a<",
        "TMessageType;TBuilderType;>;>",
        "Lz4/d<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field public final a:Lz4/m0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public b:Lz4/m0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public d:Z


# direct methods
.method public constructor <init>(Lz4/m0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-direct {p0}, Lz4/d;-><init>()V

    iput-object p1, p0, Lz4/m0$a;->a:Lz4/m0;

    sget v0, Lz4/m0$d;->d:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lz4/m0;->l(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz4/m0;

    iput-object p1, p0, Lz4/m0$a;->b:Lz4/m0;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lz4/m0$a;->d:Z

    return-void
.end method

.method public static n(Lz4/m0;Lz4/m0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    invoke-static {}, Lz4/d2;->a()Lz4/d2;

    move-result-object v0

    invoke-virtual {v0, p0}, Lz4/d2;->c(Ljava/lang/Object;)Lz4/f2;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lz4/f2;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lz4/m0$a;->a:Lz4/m0;

    sget v1, Lz4/m0$d;->e:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lz4/m0;->l(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz4/m0$a;

    invoke-virtual {p0}, Lz4/m0$a;->w()Lz4/r1;

    move-result-object v1

    check-cast v1, Lz4/m0;

    invoke-virtual {v0, v1}, Lz4/m0$a;->l(Lz4/m0;)Lz4/m0$a;

    return-object v0
.end method

.method public final synthetic f()Lz4/r1;
    .locals 1

    iget-object v0, p0, Lz4/m0$a;->a:Lz4/m0;

    return-object v0
.end method

.method public final synthetic j(Lz4/c;)Lz4/d;
    .locals 0

    check-cast p1, Lz4/m0;

    invoke-virtual {p0, p1}, Lz4/m0$a;->l(Lz4/m0;)Lz4/m0$a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic k()Lz4/r1;
    .locals 1

    invoke-virtual {p0}, Lz4/m0$a;->t()Lz4/m0;

    move-result-object v0

    return-object v0
.end method

.method public final l(Lz4/m0;)Lz4/m0$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Lz4/m0$a;->o()V

    iget-object v0, p0, Lz4/m0$a;->b:Lz4/m0;

    invoke-static {v0, p1}, Lz4/m0$a;->n(Lz4/m0;Lz4/m0;)V

    return-object p0
.end method

.method public final o()V
    .locals 3

    iget-boolean v0, p0, Lz4/m0$a;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz4/m0$a;->b:Lz4/m0;

    sget v1, Lz4/m0$d;->d:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lz4/m0;->l(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz4/m0;

    iget-object v1, p0, Lz4/m0$a;->b:Lz4/m0;

    invoke-static {v0, v1}, Lz4/m0$a;->n(Lz4/m0;Lz4/m0;)V

    iput-object v0, p0, Lz4/m0$a;->b:Lz4/m0;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lz4/m0$a;->d:Z

    :cond_0
    return-void
.end method

.method public p()Lz4/m0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-boolean v0, p0, Lz4/m0$a;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz4/m0$a;->b:Lz4/m0;

    return-object v0

    :cond_0
    iget-object v0, p0, Lz4/m0$a;->b:Lz4/m0;

    invoke-virtual {v0}, Lz4/m0;->q()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz4/m0$a;->d:Z

    iget-object v0, p0, Lz4/m0$a;->b:Lz4/m0;

    return-object v0
.end method

.method public final t()Lz4/m0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    invoke-virtual {p0}, Lz4/m0$a;->w()Lz4/r1;

    move-result-object v0

    check-cast v0, Lz4/m0;

    invoke-virtual {v0}, Lz4/m0;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lz4/w2;

    invoke-direct {v1, v0}, Lz4/w2;-><init>(Lz4/r1;)V

    throw v1
.end method

.method public synthetic w()Lz4/r1;
    .locals 1

    invoke-virtual {p0}, Lz4/m0$a;->p()Lz4/m0;

    move-result-object v0

    return-object v0
.end method
