.class public final Lr4/dm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic d:I

.field public final synthetic k:F

.field public final synthetic p:Lr4/gm;


# direct methods
.method public constructor <init>(Lr4/gm;IIIF)V
    .locals 0

    iput-object p1, p0, Lr4/dm;->p:Lr4/gm;

    iput p2, p0, Lr4/dm;->a:I

    iput p3, p0, Lr4/dm;->b:I

    iput p4, p0, Lr4/dm;->d:I

    iput p5, p0, Lr4/dm;->k:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lr4/dm;->p:Lr4/gm;

    invoke-static {v0}, Lr4/gm;->a(Lr4/gm;)Lr4/hm;

    move-result-object v0

    iget v1, p0, Lr4/dm;->a:I

    iget v2, p0, Lr4/dm;->b:I

    iget v3, p0, Lr4/dm;->d:I

    iget v4, p0, Lr4/dm;->k:F

    invoke-interface {v0, v1, v2, v3, v4}, Lr4/hm;->j(IIIF)V

    return-void
.end method
