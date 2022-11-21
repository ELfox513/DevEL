.class public final Lr4/d53;
.super Lr4/o33;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/o33<",
        "Ljava/util/Map$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lr4/e53;


# direct methods
.method public constructor <init>(Lr4/e53;)V
    .locals 0

    iput-object p1, p0, Lr4/d53;->d:Lr4/e53;

    invoke-direct {p0}, Lr4/o33;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lr4/d53;->d:Lr4/e53;

    invoke-static {v0}, Lr4/e53;->A(Lr4/e53;)I

    move-result v0

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Lr4/z03;->e(IILjava/lang/String;)I

    add-int/2addr p1, p1

    iget-object v0, p0, Lr4/d53;->d:Lr4/e53;

    invoke-static {v0}, Lr4/e53;->z(Lr4/e53;)[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lr4/d53;->d:Lr4/e53;

    invoke-static {v1}, Lr4/e53;->z(Lr4/e53;)[Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v1, p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, v0, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lr4/d53;->d:Lr4/e53;

    invoke-static {v0}, Lr4/e53;->A(Lr4/e53;)I

    move-result v0

    return v0
.end method
