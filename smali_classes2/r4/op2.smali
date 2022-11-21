.class public final synthetic Lr4/op2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/u50;


# instance fields
.field public final a:Lr4/pu2;

.field public final b:Lr4/c12;


# direct methods
.method public constructor <init>(Lr4/pu2;Lr4/c12;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/op2;->a:Lr4/pu2;

    iput-object p2, p0, Lr4/op2;->b:Lr4/c12;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 8

    iget-object v0, p0, Lr4/op2;->a:Lr4/pu2;

    iget-object v1, p0, Lr4/op2;->b:Lr4/c12;

    check-cast p1, Lr4/tr0;

    const-string v2, "u"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_0

    const-string p1, "URL missing from httpTrack GMSG."

    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p1}, Lr4/tr0;->G()Lr4/no2;

    move-result-object p2

    iget-boolean p2, p2, Lr4/no2;->f0:Z

    if-nez p2, :cond_1

    invoke-virtual {v0, v6}, Lr4/pu2;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p2, Lr4/e12;

    invoke-static {}, Lz2/t;->k()Lc4/f;

    move-result-object v0

    invoke-interface {v0}, Lc4/f;->a()J

    move-result-wide v3

    check-cast p1, Lr4/bt0;

    invoke-interface {p1}, Lr4/bt0;->M()Lr4/so2;

    move-result-object p1

    iget-object v5, p1, Lr4/so2;->b:Ljava/lang/String;

    const/4 v7, 0x2

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lr4/e12;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, p2}, Lr4/c12;->g(Lr4/e12;)V

    return-void
.end method
