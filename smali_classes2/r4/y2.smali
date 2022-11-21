.class public final Lr4/y2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field public final a:Landroid/os/Handler;

.field public final synthetic b:Lr4/a3;


# direct methods
.method public constructor <init>(Lr4/a3;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lr4/y2;->b:Lr4/a3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lr4/y2;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 2

    iget-object v0, p0, Lr4/y2;->a:Landroid/os/Handler;

    new-instance v1, Lr4/x2;

    invoke-direct {v1, p0, p1}, Lr4/x2;-><init>(Lr4/y2;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
