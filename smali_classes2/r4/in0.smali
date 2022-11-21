.class public final Lr4/in0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/media/MediaPlayer;

.field public final synthetic b:Lr4/tn0;


# direct methods
.method public constructor <init>(Lr4/tn0;Landroid/media/MediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lr4/in0;->b:Lr4/tn0;

    iput-object p2, p0, Lr4/in0;->a:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lr4/in0;->b:Lr4/tn0;

    iget-object v1, p0, Lr4/in0;->a:Landroid/media/MediaPlayer;

    invoke-static {v0, v1}, Lr4/tn0;->L(Lr4/tn0;Landroid/media/MediaPlayer;)V

    iget-object v0, p0, Lr4/in0;->b:Lr4/tn0;

    invoke-static {v0}, Lr4/tn0;->I(Lr4/tn0;)Lr4/un0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/in0;->b:Lr4/tn0;

    invoke-static {v0}, Lr4/tn0;->I(Lr4/tn0;)Lr4/un0;

    move-result-object v0

    invoke-interface {v0}, Lr4/un0;->a()V

    :cond_0
    return-void
.end method
