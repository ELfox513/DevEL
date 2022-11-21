.class public final Lr4/m33;
.super Lr4/o13;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lr4/o13<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final d:Lr4/o33;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/o33<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/o33;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/o33<",
            "TE;>;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lr4/o13;-><init>(II)V

    iput-object p1, p0, Lr4/m33;->d:Lr4/o33;

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lr4/m33;->d:Lr4/o33;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
