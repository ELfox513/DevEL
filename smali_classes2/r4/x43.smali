.class public final Lr4/x43;
.super Lr4/p13;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lr4/p13<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final transient q:Lr4/m13;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/m13<",
            "+",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Lr4/m13;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;",
            "Lr4/m13<",
            "+",
            "Ljava/util/List<",
            "TV;>;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lr4/p13;-><init>(Ljava/util/Map;)V

    iput-object p2, p0, Lr4/x43;->q:Lr4/m13;

    return-void
.end method


# virtual methods
.method public final b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lr4/h23;->r()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lr4/h23;->u()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic l()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lr4/x43;->q:Lr4/m13;

    invoke-interface {v0}, Lr4/m13;->zza()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
