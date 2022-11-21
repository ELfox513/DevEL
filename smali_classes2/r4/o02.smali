.class public final Lr4/o02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/n02;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/o61;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/f02;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/b02;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lb3/y1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/is3<",
            "Landroid/content/Context;",
            ">;",
            "Lr4/is3<",
            "Lr4/o61;",
            ">;",
            "Lr4/is3<",
            "Lr4/f02;",
            ">;",
            "Lr4/is3<",
            "Lr4/b02;",
            ">;",
            "Lr4/is3<",
            "Lb3/y1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/o02;->a:Lr4/is3;

    iput-object p2, p0, Lr4/o02;->b:Lr4/is3;

    iput-object p3, p0, Lr4/o02;->c:Lr4/is3;

    iput-object p4, p0, Lr4/o02;->d:Lr4/is3;

    iput-object p5, p0, Lr4/o02;->e:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lr4/o02;->b()Lr4/n02;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lr4/n02;
    .locals 7

    iget-object v0, p0, Lr4/o02;->a:Lr4/is3;

    check-cast v0, Lr4/mq2;

    invoke-virtual {v0}, Lr4/mq2;->b()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lr4/o02;->b:Lr4/is3;

    check-cast v0, Lr4/p61;

    invoke-virtual {v0}, Lr4/p61;->b()Lr4/o61;

    move-result-object v3

    iget-object v0, p0, Lr4/o02;->c:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lr4/f02;

    iget-object v0, p0, Lr4/o02;->d:Lr4/is3;

    check-cast v0, Lr4/c02;

    invoke-virtual {v0}, Lr4/c02;->b()Lr4/b02;

    move-result-object v5

    iget-object v0, p0, Lr4/o02;->e:Lr4/is3;

    check-cast v0, Lr4/lq2;

    invoke-virtual {v0}, Lr4/lq2;->b()Lb3/y1;

    move-result-object v6

    new-instance v0, Lr4/n02;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lr4/n02;-><init>(Landroid/content/Context;Lr4/o61;Lr4/f02;Lr4/b02;Lb3/y1;)V

    return-object v0
.end method
