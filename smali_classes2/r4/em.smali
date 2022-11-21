.class public final Lr4/em;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/view/Surface;

.field public final synthetic b:Lr4/gm;


# direct methods
.method public constructor <init>(Lr4/gm;Landroid/view/Surface;)V
    .locals 0

    iput-object p1, p0, Lr4/em;->b:Lr4/gm;

    iput-object p2, p0, Lr4/em;->a:Landroid/view/Surface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lr4/em;->b:Lr4/gm;

    invoke-static {v0}, Lr4/gm;->a(Lr4/gm;)Lr4/hm;

    move-result-object v0

    iget-object v1, p0, Lr4/em;->a:Landroid/view/Surface;

    invoke-interface {v0, v1}, Lr4/hm;->g(Landroid/view/Surface;)V

    return-void
.end method
