.class public final Lr4/lh1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/kh1;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lr4/q12<",
            "Lr4/p31;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lr4/q12<",
            "Lr4/zi1;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final c:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lr4/g42<",
            "Lr4/zi1;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final d:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/l31<",
            "Lr4/h11;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Lr4/pj1;",
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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lr4/q12<",
            "Lr4/p31;",
            ">;>;>;",
            "Lr4/is3<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lr4/q12<",
            "Lr4/zi1;",
            ">;>;>;",
            "Lr4/is3<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lr4/g42<",
            "Lr4/zi1;",
            ">;>;>;",
            "Lr4/is3<",
            "Lr4/l31<",
            "Lr4/h11;",
            ">;>;",
            "Lr4/is3<",
            "Lr4/pj1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/lh1;->a:Lr4/is3;

    iput-object p2, p0, Lr4/lh1;->b:Lr4/is3;

    iput-object p3, p0, Lr4/lh1;->c:Lr4/is3;

    iput-object p4, p0, Lr4/lh1;->d:Lr4/is3;

    iput-object p5, p0, Lr4/lh1;->e:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lr4/lh1;->a:Lr4/is3;

    check-cast v0, Lr4/zr3;

    invoke-virtual {v0}, Lr4/zr3;->d()Ljava/util/Map;

    move-result-object v2

    iget-object v0, p0, Lr4/lh1;->b:Lr4/is3;

    check-cast v0, Lr4/zr3;

    invoke-virtual {v0}, Lr4/zr3;->d()Ljava/util/Map;

    move-result-object v3

    iget-object v0, p0, Lr4/lh1;->c:Lr4/is3;

    check-cast v0, Lr4/zr3;

    invoke-virtual {v0}, Lr4/zr3;->d()Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lr4/lh1;->d:Lr4/is3;

    iget-object v0, p0, Lr4/lh1;->e:Lr4/is3;

    check-cast v0, Lr4/ph1;

    invoke-virtual {v0}, Lr4/ph1;->b()Lr4/pj1;

    move-result-object v6

    new-instance v0, Lr4/kh1;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lr4/kh1;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lr4/is3;Lr4/pj1;)V

    return-object v0
.end method
