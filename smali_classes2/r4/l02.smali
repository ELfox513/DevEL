.class public final Lr4/l02;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/media/AudioTrack;

.field public final synthetic b:Lr4/bb2;


# direct methods
.method public constructor <init>(Lr4/bb2;Ljava/lang/String;Landroid/media/AudioTrack;)V
    .locals 0

    iput-object p1, p0, Lr4/l02;->b:Lr4/bb2;

    iput-object p3, p0, Lr4/l02;->a:Landroid/media/AudioTrack;

    const-string p1, "ExoPlayer:AudioTrackReleaseThread"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lr4/l02;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    iget-object v0, p0, Lr4/l02;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lr4/l02;->b:Lr4/bb2;

    invoke-static {v0}, Lr4/bb2;->M(Lr4/bb2;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lr4/l02;->b:Lr4/bb2;

    invoke-static {v1}, Lr4/bb2;->M(Lr4/bb2;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    throw v0
.end method
