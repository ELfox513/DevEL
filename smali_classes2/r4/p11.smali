.class public final Lr4/p11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/vr3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr4/vr3<",
        "Lr4/w81;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lr4/o11;

.field public final b:Lr4/is3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/is3<",
            "Ljava/util/Set<",
            "Lr4/ve1<",
            "Lr4/y81;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr4/o11;Lr4/is3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/o11;",
            "Lr4/is3<",
            "Ljava/util/Set<",
            "Lr4/ve1<",
            "Lr4/y81;",
            ">;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/p11;->a:Lr4/o11;

    iput-object p2, p0, Lr4/p11;->b:Lr4/is3;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lr4/p11;->a:Lr4/o11;

    iget-object v1, p0, Lr4/p11;->b:Lr4/is3;

    check-cast v1, Lr4/gs3;

    invoke-virtual {v1}, Lr4/gs3;->c()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr4/o11;->e(Ljava/util/Set;)Lr4/w81;

    move-result-object v0

    return-object v0
.end method
