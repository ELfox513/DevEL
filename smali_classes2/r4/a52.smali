.class public final Lr4/a52;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/z42;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/bu0;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/s61;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/j72;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/bd1;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/mh1;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/aa1;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/is3<",
            "Lr4/bu0;",
            ">;",
            "Lr4/is3<",
            "Lr4/s61;",
            ">;",
            "Lr4/is3<",
            "Lr4/j72;",
            ">;",
            "Lr4/is3<",
            "Lr4/bd1;",
            ">;",
            "Lr4/is3<",
            "Lr4/mh1;",
            ">;",
            "Lr4/is3<",
            "Lr4/aa1;",
            ">;",
            "Lr4/is3<",
            "Landroid/view/ViewGroup;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/a52;->a:Lr4/is3;

    iput-object p2, p0, Lr4/a52;->b:Lr4/is3;

    iput-object p3, p0, Lr4/a52;->c:Lr4/is3;

    iput-object p4, p0, Lr4/a52;->d:Lr4/is3;

    iput-object p5, p0, Lr4/a52;->e:Lr4/is3;

    iput-object p6, p0, Lr4/a52;->f:Lr4/is3;

    iput-object p7, p0, Lr4/a52;->g:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lr4/a52;->b()Lr4/z42;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lr4/z42;
    .locals 9

    iget-object v0, p0, Lr4/a52;->a:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lr4/bu0;

    iget-object v0, p0, Lr4/a52;->b:Lr4/is3;

    check-cast v0, Lr4/a71;

    invoke-virtual {v0}, Lr4/a71;->b()Lr4/s61;

    move-result-object v3

    iget-object v0, p0, Lr4/a52;->c:Lr4/is3;

    check-cast v0, Lr4/l72;

    invoke-virtual {v0}, Lr4/l72;->b()Lr4/j72;

    move-result-object v4

    iget-object v0, p0, Lr4/a52;->d:Lr4/is3;

    check-cast v0, Lr4/vd1;

    invoke-virtual {v0}, Lr4/vd1;->b()Lr4/bd1;

    move-result-object v5

    iget-object v0, p0, Lr4/a52;->e:Lr4/is3;

    check-cast v0, Lr4/oh1;

    invoke-virtual {v0}, Lr4/oh1;->b()Lr4/mh1;

    move-result-object v6

    iget-object v0, p0, Lr4/a52;->f:Lr4/is3;

    check-cast v0, Lr4/d31;

    invoke-virtual {v0}, Lr4/d31;->b()Lr4/aa1;

    move-result-object v7

    iget-object v0, p0, Lr4/a52;->g:Lr4/is3;

    check-cast v0, Lr4/f11;

    invoke-virtual {v0}, Lr4/f11;->b()Landroid/view/ViewGroup;

    move-result-object v8

    new-instance v0, Lr4/z42;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lr4/z42;-><init>(Lr4/bu0;Lr4/s61;Lr4/j72;Lr4/bd1;Lr4/mh1;Lr4/aa1;Landroid/view/ViewGroup;)V

    return-object v0
.end method
