.class public final Lr4/x92;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Landroid/media/AudioTrack$StreamEventCallback;

.field public final synthetic c:Lr4/bb2;


# direct methods
.method public constructor <init>(Lr4/bb2;)V
    .locals 1

    iput-object p1, p0, Lr4/x92;->c:Lr4/bb2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lr4/x92;->a:Landroid/os/Handler;

    new-instance v0, Lr4/u82;

    invoke-direct {v0, p0, p1}, Lr4/u82;-><init>(Lr4/x92;Lr4/bb2;)V

    iput-object v0, p0, Lr4/x92;->b:Landroid/media/AudioTrack$StreamEventCallback;

    return-void
.end method


# virtual methods
.method public final a(Landroid/media/AudioTrack;)V
    .locals 2

    iget-object v0, p0, Lr4/x92;->a:Landroid/os/Handler;

    invoke-static {v0}, Lr4/t72;->a(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lr4/x92;->b:Landroid/media/AudioTrack$StreamEventCallback;

    invoke-static {p1, v0, v1}, Lr4/w92;->a(Landroid/media/AudioTrack;Ljava/util/concurrent/Executor;Landroid/media/AudioTrack$StreamEventCallback;)V

    return-void
.end method

.method public final b(Landroid/media/AudioTrack;)V
    .locals 1

    iget-object v0, p0, Lr4/x92;->b:Landroid/media/AudioTrack$StreamEventCallback;

    invoke-static {p1, v0}, Lr4/v92;->a(Landroid/media/AudioTrack;Landroid/media/AudioTrack$StreamEventCallback;)V

    iget-object p1, p0, Lr4/x92;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
