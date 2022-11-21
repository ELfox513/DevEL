.class public final Lr4/mo3;
.super Lr4/dl3;
.source "SourceFile"


# instance fields
.field public final a:Lr4/po3;

.field public b:Lr4/fl3;

.field public final synthetic d:Lr4/qo3;


# direct methods
.method public constructor <init>(Lr4/qo3;)V
    .locals 2

    iput-object p1, p0, Lr4/mo3;->d:Lr4/qo3;

    invoke-direct {p0}, Lr4/dl3;-><init>()V

    new-instance v0, Lr4/po3;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lr4/po3;-><init>(Lr4/ll3;Lr4/oo3;)V

    iput-object v0, p0, Lr4/mo3;->a:Lr4/po3;

    invoke-virtual {p0}, Lr4/mo3;->a()Lr4/fl3;

    move-result-object p1

    iput-object p1, p0, Lr4/mo3;->b:Lr4/fl3;

    return-void
.end method


# virtual methods
.method public final a()Lr4/fl3;
    .locals 1

    iget-object v0, p0, Lr4/mo3;->a:Lr4/po3;

    invoke-virtual {v0}, Lr4/po3;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/mo3;->a:Lr4/po3;

    invoke-virtual {v0}, Lr4/po3;->a()Lr4/gl3;

    move-result-object v0

    invoke-virtual {v0}, Lr4/ll3;->E()Lr4/fl3;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Lr4/mo3;->b:Lr4/fl3;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zza()B
    .locals 2

    iget-object v0, p0, Lr4/mo3;->b:Lr4/fl3;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lr4/fl3;->zza()B

    move-result v0

    iget-object v1, p0, Lr4/mo3;->b:Lr4/fl3;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lr4/mo3;->a()Lr4/fl3;

    move-result-object v1

    iput-object v1, p0, Lr4/mo3;->b:Lr4/fl3;

    :cond_0
    return v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
