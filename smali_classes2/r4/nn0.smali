.class public final Lr4/nn0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic d:Lr4/tn0;


# direct methods
.method public constructor <init>(Lr4/tn0;II)V
    .locals 0

    iput-object p1, p0, Lr4/nn0;->d:Lr4/tn0;

    iput p2, p0, Lr4/nn0;->a:I

    iput p3, p0, Lr4/nn0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lr4/nn0;->d:Lr4/tn0;

    invoke-static {v0}, Lr4/tn0;->I(Lr4/tn0;)Lr4/un0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/nn0;->d:Lr4/tn0;

    invoke-static {v0}, Lr4/tn0;->I(Lr4/tn0;)Lr4/un0;

    move-result-object v0

    iget v1, p0, Lr4/nn0;->a:I

    iget v2, p0, Lr4/nn0;->b:I

    invoke-interface {v0, v1, v2}, Lr4/un0;->d(II)V

    :cond_0
    return-void
.end method
