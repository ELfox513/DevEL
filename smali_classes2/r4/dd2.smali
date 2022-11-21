.class public final Lr4/dd2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/aq1;


# instance fields
.field public final synthetic a:Lr4/ff2;


# direct methods
.method public synthetic constructor <init>(Lr4/ff2;Lr4/ee2;)V
    .locals 0

    iput-object p1, p0, Lr4/dd2;->a:Lr4/ff2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "MediaCodecAudioRenderer"

    const-string v1, "Audio sink error"

    invoke-static {v0, v1, p1}, Lr4/eb;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lr4/dd2;->a:Lr4/ff2;

    invoke-static {v0}, Lr4/ff2;->I0(Lr4/ff2;)Lr4/vl1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lr4/vl1;->i(Ljava/lang/Exception;)V

    return-void
.end method

.method public final zza()V
    .locals 1

    iget-object v0, p0, Lr4/dd2;->a:Lr4/ff2;

    invoke-static {v0}, Lr4/ff2;->L0(Lr4/ff2;)Lr4/f7;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr4/dd2;->a:Lr4/ff2;

    invoke-static {v0}, Lr4/ff2;->L0(Lr4/ff2;)Lr4/f7;

    move-result-object v0

    invoke-interface {v0}, Lr4/f7;->a()V

    :cond_0
    return-void
.end method
