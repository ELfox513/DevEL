.class public abstract Lo7/y$c;
.super Lo7/y;
.source "SourceFile"

# interfaces
.implements Lo7/t0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo7/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lo7/y$c<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lo7/y<",
        "TMessageType;TBuilderType;>;",
        "Lo7/t0;"
    }
.end annotation


# instance fields
.field public extensions:Lo7/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo7/u<",
            "Lo7/y$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lo7/y;-><init>()V

    invoke-static {}, Lo7/u;->h()Lo7/u;

    move-result-object v0

    iput-object v0, p0, Lo7/y$c;->extensions:Lo7/u;

    return-void
.end method


# virtual methods
.method public Q()Lo7/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo7/u<",
            "Lo7/y$d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo7/y$c;->extensions:Lo7/u;

    invoke-virtual {v0}, Lo7/u;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo7/y$c;->extensions:Lo7/u;

    invoke-virtual {v0}, Lo7/u;->b()Lo7/u;

    move-result-object v0

    iput-object v0, p0, Lo7/y$c;->extensions:Lo7/u;

    :cond_0
    iget-object v0, p0, Lo7/y$c;->extensions:Lo7/u;

    return-object v0
.end method

.method public bridge synthetic c()Lo7/s0;
    .locals 1

    invoke-super {p0}, Lo7/y;->F()Lo7/y;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic f()Lo7/s0$a;
    .locals 1

    invoke-super {p0}, Lo7/y;->P()Lo7/y$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic u()Lo7/s0$a;
    .locals 1

    invoke-super {p0}, Lo7/y;->L()Lo7/y$a;

    move-result-object v0

    return-object v0
.end method
