.class public final Lr4/go1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/bo1;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/h71;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/r81;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/e91;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/r91;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/kc1;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/no2;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/so2;",
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
            "Lr4/h71;",
            ">;",
            "Lr4/is3<",
            "Lr4/r81;",
            ">;",
            "Lr4/is3<",
            "Lr4/e91;",
            ">;",
            "Lr4/is3<",
            "Lr4/r91;",
            ">;",
            "Lr4/is3<",
            "Lr4/kc1;",
            ">;",
            "Lr4/is3<",
            "Lr4/no2;",
            ">;",
            "Lr4/is3<",
            "Lr4/so2;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/go1;->a:Lr4/is3;

    iput-object p2, p0, Lr4/go1;->b:Lr4/is3;

    iput-object p3, p0, Lr4/go1;->c:Lr4/is3;

    iput-object p4, p0, Lr4/go1;->d:Lr4/is3;

    iput-object p5, p0, Lr4/go1;->e:Lr4/is3;

    iput-object p6, p0, Lr4/go1;->f:Lr4/is3;

    iput-object p7, p0, Lr4/go1;->g:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lr4/go1;->a:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lr4/h71;

    iget-object v0, p0, Lr4/go1;->b:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lr4/r81;

    iget-object v0, p0, Lr4/go1;->c:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lr4/e91;

    iget-object v0, p0, Lr4/go1;->d:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lr4/r91;

    iget-object v0, p0, Lr4/go1;->e:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lr4/kc1;

    iget-object v0, p0, Lr4/go1;->f:Lr4/is3;

    check-cast v0, Lr4/y31;

    invoke-virtual {v0}, Lr4/y31;->b()Lr4/no2;

    move-result-object v7

    iget-object v0, p0, Lr4/go1;->g:Lr4/is3;

    check-cast v0, Lr4/a41;

    invoke-virtual {v0}, Lr4/a41;->b()Lr4/so2;

    move-result-object v8

    new-instance v0, Lr4/bo1;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lr4/bo1;-><init>(Lr4/h71;Lr4/r81;Lr4/e91;Lr4/r91;Lr4/kc1;Lr4/no2;Lr4/so2;)V

    return-object v0
.end method
