.class public La2/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz1/n$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lz1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lz1/s;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/f$b;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(Lz1/n;)V
    .locals 7

    invoke-virtual {p1}, Lz1/n;->u()Lw1/r;

    move-result-object v0

    invoke-virtual {p1}, Lz1/u;->t()Lw1/q;

    move-result-object v1

    invoke-virtual {v0}, Lb2/f;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v0, v3}, Lw1/r;->A(I)Lw1/q;

    move-result-object v4

    iget-object v5, p0, La2/f$b;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Lz1/n;->S(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lz1/s;

    invoke-virtual {v5, v1, v4}, Lz1/s;->g(Lw1/q;Lw1/q;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
