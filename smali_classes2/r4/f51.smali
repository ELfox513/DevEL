.class public final Lr4/f51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/h31;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/bp2;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/no2;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/j81;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/w81;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/xl2;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/b71;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/xb1;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/a91;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/is3<",
            "Lr4/bp2;",
            ">;",
            "Lr4/is3<",
            "Lr4/no2;",
            ">;",
            "Lr4/is3<",
            "Lr4/j81;",
            ">;",
            "Lr4/is3<",
            "Lr4/w81;",
            ">;",
            "Lr4/is3<",
            "Lr4/xl2;",
            ">;",
            "Lr4/is3<",
            "Lr4/b71;",
            ">;",
            "Lr4/is3<",
            "Lr4/xb1;",
            ">;",
            "Lr4/is3<",
            "Lr4/a91;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/f51;->a:Lr4/is3;

    iput-object p2, p0, Lr4/f51;->b:Lr4/is3;

    iput-object p3, p0, Lr4/f51;->c:Lr4/is3;

    iput-object p4, p0, Lr4/f51;->d:Lr4/is3;

    iput-object p5, p0, Lr4/f51;->e:Lr4/is3;

    iput-object p6, p0, Lr4/f51;->f:Lr4/is3;

    iput-object p7, p0, Lr4/f51;->g:Lr4/is3;

    iput-object p8, p0, Lr4/f51;->h:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lr4/f51;->b()Lr4/h31;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lr4/h31;
    .locals 10

    iget-object v0, p0, Lr4/f51;->a:Lr4/is3;

    check-cast v0, Lr4/b41;

    invoke-virtual {v0}, Lr4/b41;->b()Lr4/bp2;

    move-result-object v2

    iget-object v0, p0, Lr4/f51;->b:Lr4/is3;

    check-cast v0, Lr4/y31;

    invoke-virtual {v0}, Lr4/y31;->b()Lr4/no2;

    move-result-object v3

    iget-object v0, p0, Lr4/f51;->c:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lr4/j81;

    iget-object v0, p0, Lr4/f51;->d:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lr4/w81;

    iget-object v0, p0, Lr4/f51;->e:Lr4/is3;

    check-cast v0, Lr4/yd1;

    invoke-virtual {v0}, Lr4/yd1;->b()Lr4/xl2;

    move-result-object v6

    iget-object v0, p0, Lr4/f51;->f:Lr4/is3;

    check-cast v0, Lr4/c71;

    invoke-virtual {v0}, Lr4/c71;->b()Lr4/b71;

    move-result-object v7

    iget-object v0, p0, Lr4/f51;->g:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lr4/xb1;

    iget-object v0, p0, Lr4/f51;->h:Lr4/is3;

    check-cast v0, Lr4/b91;

    invoke-virtual {v0}, Lr4/b91;->b()Lr4/a91;

    move-result-object v9

    new-instance v0, Lr4/h31;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lr4/h31;-><init>(Lr4/bp2;Lr4/no2;Lr4/j81;Lr4/w81;Lr4/xl2;Lr4/b71;Lr4/xb1;Lr4/a91;)V

    return-object v0
.end method
