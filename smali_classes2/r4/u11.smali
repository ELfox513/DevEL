.class public final Lr4/u11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/ve1<",
        "Lr4/y81;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final a:Lr4/o11;

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/im0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/no2;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/hp2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/o11;Lr4/is3;Lr4/is3;Lr4/is3;Lr4/is3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/o11;",
            "Lr4/is3<",
            "Landroid/content/Context;",
            ">;",
            "Lr4/is3<",
            "Lr4/im0;",
            ">;",
            "Lr4/is3<",
            "Lr4/no2;",
            ">;",
            "Lr4/is3<",
            "Lr4/hp2;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/u11;->a:Lr4/o11;

    iput-object p2, p0, Lr4/u11;->b:Lr4/is3;

    iput-object p3, p0, Lr4/u11;->c:Lr4/is3;

    iput-object p4, p0, Lr4/u11;->d:Lr4/is3;

    iput-object p5, p0, Lr4/u11;->e:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lr4/u11;->b:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lr4/u11;->c:Lr4/is3;

    check-cast v1, Lr4/pu0;

    invoke-virtual {v1}, Lr4/pu0;->b()Lr4/im0;

    move-result-object v1

    iget-object v2, p0, Lr4/u11;->d:Lr4/is3;

    check-cast v2, Lr4/y31;

    invoke-virtual {v2}, Lr4/y31;->b()Lr4/no2;

    move-result-object v2

    iget-object v3, p0, Lr4/u11;->e:Lr4/is3;

    check-cast v3, Lr4/z61;

    invoke-virtual {v3}, Lr4/z61;->b()Lr4/hp2;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lr4/o11;->f(Landroid/content/Context;Lr4/im0;Lr4/no2;Lr4/hp2;)Lr4/ve1;

    move-result-object v0

    return-object v0
.end method
