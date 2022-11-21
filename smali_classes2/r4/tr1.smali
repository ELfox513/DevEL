.class public final Lr4/tr1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/nt2;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lr4/gt2;",
            "Lr4/sr1;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lr4/ip;


# direct methods
.method public constructor <init>(Lr4/ip;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/ip;",
            "Ljava/util/Map<",
            "Lr4/gt2;",
            "Lr4/sr1;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lr4/tr1;->a:Ljava/util/Map;

    iput-object p1, p0, Lr4/tr1;->b:Lr4/ip;

    return-void
.end method


# virtual methods
.method public final a(Lr4/gt2;Ljava/lang/String;)V
    .locals 1

    iget-object p2, p0, Lr4/tr1;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lr4/tr1;->b:Lr4/ip;

    iget-object v0, p0, Lr4/tr1;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/sr1;

    iget p1, p1, Lr4/sr1;->b:I

    invoke-virtual {p2, p1}, Lr4/ip;->c(I)V

    :cond_0
    return-void
.end method

.method public final c(Lr4/gt2;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    iget-object p2, p0, Lr4/tr1;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lr4/tr1;->b:Lr4/ip;

    iget-object p3, p0, Lr4/tr1;->a:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/sr1;

    iget p1, p1, Lr4/sr1;->c:I

    invoke-virtual {p2, p1}, Lr4/ip;->c(I)V

    :cond_0
    return-void
.end method

.method public final s(Lr4/gt2;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final u(Lr4/gt2;Ljava/lang/String;)V
    .locals 1

    iget-object p2, p0, Lr4/tr1;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lr4/tr1;->b:Lr4/ip;

    iget-object v0, p0, Lr4/tr1;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/sr1;

    iget p1, p1, Lr4/sr1;->a:I

    invoke-virtual {p2, p1}, Lr4/ip;->c(I)V

    :cond_0
    return-void
.end method
