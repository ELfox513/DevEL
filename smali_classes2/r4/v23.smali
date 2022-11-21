.class public final Lr4/v23;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lr4/w23;


# direct methods
.method public constructor <init>(Lr4/w23;)V
    .locals 0

    iput-object p1, p0, Lr4/v23;->a:Lr4/w23;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lr4/v23;->a:Lr4/w23;

    invoke-virtual {v0}, Lr4/w23;->clear()V

    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator;"
        }
    .end annotation

    iget-object v0, p0, Lr4/v23;->a:Lr4/w23;

    invoke-virtual {v0}, Lr4/w23;->j()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Lr4/p23;

    invoke-direct {v1, v0}, Lr4/p23;-><init>(Lr4/w23;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lr4/v23;->a:Lr4/w23;

    invoke-virtual {v0}, Lr4/w23;->size()I

    move-result v0

    return v0
.end method
