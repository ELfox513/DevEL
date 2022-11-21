.class public final Lr4/he;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/media/AudioTrack;

.field public final synthetic b:Lr4/te;


# direct methods
.method public constructor <init>(Lr4/te;Landroid/media/AudioTrack;)V
    .locals 0

    iput-object p1, p0, Lr4/he;->b:Lr4/te;

    iput-object p2, p0, Lr4/he;->a:Landroid/media/AudioTrack;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lr4/he;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    iget-object v0, p0, Lr4/he;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lr4/he;->b:Lr4/te;

    invoke-static {v0}, Lr4/te;->a(Lr4/te;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lr4/he;->b:Lr4/te;

    invoke-static {v1}, Lr4/te;->a(Lr4/te;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    throw v0
.end method
