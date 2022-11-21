.class public abstract Lo7/y$a;
.super Lo7/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo7/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lo7/y<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lo7/y$a<",
        "TMessageType;TBuilderType;>;>",
        "Lo7/a$a<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field public final a:Lo7/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public b:Lo7/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public d:Z


# direct methods
.method public constructor <init>(Lo7/y;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-direct {p0}, Lo7/a$a;-><init>()V

    iput-object p1, p0, Lo7/y$a;->a:Lo7/y;

    sget-object v0, Lo7/y$f;->k:Lo7/y$f;

    invoke-virtual {p1, v0}, Lo7/y;->z(Lo7/y$f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo7/y;

    iput-object p1, p0, Lo7/y$a;->b:Lo7/y;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lo7/y$a;->d:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic A(Lo7/a;)Lo7/a$a;
    .locals 0

    check-cast p1, Lo7/y;

    invoke-virtual {p0, p1}, Lo7/y$a;->K(Lo7/y;)Lo7/y$a;

    move-result-object p1

    return-object p1
.end method

.method public final D()Lo7/y;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    invoke-virtual {p0}, Lo7/y$a;->E()Lo7/y;

    move-result-object v0

    invoke-virtual {v0}, Lo7/y;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lo7/a$a;->C(Lo7/s0;)Lo7/n1;

    move-result-object v0

    throw v0
.end method

.method public E()Lo7/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-boolean v0, p0, Lo7/y$a;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    return-object v0

    :cond_0
    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    invoke-virtual {v0}, Lo7/y;->I()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo7/y$a;->d:Z

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    return-object v0
.end method

.method public F()Lo7/y$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Lo7/y$a;->J()Lo7/y;

    move-result-object v0

    invoke-virtual {v0}, Lo7/y;->L()Lo7/y$a;

    move-result-object v0

    invoke-virtual {p0}, Lo7/y$a;->E()Lo7/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo7/y$a;->L(Lo7/y;)Lo7/y$a;

    return-object v0
.end method

.method public final G()V
    .locals 1

    iget-boolean v0, p0, Lo7/y$a;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo7/y$a;->I()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo7/y$a;->d:Z

    :cond_0
    return-void
.end method

.method public I()V
    .locals 2

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    sget-object v1, Lo7/y$f;->k:Lo7/y$f;

    invoke-virtual {v0, v1}, Lo7/y;->z(Lo7/y$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo7/y;

    iget-object v1, p0, Lo7/y$a;->b:Lo7/y;

    invoke-virtual {p0, v0, v1}, Lo7/y$a;->P(Lo7/y;Lo7/y;)V

    iput-object v0, p0, Lo7/y$a;->b:Lo7/y;

    return-void
.end method

.method public J()Lo7/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-object v0, p0, Lo7/y$a;->a:Lo7/y;

    return-object v0
.end method

.method public K(Lo7/y;)Lo7/y$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lo7/y$a;->L(Lo7/y;)Lo7/y$a;

    move-result-object p1

    return-object p1
.end method

.method public L(Lo7/y;)Lo7/y$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Lo7/y$a;->G()V

    iget-object v0, p0, Lo7/y$a;->b:Lo7/y;

    invoke-virtual {p0, v0, p1}, Lo7/y$a;->P(Lo7/y;Lo7/y;)V

    return-object p0
.end method

.method public final P(Lo7/y;Lo7/y;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    invoke-static {}, Lo7/d1;->a()Lo7/d1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo7/d1;->e(Ljava/lang/Object;)Lo7/h1;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lo7/h1;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic build()Lo7/s0;
    .locals 1

    invoke-virtual {p0}, Lo7/y$a;->D()Lo7/y;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()Lo7/s0;
    .locals 1

    invoke-virtual {p0}, Lo7/y$a;->J()Lo7/y;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lo7/y$a;->F()Lo7/y$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic s()Lo7/s0;
    .locals 1

    invoke-virtual {p0}, Lo7/y$a;->E()Lo7/y;

    move-result-object v0

    return-object v0
.end method
