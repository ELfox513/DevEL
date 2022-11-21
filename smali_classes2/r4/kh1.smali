.class public final Lr4/kh1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/l31;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/l31<",
        "Lr4/p31;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lr4/q12<",
            "Lr4/p31;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lr4/q12<",
            "Lr4/zi1;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lr4/g42<",
            "Lr4/zi1;",
            ">;>;"
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

.field public final e:Lr4/pj1;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lr4/is3;Lr4/pj1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lr4/q12<",
            "Lr4/p31;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lr4/q12<",
            "Lr4/zi1;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lr4/g42<",
            "Lr4/zi1;",
            ">;>;",
            "Lr4/is3<",
            "Lr4/l31<",
            "Lr4/h11;",
            ">;>;",
            "Lr4/pj1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/kh1;->a:Ljava/util/Map;

    iput-object p2, p0, Lr4/kh1;->b:Ljava/util/Map;

    iput-object p3, p0, Lr4/kh1;->c:Ljava/util/Map;

    iput-object p4, p0, Lr4/kh1;->d:Lr4/is3;

    iput-object p5, p0, Lr4/kh1;->e:Lr4/pj1;

    return-void
.end method


# virtual methods
.method public final f0(ILjava/lang/String;)Lr4/q12;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lr4/q12<",
            "Lr4/p31;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr4/kh1;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/q12;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    return-object v1

    :cond_1
    iget-object p1, p0, Lr4/kh1;->c:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/g42;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lr4/p31;->a(Lr4/g42;)Lr4/q12;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lr4/kh1;->b:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/q12;

    if-nez p1, :cond_3

    :goto_0
    return-object v1

    :cond_3
    invoke-static {p1}, Lr4/p31;->b(Lr4/q12;)Lr4/q12;

    move-result-object p1

    return-object p1

    :cond_4
    iget-object v0, p0, Lr4/kh1;->e:Lr4/pj1;

    invoke-virtual {v0}, Lr4/pj1;->d()Lr4/x30;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lr4/kh1;->d:Lr4/is3;

    invoke-interface {v0}, Lr4/is3;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/l31;

    invoke-interface {v0, p1, p2}, Lr4/l31;->f0(ILjava/lang/String;)Lr4/q12;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-static {p1}, Lr4/p31;->b(Lr4/q12;)Lr4/q12;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_1
    return-object v1
.end method
