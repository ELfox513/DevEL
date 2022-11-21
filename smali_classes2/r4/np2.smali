.class public final synthetic Lr4/np2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/u50;


# instance fields
.field public final a:Lr4/cf1;

.field public final b:Lr4/pu2;

.field public final c:Lr4/c12;


# direct methods
.method public constructor <init>(Lr4/cf1;Lr4/pu2;Lr4/c12;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/np2;->a:Lr4/cf1;

    iput-object p2, p0, Lr4/np2;->b:Lr4/pu2;

    iput-object p3, p0, Lr4/np2;->c:Lr4/c12;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 3

    iget-object v0, p0, Lr4/np2;->a:Lr4/cf1;

    iget-object v1, p0, Lr4/np2;->b:Lr4/pu2;

    iget-object v2, p0, Lr4/np2;->c:Lr4/c12;

    check-cast p1, Lr4/cs0;

    invoke-static {p2, v0}, Lr4/t50;->c(Ljava/util/Map;Lr4/cf1;)V

    const-string v0, "u"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p1, "URL missing from click GMSG."

    invoke-static {p1}, Lr4/cm0;->f(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1, p2}, Lr4/t50;->a(Lr4/cs0;Ljava/lang/String;)Lr4/h83;

    move-result-object p2

    new-instance v0, Lr4/pp2;

    invoke-direct {v0, p1, v1, v2}, Lr4/pp2;-><init>(Lr4/cs0;Lr4/pu2;Lr4/c12;)V

    sget-object p1, Lr4/qm0;->a:Lr4/i83;

    invoke-static {p2, v0, p1}, Lr4/y73;->p(Lr4/h83;Lr4/t73;Ljava/util/concurrent/Executor;)V

    return-void
.end method
