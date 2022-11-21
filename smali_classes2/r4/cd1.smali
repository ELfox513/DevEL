.class public final Lr4/cd1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/l71;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/bd1;

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Ljava/util/Set<",
            "Lr4/ve1<",
            "Lr4/m71;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/bd1;Lr4/is3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/bd1;",
            "Lr4/is3<",
            "Ljava/util/Set<",
            "Lr4/ve1<",
            "Lr4/m71;",
            ">;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/cd1;->a:Lr4/bd1;

    iput-object p2, p0, Lr4/cd1;->b:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lr4/cd1;->a:Lr4/bd1;

    iget-object v1, p0, Lr4/cd1;->b:Lr4/is3;

    check-cast v1, Lr4/gs3;

    invoke-virtual {v1}, Lr4/gs3;->c()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr4/bd1;->p(Ljava/util/Set;)Lr4/l71;

    move-result-object v0

    invoke-static {v0}, Lr4/ds3;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
